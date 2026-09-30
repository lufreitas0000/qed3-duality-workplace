#!/bin/sh
set -e

WIN_DL="/mnt/c/Users/lucas/Downloads"
ARCHIVE_DIR="../archive"

mkdir -p "${ARCHIVE_DIR}/legacy_dualidade"
mkdir -p "${ARCHIVE_DIR}/legacy_tcc_english"
mkdir -p "${ARCHIVE_DIR}/ref_vds_9805275"
mkdir -p "${ARCHIVE_DIR}/ref_seiberg_1606.01989"
mkdir -p "${ARCHIVE_DIR}/ref_mam_1510.08455"
mkdir -p "${ARCHIVE_DIR}/ref_miranda_2003"
mkdir -p "fig/legacy"

copy_if_exists() {
    src_path="$1"
    dest_path="$2"
    if [ -e "$src_path" ]; then
        cp -r "$src_path"/* "$dest_path"/ 2>/dev/null || cp -r "$src_path" "$dest_path"/
        echo "[IMPORTED] $src_path ->$dest_path"
    else
        echo "[SKIPPED]  $src_path (not found at Windows path)"
    fi
}

copy_if_exists "${WIN_DL}/TCC-Bozonizatoin-TeX-20260929T232900Z-1-001" "${ARCHIVE_DIR}/legacy_dualidade"
copy_if_exists "${WIN_DL}/TCC_English" "${ARCHIVE_DIR}/legacy_tcc_english"
copy_if_exists "${WIN_DL}/arXiv-cond-mat9805275v3" "${ARCHIVE_DIR}/ref_vds_9805275"
copy_if_exists "${WIN_DL}/arXiv-1606.01989v2" "${ARCHIVE_DIR}/ref_seiberg_1606.01989"
copy_if_exists "${WIN_DL}/arXiv-1510.08455v2" "${ARCHIVE_DIR}/ref_mam_1510.08455"

# Also check for Miranda PDF in Downloads
for f in "${WIN_DL}"/*Miranda*.pdf "${WIN_DL}"/*Bosonization*.pdf; do
    if [ -f "$f" ]; then
        cp "$f" "${ARCHIVE_DIR}/ref_miranda_2003/"
        echo "[IMPORTED] $f ->${ARCHIVE_DIR}/ref_miranda_2003/"
    fi
done

# Copy reusable PDF/PNG figures from TCC_English into workplace/fig/legacy/
if [ -d "${ARCHIVE_DIR}/legacy_tcc_english" ]; then
    find "${ARCHIVE_DIR}/legacy_tcc_english" -maxdepth 2 -type f \( -name "*.pdf" -o -name "*.png" \) -exec cp {} fig/legacy/ \;
    echo "[COPIED]   Legacy figures -> workplace/fig/legacy/"
fi
