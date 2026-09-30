# QED3 Duality — R&D Workplace Repository

This repository is the **Research & Development (R&D) Sandbox** for the pedagogical review monograph on constructive $(1+1)$D bosonization and the explicit derivation of the duality between a free $(2+1)$D Dirac cone and $N=1$ $\mathrm{QED}_3$.

---

## 1. Workspace & Repository Architecture

The parent workspace `~/Projects/latex_notes/qed3-duality/` mounts three sibling directories in VS Code (`qed3-duality.code-workspace`):
1. `workplace/` (Git repo, active branch `dev`): Granular, one-file-per-module step-by-step derivations, numerical/symbolic tests, and automation scripts.
2. `book/` (Git repo, active branch `dev`): Clean pedagogical monograph populated only after a chapter's modules are `VERIFIED` in `workplace/`.
3. `archive/` (Unversioned local reference vault): Contains the source `.tex` and `.pdf` files imported from Windows `Downloads`:
   - `ref_miranda_2003/`: E. Miranda, *Introduction to Bosonization*, Braz. J. Phys. **33**, 3 (2003).
   - `ref_vds_9805275/`: J. von Delft & H. Schoeller, *Bosonization for Beginners — Refermionization for Experts*, `cond-mat/9805275v3`.
   - `ref_mam_1510.08455/`: D. F. Mross, J. Alicea, & O. I. Motrunich, *Explicit derivation of duality between a free Dirac cone and QED in (2+1)D*, `arXiv:1510.08455v2`.
   - `ref_seiberg_1606.01989/`: N. Seiberg, T. Senthil, C. Wang, & E. Witten, *A Duality Web in 2+1 Dimensions and Condensed Matter Physics*, `arXiv:1606.01989v2`.
   - `legacy_dualidade/` & `legacy_tcc_english/`: Author's previous Portuguese and English manuscripts and TikZ figures.

---

## 2. Agent Skills (`.agents/`) & Automation Scripts (`infra/`)

All AI agent rules and mathematical conventions are modularized in `.agents/`:
- `.agents/orchestrator.md`: Scrum Master workflow, module status lifecycle (`DRAFT` -> `VERIFIED` -> `MIGRATED`), and TOC semantic versioning.
- `.agents/skills/sk_rd_derivation.md`: Constructive derivation rules and **Miranda's global normalization standard**.
- `.agents/skills/sk_tex_compile.md`: LaTeX compilation and log-audit rules.
- `.agents/skills/sk_git_ops.md`: Git commit and branch synchronization rules.
- `.agents/skills/sk_num_verify.md`: Julia/Python verification standards for `tests/chXX/`.

### CLI Scripts (`infra/`)
- **Compile & Audit LaTeX:**

      ./infra/compile_tex.sh src/ch01/ch01_m01_lattice_continuum_fock.tex
      ./infra/compile_tex.sh --clean src/ch01

- **Stage, Clean Aux, Commit, and Push:**

      ./infra/git_sync.sh "feat(ch01-m01): complete constructive derivations for Sec 1.1-1.3"

- **Re-import Reference Files from Windows Downloads:**

      ./infra/import_archive.sh

---

## 3. Module Map for Chapters 1 & 2 (Miranda)

### Chapter 1 (`src/ch01/`) — Miranda Sections I–XIII
- `ch01_m01_lattice_continuum_fock.tex`: Sections I–IV & Appendices A.1–A.2 (Hubbard/XXZ models, linearization, Dirac sea $\vert{}0\rangle_0$, normal ordering, $\hat{N}$, $\mathcal{H} = \bigoplus_N \mathcal{H}_N$).
- `ch01_m02_current_algebra_klein.tex`: Sections V–VII (Density operators $\rho(q)$, chiral anomaly commutator $[\rho(p),\rho(q)]$, canonical bosons $b_q, b_q^\dagger$, Haldane completeness, Klein factors $F, F^\dagger$).
- `ch01_m03_mattis_mandelstam.tex`: Section VIII & Appendices B–C (Commutators $[b_q, \psi(x)]$, coherent state representation, zero-mode phase $\Lambda(x)$, Mattis-Mandelstam formula).
- `ch01_m04_bosonic_fields_hamiltonian.tex`: Sections IX–X (Chiral fields $\varphi, \varphi^\dagger, \phi$, finite-$L$ commutators Eqs. 86–92, point-splitting of density Eq. 95 and free Hamiltonian Eqs. 97–106).
- `ch01_m05_two_branches_dual_fields.tex`: Sections XI–XIII ($R/L$ movers dictionary Eqs. 116–144, multi-species Klein factors Eqs. 145–159, canonical dual fields $\phi, \theta$ Eqs. 160–171).

### Chapter 2 (`src/ch02/`) — Miranda Sections XIV–XVIII
- `ch02_m01_spinless_luttinger_bogoliubov.tex`: Section XIV.1 & Appendix D ($g_2, g_4$ Luttinger model, Bogoliubov rotation $d_q^{1,2}$, $g$ and $u$, strong-weak duality $g \leftrightarrow 1/g$).
- `ch02_m02_spinless_correlators_greens.tex`: Section XIV.2 (Density $D_c$, CDW $D_{\mathrm{CDW}}$, $4k_F$, pairing $D_p$, single-particle Green's function $\tilde{G}(x,t)$, local DOS $\rho_{\mathrm{local}}(\omega)$, momentum distribution $n_R(k)$).
- `ch02_m03_xxz_chain_haldane_conjecture.tex`: Sections XV–XVI (1D Jordan-Wigner mapping of XXZ chain, string bosonization of $S_j^\pm$, spin correlators $G_{zz}, G_{+-}$, Haldane Luttinger liquid conjecture).
- `ch02_m04_spinful_luttinger_sine_gordon.tex`: Sections XVII–XVIII & Appendix E (Spin-$1/2$ Luttinger model, spin-charge separation, spinful correlators and Green's function, sine-Gordon Umklapp/backscattering gaps, Luther-Emery phase).
