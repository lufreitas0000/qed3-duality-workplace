#!/bin/sh
set -e

CLEAN_AUX=0
if [ "$1" = "--clean" ]; then
    CLEAN_AUX=1
    shift
fi

TARGET="$1"
if [ -z "$TARGET" ]; then
    echo "Usage: ./infra/compile_tex.sh [--clean] <file.tex | directory>" >&2
    exit 1
fi

compile_single() {
    tex_file="$1"
    dir_name="$(dirname "$tex_file")"
    base_name="$(basename "$tex_file" .tex)"
    echo "==> Compiling: $tex_file"
    (
        cd "$dir_name"
        pdflatex -interaction=nonstopmode -halt-on-error "${base_name}.tex" > /dev/null
        pdflatex -interaction=nonstopmode -halt-on-error "${base_name}.tex" > /dev/null
        if grep -q "LaTeX Warning: Reference.*undefined" "${base_name}.log" || \
           grep -q "LaTeX Warning: Label(s) may have changed" "${base_name}.log"; then
            echo "WARNING: Undefined references or unstable labels in ${tex_file}!" >&2
            grep "LaTeX Warning:" "${base_name}.log" >&2
            exit 1
        fi
        if [ "$CLEAN_AUX" -eq 1 ]; then
            rm -f "${base_name}.aux" "${base_name}.log" "${base_name}.out" "${base_name}.toc"
        fi
    )
    echo "    [OK] ${dir_name}/${base_name}.pdf"
}

if [ -d "$TARGET" ]; then
    for f in "$TARGET"/*.tex; do
        [ -e "$f" ] || continue
        compile_single "$f"
    done
elif [ -f "$TARGET" ]; then
    compile_single "$TARGET"
else
    echo "Error: Target '$TARGET' not found." >&2
    exit 1
fi
