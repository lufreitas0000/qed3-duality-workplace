#!/bin/sh
set -eu

# Split a source PDF into chapter- or section-sized, upload-friendly PDFs
# according to a checksum-bound TSV map. Physical PDF pages are used
# deliberately: printed-page offsets can change inside scanned books.

LC_ALL=C
export LC_ALL

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
WORKPLACE_DIR=$(dirname -- "$SCRIPT_DIR")
PROJECT_DIR=$(dirname -- "$WORKPLACE_DIR")
DEFAULT_OUTPUT_ROOT="$PROJECT_DIR/reference-source/_slices"

usage() {
    cat <<'USAGE'
Usage:
  ./infra/pdf_split_chapters.sh \
    --source FILE \
    --book-key KEY \
    --map FILE \
    [--output-root DIR] \
    [--unit-type chapter|section] \
    [--overlap-pages N] \
    [--compress web|lossless|none] \
    [--force] [--dry-run]

Required map format (tab-separated):
  # source_sha256=<64 hexadecimal characters>
  # source_pdf_pages=<positive integer>
  # columns=sequence unit_id slug first_pdf_page last_pdf_page printed_pages
  01<TAB>ch01<TAB>descriptive_slug<TAB>13<TAB>47<TAB>1-35

The source checksum and total page count must match the map. Core unit ranges
must be ordered, non-overlapping, and within the source PDF. --overlap-pages
adds context on each side of every core range, clamped to the source PDF. A map
may set its default with '# overlap_pages=N'; the command-line option wins.

Compression profiles:
  web       Ghostscript upload copy: 200 dpi color/gray and 300 dpi monochrome.
            This is the default; visually inspect fine mathematical notation.
  lossless  qpdf stream/object compression without image downsampling.
  none      Preserve qpdf's extracted chapter without a second compression pass.

Output:
  <output-root>/<book-key>/chapters/  (with --unit-type chapter, the default)
    01_ch01_descriptive_slug_pdf013-047.pdf
    01_ch01_descriptive_slug_pdf013-047.meta.txt
  <output-root>/<book-key>/sections/  (with --unit-type section)
USAGE
}

die() {
    echo "Error: $*" >&2
    exit 1
}

need_command() {
    command -v "$1" >/dev/null 2>&1 || die "Required command '$1' was not found."
}

is_positive_integer() {
    case "$1" in
        ''|*[!0-9]*) return 1 ;;
        *) [ "$1" -gt 0 ] ;;
    esac
}

validate_token() {
    label=$1
    value=$2
    case "$value" in
        ''|*[!A-Za-z0-9._-]*)
            die "$label must contain only letters, digits, dots, underscores, or hyphens: $value"
            ;;
    esac
}

page_count() {
    pdfinfo "$1" | awk '/^Pages:[[:space:]]*/ { print $2; exit }'
}

compress_pdf() {
    compress_input_pdf=$1
    compress_output_pdf=$2

    case "$COMPRESS" in
        none)
            cp "$compress_input_pdf" "$compress_output_pdf"
            ;;
        lossless)
            qpdf --stream-data=compress --object-streams=generate \
                "$compress_input_pdf" "$compress_output_pdf"
            ;;
        web)
            compress_gs_pdf="$TMP_WORK_DIR/ghostscript.pdf"
            rm -f "$compress_gs_pdf"
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
                -sOutputFile="$compress_gs_pdf" \
                "$compress_input_pdf"
            # Some older PDFs make Ghostscript emit a stale cross-reference
            # entry even though page rendering and text extraction succeed.
            # Rewriting once with qpdf removes that entry and gives downstream
            # tools a clean, canonical structure. The input warning is expected
            # in that case, so do not convert it into a failing exit status.
            qpdf --warning-exit-0 \
                --stream-data=compress --object-streams=generate \
                "$compress_gs_pdf" "$compress_output_pdf"
            rm -f "$compress_gs_pdf"
            ;;
        *)
            die "Unknown compression profile '$COMPRESS'."
            ;;
    esac
}

SOURCE=
BOOK_KEY=
MAP_FILE=
OUTPUT_ROOT=$DEFAULT_OUTPUT_ROOT
COMPRESS=web
UNIT_TYPE=chapter
OVERLAP_PAGES=
FORCE=0
DRY_RUN=0

while [ "$#" -gt 0 ]; do
    case "$1" in
        --source) [ "$#" -ge 2 ] || die "--source requires a value."; SOURCE=$2; shift 2 ;;
        --book-key) [ "$#" -ge 2 ] || die "--book-key requires a value."; BOOK_KEY=$2; shift 2 ;;
        --map) [ "$#" -ge 2 ] || die "--map requires a value."; MAP_FILE=$2; shift 2 ;;
        --output-root) [ "$#" -ge 2 ] || die "--output-root requires a value."; OUTPUT_ROOT=$2; shift 2 ;;
        --unit-type) [ "$#" -ge 2 ] || die "--unit-type requires a value."; UNIT_TYPE=$2; shift 2 ;;
        --overlap-pages) [ "$#" -ge 2 ] || die "--overlap-pages requires a value."; OVERLAP_PAGES=$2; shift 2 ;;
        --compress) [ "$#" -ge 2 ] || die "--compress requires a value."; COMPRESS=$2; shift 2 ;;
        --force) FORCE=1; shift ;;
        --dry-run) DRY_RUN=1; shift ;;
        -h|--help) usage; exit 0 ;;
        *) die "Unknown option: $1" ;;
    esac
