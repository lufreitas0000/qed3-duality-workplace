#!/bin/sh
set -eu

# Prepare compact front-matter PDFs for TOC/OCR inspection and extract
# reproducible section slices from large reference books.

LC_ALL=C
export LC_ALL

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
WORKPLACE_DIR=$(dirname -- "$SCRIPT_DIR")
PROJECT_DIR=$(dirname -- "$WORKPLACE_DIR")
DEFAULT_OUTPUT_ROOT="$PROJECT_DIR/References-Full/_slices"

usage() {
    cat <<'USAGE'
Usage:
  ./infra/pdf_reference_tool.sh prepare [options]
  ./infra/pdf_reference_tool.sh offset --pdf-page N --printed-page N
  ./infra/pdf_reference_tool.sh slice [options]

prepare options:
  --source FILE             Complete source PDF (required)
  --book-key KEY            Stable short key, e.g. reed_simon_v1 (required)
  --front-pages N           Number of initial PDF pages; default: 40
  --output-root DIR         Default: ../References-Full/_slices
  --compress PROFILE        none, lossless, or web; default: lossless
  --ocr MODE                never, auto, or force; default: auto
  --ocr-language LANG       OCRmyPDF language; default: eng
  --min-text-chars N        Text-layer threshold; default: 800
  --force                   Replace files made by an earlier identical run

slice options:
  --source FILE             Complete source PDF (required)
  --book-key KEY            Stable short key (required)
  --slug SLUG               Descriptive filename slug (required)
  --pdf-pages A-B           Extract physical PDF pages A through B
  --printed-pages A-B       Extract printed Arabic pages A through B
  --offset N                Required with --printed-pages, where
                            PDF page = printed page + N
  --context N               Add N physical pages on each side; default: 1
  --output-root DIR         Default: ../References-Full/_slices
  --compress PROFILE        none, lossless, or web; default: lossless
  --force                   Replace files made by an earlier identical run

Examples:
  ./infra/pdf_reference_tool.sh prepare \
    --source "../References-Full/Reed Simons V1  Functional Analsys.pdf" \
    --book-key reed_simon_v1 --front-pages 40

  ./infra/pdf_reference_tool.sh offset --pdf-page 23 --printed-page 1

  ./infra/pdf_reference_tool.sh slice \
    --source "../References-Full/Reed Simons V1  Functional Analsys.pdf" \
    --book-key reed_simon_v1 --slug chA_m01_metric_banach \
    --printed-pages 1-32 --offset 22 --context 1

Profiles:
  none      Preserve qpdf's extracted output without a second compression pass.
  lossless  Compress streams and object tables without downsampling. Recommended.
  web       Use Ghostscript at 200 dpi. Smaller, but inspect fine equations.

OCR behavior:
  The prepare command first tries pdftotext. In auto mode, OCRmyPDF is used only
  when the extracted text is sparse. If OCRmyPDF is unavailable, the compact
  front-matter PDF is still produced for upload to an external OCR agent.
USAGE
}

die() {
    echo "Error: $*" >&2
    exit 1
}

need_command() {
    command -v "$1" >/dev/null 2>&1 || die "Required command '$1' was not found."
}

is_unsigned_integer() {
    case "$1" in
        ''|*[!0-9]*) return 1 ;;
        *) return 0 ;;
    esac
}

is_positive_integer() {
    is_unsigned_integer "$1" && [ "$1" -gt 0 ]
}

is_integer() {
    case "$1" in
        ''|'-'|*[!0-9-]*|*-*-) return 1 ;;
        -*) is_unsigned_integer "${1#-}" ;;
        *) is_unsigned_integer "$1" ;;
    esac
}

validate_key() {
    label=$1
    value=$2
    case "$value" in
        ''|*[!A-Za-z0-9._-]*)
            die "$label must contain only letters, digits, dots, underscores, or hyphens."
            ;;
    esac
}

validate_source() {
    [ -n "$SOURCE" ] || die "--source is required."
    [ -f "$SOURCE" ] || die "Source PDF not found: $SOURCE"
    case "$SOURCE" in
        *.pdf|*.PDF) ;;
        *) die "Source must be a PDF: $SOURCE" ;;
    esac
}

page_count() {
    pdfinfo "$1" | awk '/^Pages:[[:space:]]*/ { print $2; exit }'
}

