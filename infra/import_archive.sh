#!/bin/sh
set -e

WIN_DL="/mnt/c/Users/lucas/Downloads"
REF_DIR="../reference-source"

mkdir -p "${REF_DIR}/legacy/dualidade"
mkdir -p "${REF_DIR}/legacy/tcc_english"
mkdir -p "${REF_DIR}/von_delft_schoeller_1998"
mkdir -p "${REF_DIR}/seiberg_et_al_2016"
mkdir -p "${REF_DIR}/mross_alicea_motrunich_2015"
mkdir -p "${REF_DIR}/miranda_2003"
mkdir -p "fig/legacy"

copy_if_exists() {
    src_path="$1"
    dest_path="$2"
    if [ -e "$src_path" ]; then
        cp -r "$src_path"/* "$dest_path"/ 2>/dev/null || cp -r "$src_path" "$dest_path"/
        echo "[IMPORTED] $src_path -> $dest_path"
    else
        echo "[SKIPPED]  $src_path (not found at Windows path)"
    fi
}

copy_if_exists "${WIN_DL}/TCC-Bozonizatoin-TeX-20260929T232900Z-1-001" "${REF_DIR}/legacy/dualidade"
copy_if_exists "${WIN_DL}/TCC_English" "${REF_DIR}/legacy/tcc_english"
copy_if_exists "${WIN_DL}/arXiv-cond-mat9805275v3" "${REF_DIR}/von_delft_schoeller_1998"
copy_if_exists "${WIN_DL}/arXiv-1606.01989v2" "${REF_DIR}/seiberg_et_al_2016"
copy_if_exists "${WIN_DL}/arXiv-1510.08455v2" "${REF_DIR}/mross_alicea_motrunich_2015"

# Also check for Miranda PDF in Downloads
for f in "${WIN_DL}"/*Miranda*.pdf "${WIN_DL}"/*Bosonization*.pdf; do
    if [ -f "$f" ]; then
        cp "$f" "${REF_DIR}/miranda_2003/"
        echo "[IMPORTED] $f -> ${REF_DIR}/miranda_2003/"
    fi
done

# Copy reusable PDF/PNG figures from TCC_English into workplace/fig/legacy/
if [ -d "${REF_DIR}/legacy/tcc_english" ]; then
    find "${REF_DIR}/legacy/tcc_english" -maxdepth 2 -type f \( -name "*.pdf" -o -name "*.png" \) -exec cp {} fig/legacy/ \;
    echo "[COPIED]   Legacy figures -> workplace/fig/legacy/"
fi
