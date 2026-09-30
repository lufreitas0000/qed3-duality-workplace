# QED3 Duality — R&D Workplace Repository

This repository is the **Research & Development (R&D) Sandbox** for the pedagogical review book on constructive bosonization and the $(2+1)$D Dirac / $\mathrm{QED}_3$ duality.

## Directory Structure
- `.agents/`: Sub-agent prompt specifications.
- `doc/`: Project governance (`directives.md`) and versioned Table of Contents (`TOC_1.0.0.md`).
- `infra/`: Minimal LaTeX quick-draft template (`tpl_draft.tex`) and utility scripts.
- `src/ch01`..`ch09`: Atomic step-by-step LaTeX derivations.
- `tests/ch01`..`ch09`: Numerical and symbolic verification scripts (Julia / Python).
- `fig/`: Standalone TikZ figures and dispersion plots.

## Workflow
1. Copy `infra/tpl_draft.tex` into `src/chXX/rd_XX_YY_topic.tex`.
2. Prove all lemmas, propositions, and theorems constructively with zero skipped steps.
3. Once a chapter is completely verified, migrate and synthesize the derivations into the companion `qed3-duality-book` repository.