parse_range() {
    range_value=$1
    case "$range_value" in
        *-*) ;;
        *) die "Page range must have the form A-B: $range_value" ;;
    esac

    RANGE_START=${range_value%%-*}
    RANGE_END=${range_value#*-}
    is_positive_integer "$RANGE_START" || die "Invalid first page: $RANGE_START"
    is_positive_integer "$RANGE_END" || die "Invalid last page: $RANGE_END"
    [ "$RANGE_START" -le "$RANGE_END" ] || die "Page range is reversed: $range_value"
}

check_output() {
    output_path=$1
    if [ -e "$output_path" ] && [ "$FORCE" -ne 1 ]; then
        die "Output already exists: $output_path (use --force to replace it)"
    fi
}

compress_pdf() {
    input_pdf=$1
    output_pdf=$2
    profile=$3

    case "$profile" in
        none)
            cp "$input_pdf" "$output_pdf"
            ;;
        lossless)
            qpdf --stream-data=compress --object-streams=generate \
                "$input_pdf" "$output_pdf"
            ;;
        web)
            need_command gs
            gs -q -dSAFER -dBATCH -dNOPAUSE \
                -sDEVICE=pdfwrite \
                -dCompatibilityLevel=1.5 \
                -dDetectDuplicateImages=true \
                -dCompressFonts=true \
                -dSubsetFonts=true \
                -dDownsampleColorImages=true \
                -dColorImageResolution=200 \
                -dDownsampleGrayImages=true \
                -dGrayImageResolution=200 \
                -dDownsampleMonoImages=true \
                -dMonoImageResolution=300 \
                -sOutputFile="$output_pdf" \
                "$input_pdf"
            ;;
        *)
            die "Unknown compression profile '$profile'. Use none, lossless, or web."
            ;;
    esac
}

write_common_metadata() {
    metadata_path=$1
    output_pdf=$2
    source_sha=$3
    generated_at=$4

    {
        echo "source_file=$SOURCE"
        echo "source_sha256=$source_sha"
        echo "source_pdf_pages=$TOTAL_PAGES"
        echo "output_file=$output_pdf"
        echo "output_sha256=$(sha256sum "$output_pdf" | awk '{print $1}')"
        echo "generated_utc=$generated_at"
        echo "compression_profile=$COMPRESS"
    } > "$metadata_path"
}