done

[ -n "$SOURCE" ] || die "--source is required."
[ -f "$SOURCE" ] || die "Source PDF not found: $SOURCE"
[ -n "$BOOK_KEY" ] || die "--book-key is required."
validate_token "--book-key" "$BOOK_KEY"
[ -n "$MAP_FILE" ] || die "--map is required."
[ -f "$MAP_FILE" ] || die "Unit map not found: $MAP_FILE"
case "$COMPRESS" in web|lossless|none) ;; *) die "--compress must be web, lossless, or none." ;; esac
case "$UNIT_TYPE" in chapter) UNIT_PLURAL=chapters ;; section) UNIT_PLURAL=sections ;; *) die "--unit-type must be chapter or section." ;; esac

need_command awk
need_command pdfinfo
need_command qpdf
need_command sha256sum
if [ "$COMPRESS" = web ]; then
    need_command gs
fi

SOURCE_PAGES=$(page_count "$SOURCE")
is_positive_integer "$SOURCE_PAGES" || die "Could not determine source page count."
SOURCE_SHA=$(sha256sum "$SOURCE" | awk '{print $1}')
MAP_SHA=$(awk -F= '/^# source_sha256=/ { print $2; exit }' "$MAP_FILE")
MAP_PAGES=$(awk -F= '/^# source_pdf_pages=/ { print $2; exit }' "$MAP_FILE")
MAP_OVERLAP=$(awk -F= '/^# overlap_pages=/ { print $2; exit }' "$MAP_FILE")

[ -n "$MAP_SHA" ] || die "Map is missing '# source_sha256=' metadata."
[ "$SOURCE_SHA" = "$MAP_SHA" ] || die "Source checksum does not match the unit map."
is_positive_integer "$MAP_PAGES" || die "Map has an invalid source_pdf_pages value."
[ "$SOURCE_PAGES" -eq "$MAP_PAGES" ] || die "Source page count does not match the unit map."
if [ -z "$OVERLAP_PAGES" ]; then
    OVERLAP_PAGES=${MAP_OVERLAP:-0}
fi
case "$OVERLAP_PAGES" in ''|*[!0-9]*) die "--overlap-pages must be a non-negative integer." ;; esac

TMP_WORK_DIR=$(mktemp -d /tmp/qed3-pdf-chapters-XXXXXX)
NORMALIZED_MAP="$TMP_WORK_DIR/chapters.tsv"
TMP_SLICE="$TMP_WORK_DIR/slice.pdf"
TMP_FINAL="$TMP_WORK_DIR/final.pdf"
trap 'rm -f "$NORMALIZED_MAP" "$TMP_SLICE" "$TMP_FINAL" "$TMP_WORK_DIR/ghostscript.pdf"; rmdir "$TMP_WORK_DIR" 2>/dev/null || true' EXIT HUP INT TERM

awk 'BEGIN { FS="\t"; OFS="\t" }
     /^[[:space:]]*#/ || /^[[:space:]]*$/ { next }
     { if (NF != 6) { print "Invalid map row " NR ": expected 6 tab-separated fields" > "/dev/stderr"; exit 2 }
       if (seen_sequence[$1]++) { print "Duplicate sequence in map row " NR ": " $1 > "/dev/stderr"; exit 2 }
       if (seen_id[$2]++) { print "Duplicate unit id in map row " NR ": " $2 > "/dev/stderr"; exit 2 }
       print $1, $2, $3, $4, $5, $6 }' \
    "$MAP_FILE" > "$NORMALIZED_MAP" || die "Could not parse unit map."

[ -s "$NORMALIZED_MAP" ] || die "Unit map contains no rows."

TAB=$(printf '\t')
PREVIOUS_END=0
CHAPTER_COUNT=0
DEST_DIR="$OUTPUT_ROOT/$BOOK_KEY/$UNIT_PLURAL"

