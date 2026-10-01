# QED3 Duality — R&D Workplace

This repository is the research and verification workspace for a pedagogical monograph on constructive bosonization, coupled-wire methods, and the duality between a free $(2+1)$D Dirac cone and $N=1$ $\mathrm{QED}_3$. Derivations remain here until they pass the project checks and are ready to migrate into the book repository.

## Repository roles

The parent workspace `~/Projects/latex_notes/qed3-duality/` contains three Git repositories and a local reference library:

| Path | Role |
|---|---|
| `workplace/` | Module-level derivations, tests, planning documents, and automation. |
| `book/` | Clean monograph assembled from verified workplace modules. |
| `references-lightweight/` | Version-controlled Markdown digests and selected source material used by agents. |
| `references-transcripts/` | Version-controlled Markdown transcripts of books and sections. |
| `reference-source/` | Local full-book source library and generated slices; intentionally kept outside Git. |

Reference work should begin with the lightweight `ref_*.md` digests in `references-lightweight/`. Open a full PDF only when a statement, equation, or convention must be checked against the source.

## Current research program

The active plan has two layers:

- **Part 0, Chapters A–G:** mathematical and physical prerequisites, from topology and measure theory through operator theory, quantum mechanics, statistical mechanics, path integrals, and conformal field theory.
- **Chapters 1–9:** constructive one-dimensional bosonization, coupled wires, the Dirac/$\mathrm{QED}_3$ duality, and its consequences.

The current schedule is in [`doc/sprints.md`](doc/sprints.md). [`doc/TOC_1_1_0.md`](doc/TOC_1_1_0.md) is the expanded working table of contents; [`doc/TOC_1.0.0.md`](doc/TOC_1.0.0.md) preserves the initial baseline.

The implemented source tree currently contains the Chapter 1 and Chapter 2 module drafts in `src/ch01/` and `src/ch02/`. Later chapter directories are placeholders for future verified work.

## Research and validation workflow

The workplace is also the laboratory for rederiving results from published papers. A paper claim is treated as a module-sized research target: identify the source equation, reconstruct the definitions and assumptions, derive the result independently, and record the comparison with the published statement. The goal is a reproducible derivation that can be audited by another agent and reused by later chapters, rather than a transcription of the paper.

The multi-agent workflow separates the work into complementary roles:

- a **librarian/reference agent** locates the relevant paper or book section and prepares a focused Markdown digest with definitions, lemmas, theorem statements, proof outlines, equation mappings, and unresolved conventions;
- a **derivation agent** preprocesses informal source material into a usable mathematical structure, then rederives the result in the notation of the workplace;
- a **symbolic and numerical verification agent** builds checks for identities, limits, spectra, correlation functions, lattice sums, and continuum approximations;
- a **review agent** compares the derivation, assumptions, tests, and source citation before a module can move from `DRAFT` to `VERIFIED`.

Many physics papers do not present their arguments in a strict definition–lemma–theorem–proof format. Before proving or testing a statement, preprocess it into explicit definitions, domains, hypotheses, intermediate claims, and a final proposition or theorem. Record which steps are exact, which use an approximation, and which depend on a regulator, boundary condition, finite-size convention, or choice of normalization. This preprocessing belongs in the workplace module or its companion reference digest so that an informal equation is not mistaken for a theorem with stronger scope than the source supports.

Validation should use the least expensive check that can falsify a claim, and then add stronger checks when the result is important:

- **SymPy or another computer-algebra system** for exact algebra, commutators, BCH identities, matrix relations, Fourier transforms, and simplification of competing conventions;
- **NumPy/SciPy, Julia, or equivalent numerical tools** for finite-size spectra, correlation functions, lattice sums, discretized operators, and comparisons with continuum formulas;
- **convergence and extrapolation studies** for (L\to\infty), lattice-spacing, momentum-cutoff, time-step, and regulator limits, with the fitted error model recorded alongside the data;
- **discretization checks** that compare different grid sizes, boundary conditions, quadratures, and derivative stencils before a numerical observation is used as evidence;
- **unit tests and regression tests** under `tests/chXX/` for exact identities, limiting cases, Hermiticity, symmetry actions, dimensions, sign conventions, and known special cases;
- **independent rederivations and cross-source comparisons** for claims that enter the duality map, anomaly cancellation, operator algebra, or a published-paper reproduction.

Numerical agreement is evidence, not a proof. A test should state its tolerance, precision, discretization, convergence trend, and failure boundary. Symbolic simplification also does not replace domain or operator arguments. Each verified module should therefore distinguish exact algebra, analytical proof, numerical evidence, and conjectural or unresolved steps.

Lean is deliberately not part of the initial workflow. The project will first use structured Markdown, LaTeX derivations, symbolic checks, numerical experiments, convergence studies, and unit tests. If a later module has stable definitions and a proof whose formalization would materially improve reliability, its definitions and dependency graph should be prepared so that Lean or another proof assistant can be considered without reorganizing the research archive.

## Reference cartography and PDF slicing

[`refs/CHAPTER_SLICES_INDEX.md`](refs/CHAPTER_SLICES_INDEX.md) is the main index for the local full-book library. It records each book's complete contents, printed and physical PDF page coordinates, source and slice paths, and document metadata. The current catalog covers 28 source PDFs, 16 chapter-indexed works with 202 chapter-level units, and 67 systematic Reed–Simon section units. The full transcript/status audit is maintained separately in [`../references-transcripts/TRANSCRIPT_TOC_STATUS.md`](../references-transcripts/TRANSCRIPT_TOC_STATUS.md).

Machine-readable chapter and section maps live in [`refs/chapter_maps/`](refs/chapter_maps/). Two scripts reproduce the extraction workflow:

```bash
# Inspect metadata, extract front matter for TOC/OCR work, or make an ad hoc slice.
./infra/pdf_reference_tool.sh --help

# Split a full book according to a reviewed TSV map and compress each unit.
./infra/pdf_split_chapters.sh --help

# Section maps can request contextual overlap and write to sections/.
./infra/pdf_split_chapters.sh --source SOURCE.pdf --book-key BOOK_KEY \
  --map refs/chapter_maps/BOOK_KEY.sections.tsv --unit-type section
```

Both scripts write generated PDFs beneath `../reference-source/_slices/<book-key>/`. The TSV maps and Markdown index are version controlled; the large source and generated PDFs are not.

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

`infra/import_archive.sh` supports controlled imports from the local references. Run each script with `--help` before first use.