prepare_command() {
    SOURCE=
    BOOK_KEY=
    FRONT_PAGES=40
    OUTPUT_ROOT=$DEFAULT_OUTPUT_ROOT
    COMPRESS=lossless
    OCR_MODE=auto
    OCR_LANGUAGE=eng
    MIN_TEXT_CHARS=800
    FORCE=0

    while [ "$#" -gt 0 ]; do
        case "$1" in
            --source) [ "$#" -ge 2 ] || die "--source requires a value."; SOURCE=$2; shift 2 ;;
            --book-key) [ "$#" -ge 2 ] || die "--book-key requires a value."; BOOK_KEY=$2; shift 2 ;;
            --front-pages) [ "$#" -ge 2 ] || die "--front-pages requires a value."; FRONT_PAGES=$2; shift 2 ;;
            --output-root) [ "$#" -ge 2 ] || die "--output-root requires a value."; OUTPUT_ROOT=$2; shift 2 ;;
            --compress) [ "$#" -ge 2 ] || die "--compress requires a value."; COMPRESS=$2; shift 2 ;;
            --ocr) [ "$#" -ge 2 ] || die "--ocr requires a value."; OCR_MODE=$2; shift 2 ;;
            --ocr-language) [ "$#" -ge 2 ] || die "--ocr-language requires a value."; OCR_LANGUAGE=$2; shift 2 ;;
            --min-text-chars) [ "$#" -ge 2 ] || die "--min-text-chars requires a value."; MIN_TEXT_CHARS=$2; shift 2 ;;
            --force) FORCE=1; shift ;;
            -h|--help) usage; exit 0 ;;
            *) die "Unknown prepare option: $1" ;;
        esac
    done

    validate_source
    validate_key "--book-key" "$BOOK_KEY"
    is_positive_integer "$FRONT_PAGES" || die "--front-pages must be a positive integer."
    is_unsigned_integer "$MIN_TEXT_CHARS" || die "--min-text-chars must be a non-negative integer."
    case "$OCR_MODE" in never|auto|force) ;; *) die "--ocr must be never, auto, or force." ;; esac

    need_command pdfinfo
    need_command pdftotext
    need_command qpdf
    need_command sha256sum

    TOTAL_PAGES=$(page_count "$SOURCE")
    is_positive_integer "$TOTAL_PAGES" || die "Could not determine the source page count."
    LAST_PAGE=$FRONT_PAGES
    if [ "$LAST_PAGE" -gt "$TOTAL_PAGES" ]; then
        LAST_PAGE=$TOTAL_PAGES
    fi

    DEST_DIR="$OUTPUT_ROOT/$BOOK_KEY/frontmatter"
    mkdir -p "$DEST_DIR"
    STEM=$(printf '%s_frontmatter_pdf%03d-%03d' "$BOOK_KEY" 1 "$LAST_PAGE")
    OUTPUT_PDF="$DEST_DIR/$STEM.pdf"
    OUTPUT_TEXT="$DEST_DIR/$STEM.txt"
    OUTPUT_META="$DEST_DIR/$STEM.meta.txt"
    check_output "$OUTPUT_PDF"
    check_output "$OUTPUT_TEXT"
    check_output "$OUTPUT_META"

    TMP_WORK_DIR=$(mktemp -d /tmp/qed3-pdf-reference-XXXXXX)
    TMP_SLICE="$TMP_WORK_DIR/slice.pdf"
    TMP_FINAL="$TMP_WORK_DIR/final.pdf"
    TMP_OCR="$TMP_WORK_DIR/ocr.pdf"
    trap 'rm -f "$TMP_SLICE" "$TMP_FINAL" "$TMP_OCR"; rmdir "$TMP_WORK_DIR" 2>/dev/null || true' EXIT HUP INT TERM

    qpdf "$SOURCE" --pages . "1-$LAST_PAGE" -- "$TMP_SLICE"
    compress_pdf "$TMP_SLICE" "$TMP_FINAL" "$COMPRESS"
    mv "$TMP_FINAL" "$OUTPUT_PDF"

    if ! pdftotext -layout "$OUTPUT_PDF" "$OUTPUT_TEXT"; then
        : > "$OUTPUT_TEXT"
    fi
    TEXT_CHARS=$(tr -d '[:space:]' < "$OUTPUT_TEXT" | wc -c | awk '{print $1}')

    SOURCE_SHA=$(sha256sum "$SOURCE" | awk '{print $1}')
    GENERATED_AT=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
    write_common_metadata "$OUTPUT_META" "$OUTPUT_PDF" "$SOURCE_SHA" "$GENERATED_AT"
    {
        echo "operation=prepare"
        echo "pdf_range=1-$LAST_PAGE"
        echo "extracted_non_whitespace_characters=$TEXT_CHARS"
        echo "minimum_text_characters=$MIN_TEXT_CHARS"
    } >> "$OUTPUT_META"

    RUN_OCR=0
    if [ "$OCR_MODE" = force ]; then
        RUN_OCR=1
    elif [ "$OCR_MODE" = auto ] && [ "$TEXT_CHARS" -lt "$MIN_TEXT_CHARS" ]; then
        RUN_OCR=1
    fi

    AGENT_INPUT=$OUTPUT_PDF
    if [ "$RUN_OCR" -eq 1 ]; then
        if command -v ocrmypdf >/dev/null 2>&1; then
            OCR_PDF="$DEST_DIR/${STEM}_ocr.pdf"
            OCR_TEXT="$DEST_DIR/${STEM}_ocr.txt"
            check_output "$OCR_PDF"
            check_output "$OCR_TEXT"

            if [ "$OCR_MODE" = force ]; then
                ocrmypdf --force-ocr --deskew --rotate-pages \
                    -l "$OCR_LANGUAGE" --optimize 1 \
                    "$OUTPUT_PDF" "$TMP_OCR"
            else
                ocrmypdf --skip-text --deskew --rotate-pages \
                    -l "$OCR_LANGUAGE" --optimize 1 \
                    "$OUTPUT_PDF" "$TMP_OCR"
            fi
            mv "$TMP_OCR" "$OCR_PDF"
            pdftotext -layout "$OCR_PDF" "$OCR_TEXT"
            AGENT_INPUT=$OCR_PDF
            echo "ocr_output=$OCR_PDF" >> "$OUTPUT_META"
            echo "OCR completed locally: $OCR_PDF"
        else
            echo "OCRmyPDF is not installed; external OCR is required." >&2
            echo "ocr_status=NEEDS_EXTERNAL_OCR" >> "$OUTPUT_META"
        fi
    elif [ "$TEXT_CHARS" -ge "$MIN_TEXT_CHARS" ]; then
        echo "ocr_status=TEXT_LAYER_SUFFICIENT" >> "$OUTPUT_META"
    else
        echo "ocr_status=OCR_SKIPPED_TEXT_SPARSE" >> "$OUTPUT_META"
    fi

    echo "Prepared front matter: $OUTPUT_PDF"
    echo "Extracted text:       $OUTPUT_TEXT"
    echo "Provenance:           $OUTPUT_META"
    echo "Agent input:          $AGENT_INPUT"
    echo "Source pages:         1-$LAST_PAGE of $TOTAL_PAGES"
    echo "Text characters:      $TEXT_CHARS"
}

