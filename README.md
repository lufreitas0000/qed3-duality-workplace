# QED3 Duality — R&D Workplace

This repository is the research and verification workspace for a pedagogical monograph on constructive bosonization, coupled-wire methods, and the duality between a free $(2+1)$D Dirac cone and $N=1$ $\mathrm{QED}_3$. Derivations remain here until they pass the project checks and are ready to migrate into the book repository.

## Repository roles

The parent workspace `~/Projects/latex_notes/qed3-duality/` contains three Git repositories and a local reference library:

| Path | Role |
|---|---|
| `workplace/` | Module-level derivations, tests, planning documents, and automation. |
| `book/` | Clean monograph assembled from verified workplace modules. |
| `references/` | Version-controlled Markdown digests and selected source material used by agents. |
| `References-Full/books/` | Local full-book source library; intentionally kept outside Git. |
| `References-Full/_slices/` | Generated front matter, section, chapter, and Markdown transcription artifacts; intentionally kept outside Git. |

Reference work should begin with the lightweight `ref_*.md` digests in `references/`. Open a full PDF only when a statement, equation, or convention must be checked against the source.

## Current research program

The active plan has two layers:

- **Part 0, Chapters A–G:** mathematical and physical prerequisites, from topology and measure theory through operator theory, quantum mechanics, statistical mechanics, path integrals, and conformal field theory.
- **Chapters 1–9:** constructive one-dimensional bosonization, coupled wires, the Dirac/$\mathrm{QED}_3$ duality, and its consequences.

The current schedule is in [`doc/sprints.md`](doc/sprints.md). [`doc/TOC_1_1_0.md`](doc/TOC_1_1_0.md) is the expanded working table of contents; [`doc/TOC_1.0.0.md`](doc/TOC_1.0.0.md) preserves the initial baseline.

The implemented source tree currently contains the Chapter 1 and Chapter 2 module drafts in `src/ch01/` and `src/ch02/`. Later chapter directories are placeholders for future verified work.

## Reference cartography and PDF slicing

[`refs/CHAPTER_SLICES_INDEX.md`](refs/CHAPTER_SLICES_INDEX.md) is the main index for the local full-book library. It records each book's complete contents, printed and physical PDF page coordinates, source and slice paths, and document metadata. The current catalog covers 16 source works and 202 chapter, appendix, supplement, or solution units.

Machine-readable chapter maps live in [`refs/chapter_maps/`](refs/chapter_maps/). Two scripts reproduce the extraction workflow:

```bash
# Inspect metadata, extract front matter for TOC/OCR work, or make an ad hoc slice.
./infra/pdf_reference_tool.sh --help

# Split a full book according to a reviewed TSV chapter map and compress each unit.
./infra/pdf_split_chapters.sh --help
```

Both scripts write generated PDFs beneath `../References-Full/_slices/<book-key>/`. The TSV maps and Markdown index are version controlled; the large source and generated PDFs are not.

## Module workflow

Module states follow `DRAFT -> VERIFIED -> MIGRATED`:

1. Read the relevant reference digests and record conventions explicitly.
2. Develop the derivation in one `src/chXX/chXX_mYY_*.tex` file.
3. Add symbolic or numerical checks under `tests/chXX/` when they test a material claim.
4. Compile and audit the module.
5. Mark it `VERIFIED` only after the derivation and checks pass.
6. Migrate the verified narrative to the sibling `book/` repository.

The agent rules and mathematical conventions are under [`.agents/`](.agents/). In particular, `.agents/orchestrator.md` defines the lifecycle, and the files under `.agents/skills/` define derivation, reference-ingestion, compilation, testing, and Git procedures.

## Common commands

```bash
# Compile and audit one module.
./infra/compile_tex.sh src/ch01/ch01_m01_lattice_continuum_fock.tex

# Remove generated LaTeX artifacts from a source subtree.
./infra/compile_tex.sh --clean src/ch01

# Validate, commit, and push the reviewed workplace changes.
./infra/git_sync.sh "feat(ch01-m01): describe the verified change"
```

`infra/import_archive.sh` supports controlled imports from the local archive. Run each script with `--help` before first use.