# Validate the complete plan before creating any output.
while IFS="$TAB" read -r sequence chapter_id slug first_page last_page printed_pages; do
    validate_token "sequence" "$sequence"
    validate_token "chapter_id" "$chapter_id"
    validate_token "slug" "$slug"
    is_positive_integer "$first_page" || die "Invalid first page for $chapter_id: $first_page"
    is_positive_integer "$last_page" || die "Invalid last page for $chapter_id: $last_page"
    [ "$first_page" -le "$last_page" ] || die "Reversed page range for $chapter_id."
    [ "$last_page" -le "$SOURCE_PAGES" ] || die "$chapter_id ends after source page $SOURCE_PAGES."
    [ "$first_page" -gt "$PREVIOUS_END" ] || die "$chapter_id overlaps or is out of order."
    PREVIOUS_END=$last_page
    CHAPTER_COUNT=$((CHAPTER_COUNT + 1))

    expanded_first=$((first_page - OVERLAP_PAGES))
    [ "$expanded_first" -ge 1 ] || expanded_first=1
    expanded_last=$((last_page + OVERLAP_PAGES))
    [ "$expanded_last" -le "$SOURCE_PAGES" ] || expanded_last=$SOURCE_PAGES
    stem=$(printf '%s_%s_%s_pdf%03d-%03d' "$sequence" "$chapter_id" "$slug" "$expanded_first" "$expanded_last")
    output_pdf="$DEST_DIR/$stem.pdf"
    output_meta="$DEST_DIR/$stem.meta.txt"
    if [ "$FORCE" -ne 1 ] && { [ -e "$output_pdf" ] || [ -e "$output_meta" ]; }; then
        die "Output exists for $chapter_id (use --force to replace the complete plan)."
    fi
done < "$NORMALIZED_MAP"

echo "Book key:      $BOOK_KEY"
echo "Source pages:  $SOURCE_PAGES"
echo "Unit type:     $UNIT_TYPE"
echo "Units:         $CHAPTER_COUNT"
echo "Overlap:       $OVERLAP_PAGES page(s) per side"
echo "Compression:   $COMPRESS"
echo "Destination:   $DEST_DIR"

if [ "$DRY_RUN" -eq 1 ]; then
    while IFS="$TAB" read -r sequence chapter_id slug first_page last_page printed_pages; do
        expanded_first=$((first_page - OVERLAP_PAGES))
        [ "$expanded_first" -ge 1 ] || expanded_first=1
        expanded_last=$((last_page + OVERLAP_PAGES))
        [ "$expanded_last" -le "$SOURCE_PAGES" ] || expanded_last=$SOURCE_PAGES
        stem=$(printf '%s_%s_%s_pdf%03d-%03d' "$sequence" "$chapter_id" "$slug" "$expanded_first" "$expanded_last")
        echo "[DRY RUN] $chapter_id core PDF $first_page-$last_page, output PDF $expanded_first-$expanded_last -> $stem.pdf"
    done < "$NORMALIZED_MAP"
    exit 0
fi

mkdir -p "$DEST_DIR"
GENERATED_AT=$(date -u '+%Y-%m-%dT%H:%M:%SZ')

while IFS="$TAB" read -r sequence chapter_id slug first_page last_page printed_pages; do
    expanded_first=$((first_page - OVERLAP_PAGES))
    [ "$expanded_first" -ge 1 ] || expanded_first=1
    expanded_last=$((last_page + OVERLAP_PAGES))
    [ "$expanded_last" -le "$SOURCE_PAGES" ] || expanded_last=$SOURCE_PAGES
    stem=$(printf '%s_%s_%s_pdf%03d-%03d' "$sequence" "$chapter_id" "$slug" "$expanded_first" "$expanded_last")
    output_pdf="$DEST_DIR/$stem.pdf"
    output_meta="$DEST_DIR/$stem.meta.txt"

    rm -f "$TMP_SLICE" "$TMP_FINAL"
    # Legacy scans sometimes attach obsolete keys to the page tree. qpdf can
    # safely discard those keys while still producing a valid slice, but uses
    # exit status 3 to report the warning unless explicitly told otherwise.
    qpdf --warning-exit-0 \
        "$SOURCE" --pages . "$expanded_first-$expanded_last" -- "$TMP_SLICE"
    compress_pdf "$TMP_SLICE" "$TMP_FINAL"
    mv "$TMP_FINAL" "$output_pdf"

    {
        echo "operation=split_$UNIT_TYPE"
        echo "book_key=$BOOK_KEY"
        echo "${UNIT_TYPE}_id=$chapter_id"
        echo "${UNIT_TYPE}_slug=$slug"
        echo "printed_pages=$printed_pages"
        echo "source_file=$SOURCE"
        echo "source_sha256=$SOURCE_SHA"
        echo "source_pdf_pages=$SOURCE_PAGES"
        echo "${UNIT_TYPE}_core_pdf_range=$first_page-$last_page"
        echo "overlap_pages=$OVERLAP_PAGES"
        echo "${UNIT_TYPE}_pdf_range=$expanded_first-$expanded_last"
        echo "${UNIT_TYPE}_pdf_pages=$((expanded_last - expanded_first + 1))"
        echo "output_file=$output_pdf"
        echo "output_sha256=$(sha256sum "$output_pdf" | awk '{print $1}')"
        echo "compression_profile=$COMPRESS"
        echo "generated_utc=$GENERATED_AT"
    } > "$output_meta"

    output_size=$(du -h "$output_pdf" | awk '{print $1}')
    echo "[CREATED] $chapter_id core PDF $first_page-$last_page, output PDF $expanded_first-$expanded_last ($output_size)"
done < "$NORMALIZED_MAP"

echo "Completed $CHAPTER_COUNT $UNIT_TYPE units."