offset_command() {
    PDF_PAGE=
    PRINTED_PAGE=

    while [ "$#" -gt 0 ]; do
        case "$1" in
            --pdf-page) [ "$#" -ge 2 ] || die "--pdf-page requires a value."; PDF_PAGE=$2; shift 2 ;;
            --printed-page) [ "$#" -ge 2 ] || die "--printed-page requires a value."; PRINTED_PAGE=$2; shift 2 ;;
            -h|--help) usage; exit 0 ;;
            *) die "Unknown offset option: $1" ;;
        esac
    done

    is_positive_integer "$PDF_PAGE" || die "--pdf-page must be a positive integer."
    is_positive_integer "$PRINTED_PAGE" || die "--printed-page must be a positive integer."
    OFFSET=$((PDF_PAGE - PRINTED_PAGE))
    echo "offset=$OFFSET"
    echo "formula: PDF page = printed page + $OFFSET"
    echo "anchor: printed page $PRINTED_PAGE -> PDF page $PDF_PAGE"
}

slice_command() {
    SOURCE=
    BOOK_KEY=
    SLUG=
    PDF_RANGE=
    PRINTED_RANGE=
    OFFSET=
    CONTEXT=1
    OUTPUT_ROOT=$DEFAULT_OUTPUT_ROOT
    COMPRESS=lossless
    FORCE=0

    while [ "$#" -gt 0 ]; do
        case "$1" in
            --source) [ "$#" -ge 2 ] || die "--source requires a value."; SOURCE=$2; shift 2 ;;
            --book-key) [ "$#" -ge 2 ] || die "--book-key requires a value."; BOOK_KEY=$2; shift 2 ;;
            --slug) [ "$#" -ge 2 ] || die "--slug requires a value."; SLUG=$2; shift 2 ;;
            --pdf-pages) [ "$#" -ge 2 ] || die "--pdf-pages requires a value."; PDF_RANGE=$2; shift 2 ;;
            --printed-pages) [ "$#" -ge 2 ] || die "--printed-pages requires a value."; PRINTED_RANGE=$2; shift 2 ;;
            --offset) [ "$#" -ge 2 ] || die "--offset requires a value."; OFFSET=$2; shift 2 ;;
            --context) [ "$#" -ge 2 ] || die "--context requires a value."; CONTEXT=$2; shift 2 ;;
            --output-root) [ "$#" -ge 2 ] || die "--output-root requires a value."; OUTPUT_ROOT=$2; shift 2 ;;
            --compress) [ "$#" -ge 2 ] || die "--compress requires a value."; COMPRESS=$2; shift 2 ;;
            --force) FORCE=1; shift ;;
            -h|--help) usage; exit 0 ;;
            *) die "Unknown slice option: $1" ;;
        esac
    done

    validate_source
    validate_key "--book-key" "$BOOK_KEY"
    validate_key "--slug" "$SLUG"
    is_unsigned_integer "$CONTEXT" || die "--context must be a non-negative integer."
    [ -z "$PDF_RANGE" ] || [ -z "$PRINTED_RANGE" ] || die "Use only one of --pdf-pages or --printed-pages."
    [ -n "$PDF_RANGE" ] || [ -n "$PRINTED_RANGE" ] || die "One page range is required."

    need_command pdfinfo
    need_command qpdf
    need_command sha256sum

    TOTAL_PAGES=$(page_count "$SOURCE")
    is_positive_integer "$TOTAL_PAGES" || die "Could not determine the source page count."

    RANGE_KIND=pdf
    REQUESTED_RANGE=$PDF_RANGE
    PRINTED_START=
    PRINTED_END=
    if [ -n "$PDF_RANGE" ]; then
        parse_range "$PDF_RANGE"
        TARGET_START=$RANGE_START
        TARGET_END=$RANGE_END
    else
        [ -n "$OFFSET" ] || die "--offset is required with --printed-pages."
        is_integer "$OFFSET" || die "--offset must be an integer."
        parse_range "$PRINTED_RANGE"
        PRINTED_START=$RANGE_START
        PRINTED_END=$RANGE_END
        TARGET_START=$((PRINTED_START + OFFSET))
        TARGET_END=$((PRINTED_END + OFFSET))
        [ "$TARGET_START" -gt 0 ] || die "The offset maps the first printed page before PDF page 1."
        RANGE_KIND=printed
        REQUESTED_RANGE=$PRINTED_RANGE
    fi

    [ "$TARGET_END" -le "$TOTAL_PAGES" ] || die "Target ends after source page $TOTAL_PAGES."
    EXTRACT_START=$((TARGET_START - CONTEXT))
    EXTRACT_END=$((TARGET_END + CONTEXT))
    if [ "$EXTRACT_START" -lt 1 ]; then
        EXTRACT_START=1
    fi
    if [ "$EXTRACT_END" -gt "$TOTAL_PAGES" ]; then
        EXTRACT_END=$TOTAL_PAGES
    fi

    DEST_DIR="$OUTPUT_ROOT/$BOOK_KEY/sections"
    mkdir -p "$DEST_DIR"
    if [ "$RANGE_KIND" = printed ]; then
        STEM=$(printf '%s_pp%03d-%03d_pdf%03d-%03d' \
            "$SLUG" "$PRINTED_START" "$PRINTED_END" "$EXTRACT_START" "$EXTRACT_END")
    else
        STEM=$(printf '%s_pdf%03d-%03d' "$SLUG" "$EXTRACT_START" "$EXTRACT_END")
    fi
    OUTPUT_PDF="$DEST_DIR/$STEM.pdf"
    OUTPUT_META="$DEST_DIR/$STEM.meta.txt"
    check_output "$OUTPUT_PDF"
    check_output "$OUTPUT_META"

    TMP_WORK_DIR=$(mktemp -d /tmp/qed3-pdf-reference-XXXXXX)
    TMP_SLICE="$TMP_WORK_DIR/slice.pdf"
    TMP_FINAL="$TMP_WORK_DIR/final.pdf"
    trap 'rm -f "$TMP_SLICE" "$TMP_FINAL"; rmdir "$TMP_WORK_DIR" 2>/dev/null || true' EXIT HUP INT TERM

    qpdf "$SOURCE" --pages . "$EXTRACT_START-$EXTRACT_END" -- "$TMP_SLICE"
    compress_pdf "$TMP_SLICE" "$TMP_FINAL" "$COMPRESS"
    mv "$TMP_FINAL" "$OUTPUT_PDF"

    SOURCE_SHA=$(sha256sum "$SOURCE" | awk '{print $1}')
    GENERATED_AT=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
    write_common_metadata "$OUTPUT_META" "$OUTPUT_PDF" "$SOURCE_SHA" "$GENERATED_AT"
    {
        echo "operation=slice"
        echo "book_key=$BOOK_KEY"
        echo "slug=$SLUG"
        echo "range_kind=$RANGE_KIND"
        echo "requested_range=$REQUESTED_RANGE"
        echo "target_pdf_range=$TARGET_START-$TARGET_END"
        echo "context_pages=$CONTEXT"
        echo "extracted_pdf_range=$EXTRACT_START-$EXTRACT_END"
        if [ "$RANGE_KIND" = printed ]; then
            echo "printed_range=$PRINTED_START-$PRINTED_END"
            echo "pdf_page_offset=$OFFSET"
            echo "page_formula=PDF page = printed page + $OFFSET"
        fi
    } >> "$OUTPUT_META"

    echo "Created section slice: $OUTPUT_PDF"
    echo "Provenance:            $OUTPUT_META"
    echo "Target PDF pages:      $TARGET_START-$TARGET_END"
    echo "Extracted with context: $EXTRACT_START-$EXTRACT_END"
}

[ "$#" -gt 0 ] || { usage; exit 1; }
COMMAND=$1
shift

case "$COMMAND" in
    prepare) prepare_command "$@" ;;
    offset) offset_command "$@" ;;
    slice) slice_command "$@" ;;
    -h|--help|help) usage ;;
    *) usage >&2; die "Unknown command: $COMMAND" ;;
esac
