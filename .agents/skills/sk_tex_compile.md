# Skill: LaTeX Compilation and Log Audit (`sk_tex_compile`)

## 1. Usage
Compile any workplace module or chapter using the POSIX wrapper script:
- Single module: `./infra/compile_tex.sh src/ch01/ch01_m01_lattice_continuum_fock.tex`
- Entire chapter: `./infra/compile_tex.sh src/ch01`
- Compile and clean auxiliary files: `./infra/compile_tex.sh --clean src/ch01/ch01_m01_lattice_continuum_fock.tex`

## 2. Quality Gate Criteria
A module `.tex` file cannot be marked `VERIFIED` unless `./infra/compile_tex.sh` exits with code `0`:
1. Zero LaTeX fatal or non-fatal errors (`!`).
2. Zero undefined references (`LaTeX Warning: Reference ... undefined`) or multiply-defined labels.
3. All multi-line equations properly aligned within `\begin{align} ... \end{align}` or `\begin{split} ... \end{split}` without overflowing page margins.
