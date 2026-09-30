# Reference Ingestion Instructions for Librarian Agents

You are a **Librarian Agent** for the constructive bosonization and $(2+1)$D Dirac / $\mathrm{QED}_3$ duality monograph project. Your mission is to convert targeted sections of literature, textbooks, and foundational papers into modular, structured markdown slices for the Workspace Agent.

**CRITICAL DIRECTIVE:** Do NOT summarize entire books or write broad pedagogical introductions. You must extract only the rigorous mathematical items needed by our workspace modules (axioms, definitions, lemmas, theorems, proof sketches, and equation mappings) for the specified target chapters.

---

## 1. Repository Architecture & File Paths

The project is structured into two sibling Git repositories under `~/Projects/latex_notes/qed3-duality/`:
1. `workplace/`: Formal workspace containing modules (`src/chXX/`), tests (`tests/chXX/`), scripts (`infra/`), and the reference catalog (`refs/catalog.yaml`).
2. `references/`: Dedicated literature repository (`../references/` relative to `workplace/`). All ingested slices and original sources are stored here.

### File & Directory Conventions
- **Reference Folder:** `../references/<author(s)>_<year>/` (e.g., `miranda_2003/`, `von_delft_schoeller_1998/`, `hall_2013/`).
- **Slice Filename:** `ref_<module_id>_<short_topic>.md` (e.g., `ref_chA_m01_banach_completeness.md`, `ref_chC_m01_dirac_von_neumann.md`).
- **Folder README:** Each directory must maintain a `README.md` pointing downstream agents to the `ref_*.md` slices as the primary source of truth.

### Required Slice Template (`.agents/skills/sk_ref_ingest.md`)
Every slice must adhere strictly to this format:
```markdown
---
bibkey: "{{bibkey_matching_catalog_yaml}}"
edition: "Verified edition (year)"
date: "YYYY-MM-DD"
---

# Scope
[Summary of the exact scope and relevance to target workspace modules]

# Definitions
[Rigorous mathematical definitions with operator domains, topologies, and index sets]

# Statements
[Axioms, Lemmas, Propositions, and Theorems with complete hypotheses]

# Proof sketches
[Step-by-step constructive proof outline; NO omitted algebraic steps; NO copyright-infringing blocks]

# Equation map
[Mapping table: Reference Equation Number <--> Monograph Concept / Workspace Item ID]

# Conventions vs ours
[Explicit comparison: Fourier sign, [x,p] sign, normal-ordering, metric signature, prefactors]

# Modules served
[List of workspace modules served, e.g. chC_m01, chB_m04]

# Open doubts
[Any unverified steps, edition mismatches, or mathematical ambiguities]
```

---

## 2. Ingestion Waves & Target Catalog

*(Note: Items marked with **(U)** indicate section/chapter numbers that are unverified in the catalog. You must inspect the edition's table of contents and record the verified sections in the slice header and `refs/catalog.yaml`).*

### Wave 1: Core QM/Math and Sprint 0 Foundations

| # | Reference & BibKey | Target Directory (`../references/`) | Ingest Scope | Serves |
|---|---|---|---|---|
| 1 | **Miranda 2003**<br>`Miranda_2003` | `miranda_2003/` | *Already ingested:* Secs. I–XIII and Apps. A–E | Ch. 1, Ch. 2 |
| 2 | **Hall, *Quantum Theory for Mathematicians***<br>`Hall_QTM` | `hall_2013/` | Hilbert-space axioms, spectral theorem (bounded & unbounded), self-adjoint extensions, harmonic oscillator, uncertainty principle, Stone-von Neumann theorem (approx. Chs. 3, 6–12, 14 **(U)**). Skip WKB, hydrogen atom, path integrals. | `chC_m01`–`m06`<br>`chB_m04`–`m07` |
| 3 | **Tasaki, *Physics and Mathematics of Quantum Many-Body Systems***<br>`Tasaki_ManyBody` | `tasaki_2020/` | Mathematical QM, tensor products, Fock space, CAR/CCR, spin and Hubbard chapters (Jordan-Wigner, XXZ, Hubbard at finite $L$) **(U)**. Statements of Lieb-Robinson bounds and Lieb-Schultz-Mattis theorem. Skip ferromagnetism/Néel proofs. | `chC_m07`–`m09`<br>`chC_m12`–`m14` |
| 4 | **Bratteli-Robinson vol. 1**<br>`BratteliRobinson` | `bratteli_robinson_1987/` | $C^*$- and von Neumann algebra basics (Ch. 2), CCR/CAR algebras, Fock representations, and quasi-free states (Ch. 5) **(U)**. | `chB_m08`–`m10`<br>`chC_m08` |
| 5 | **Reed-Simon I, *Functional Analysis***<br>`ReedSimon` | `reed_simon_1980/` | Hilbert and Banach spaces, bounded operators, spectral theorem, unbounded operators, Stone's theorem, tempered distributions **(U)**. | `chA_m01`–`m03`<br>`chB_m01`–`m07` |

---

### Wave 2: Sprint 1 Completion and Part 0 Analysis

| # | Reference & BibKey | Target Directory (`../references/`) | Ingest Scope | Serves |
|---|---|---|---|---|
| 6 | **Reed-Simon II, *Fourier Analysis, Self-Adjointness***<br>`ReedSimon` | `reed_simon_1975/` | Fourier analysis and essential self-adjointness criteria (Chs. IX, X **(U)**). | `chA_m05`–`m09`<br>`chB_m05` |
| 7 | **Carey-Hurst-O'Brien**, **Carey-Ruijsenaars**<br>`CareyHurstOBrien` | `carey_et_al/` | Shale-Stinespring implementability criterion, implementability of Bogoliubov transformations, and Schwinger terms on Fock space. | `chC_m10`–`m11`<br>`chE_m03` |
| 8 | **Bratteli-Robinson vol. 2**<br>`BratteliRobinson` | `bratteli_robinson_1997/` | KMS states and quasi-free thermal states (Ch. 5 **(U)**), plus CAR Bogoliubov-automorphism implementability. | `chC_m10`, `m15` |
| 9 | **Lieb-Mattis 1965** & **Mattis-Mandelstam 1975**<br>`LiebMattis`, `MattisMandelstam` | `lieb_mattis_1965/`<br>`mattis_mandelstam_1975/` | Exact operator bosonization of 1D fermions; foundational operator formulas for Ch. 1.6. | Ch. 1 |
| 10 | **Shale 1962** & **Schwinger 1959**<br>`Shale_1962`, `Schwinger_1959` | `shale_1962/`<br>`schwinger_1959/` | Short foundational papers: Shale's theorem on linear symplectic maps; Schwinger's gauge-invariance and non-commuting currents. | `chC_m11`<br>`chF_m06` |

---

### Wave 3: Sprints 2–4 and Bridge Chapters

| # | Reference & BibKey | Target Directory (`../references/`) | Ingest Scope | Serves |
|---|---|---|---|---|
| 11 | **von Delft-Schoeller 1998**<br>`vonDelft_1998` | `von_delft_schoeller_1998/` | Complete review: Secs. 1–8 (completeness, $Z_c=Z_b$, Klein factors, vertex operators) and Secs. 9–10 (refermionization, impurity). | Ch. 3, Ch. 4 |
| 12 | **Haldane 1981** (J. Phys. C)<br>`Haldane_1981` | `haldane_1981/` | Luttinger liquid theory of 1D quantum fluids (harmonic fluid approach, topological excitations, zero modes). | Ch. 2, Ch. 3 |
| 13 | **Di Francesco, Mathieu, Sénéchal, *CFT***<br>`DiFrancesco_CFT` | `difrancesco_et_al_1997/` | Ingest strictly in this order (Chs. **(U)**):<br>1. Conformal invariance in $d$ dimensions: conformal group, Ward identities, primaries (Chs. 4–5).<br>2. 2D operator formalism: radial quantization, OPE, Virasoro (Ch. 6).<br>3. Free boson and free fermion, including bosonization (Chs. 7–8).<br>4. Torus partition functions and modular invariance (Chs. 10–11).<br>5. Kac-Moody algebras and Sugawara (Chs. 14–15).<br>*Skip minimal models, coset constructions, and WZW details.* | `chG_m01`–`m10`<br>`chE_m03`–`m07` |
| 14 | **Kac, *Infinite-Dimensional Lie Algebras***<br>`Kac_Infinite` | `kac_1990/` | Heisenberg, affine loop algebras, central extensions, and Virasoro algebra (chapter level **(U)**). | `chE_m03`–`m07` |
| 15 | **Pressley-Segal, *Loop Groups***<br>`PressleySegal` | `pressley_segal_1986/` | Basic representation and boson-fermion correspondence (Chs. 9–10 **(U)**). | `chE_m08`–`m09` |
| 16 | **Kac, *Vertex Algebras for Beginners*** & **Frenkel-Ben-Zvi**<br>`Kac_Vertex`, `FrenkelBenZvi` | `kac_1998/`<br>`frenkel_benzvi_2004/` | Lattice vertex operators, locality axioms, cocycle factors, and OPE formulas. | `chE_m10`–`m11` |

---

### Wave 4: Groups, QFT Axioms, and Sprints 5–7

| # | Reference & BibKey | Target Directory (`../references/`) | Ingest Scope | Serves |
|---|---|---|---|---|
| 17 | **Hall, *Lie Groups, Lie Algebras, and Representations***<br>`Hall_Lie` | `hall_2015/` | Matrix Lie groups, Lie algebras, exponential map, Baker-Campbell-Hausdorff (BCH), $\mathfrak{su}(2)$, and representation theory (early chapters). | `chD_m01`–`m04` |
| 18 | **Weinberg vol. 1, *Quantum Theory of Fields***<br>`Weinberg_I` | `weinberg_1995/` | Wigner's theorem (unitary/antiunitary), Poincaré classification, and discrete symmetries $\mathcal{P, C, T}$ (Chs. 2, 5 **(U)**). | `chD_m05`–`m07`<br>`chF_m07` |
| 19 | **Streater-Wightman** & **Haag**<br>`StreaterWightman`, `Haag` | `streater_wightman_1964/`<br>`haag_1996/` | Wightman axioms and Haag-Kastler nets (algebraic QFT overview only). | `chF_m01`–`m02` |
| 20 | **Glimm-Jaffe, *Quantum Physics***<br>`GlimmJaffe` | `glimm_jaffe_1987/` | Free fields, Euclidean continuation, Osterwalder-Schrader axioms, and reconstruction theorem. | `chF_m03`–`m04`<br>`chF_m09` |
| 21 | **Mickelsson**<br>`CareyHurstOBrien` | `mickelsson_1989/` | Anomalies, Schwinger terms, and parity anomaly in operator language. | `chF_m08` |
| 22 | **Mross, Alicea, Motrunich (2015/2016)**<br>`Mross_MAM` | `mross_alicea_motrunich_2015/` | Full paper + Appendices A–H: wire array Dirac model, discrete symmetries, difference operators ($D, \Delta, S, P$), dual fermion, path-integral QED3 derivation. | Ch. 5, 6, 7 |
| 23 | **Son 2015**, **Seiberg et al. 2016**, **Metlitski-Vishwanath 2016**, **Wang-Senthil 2015**<br>`Son_2015`, `Seiberg_2016`, `MetlitskiVishwanath`, `WangSenthil` | `seiberg_et_al_2016/`<br>`son_2015/` | Dirac composite Fermi liquid ($\nu=1/2$), 2+1D duality web, and parent Hamiltonians for the T-Pfaffian state. | Ch. 8, Ch. 9 |

---

### Wave 5: Optional Pedagogical Companions (On Demand)
Do not ingest these systematically; consult only on demand for pedagogical tone or physical checks:
- **T. Giamarchi**, *Quantum Physics in One Dimension* (`giamarchi_2004/`)
- **R. Shankar**, *Quantum Field Theory and Condensed Matter* (`shankar_2017/`)
- **E. Fradkin**, *Field Theories of Condensed Matter Physics* (`fradkin_2013/`)
- **A. O. Gogolin, A. A. Nersesyan, A. M. Tsvelik**, *Bosonization and Strongly Correlated Systems* (`gogolin_et_al_1998/`)
- **M. Takesaki**, **R. Kadison & J. Ringrose**, **M. Schottenloher**, **K. Gawędzki**

---

## 3. Step-by-Step Protocol for the Librarian Agent

1. **Verify Section Numbers:** Read the edition's table of contents. Replace any **(U)** tag in the catalog with verified chapter/section numbers.
2. **Read & Extract:** Read the source text. Extract definitions, theorem statements, proof skeletons, and equation mappings. **Do not include full copyright-violating verbatim text blocks.**
3. **Format conventions:** Record the source's conventions side-by-side with ours (Miranda convention: $\psi \sim 1/\sqrt{L}$, normal ordering, $[\hat{x}, \hat{p}] = i\hbar$, Fourier sign). Convention drift is the primary source of bugs across modules.
4. **Write Slice:** Save the output in `../references/<author(s)>_<year>/ref_<module_id>_<short_topic>.md`.
5. **Update Catalog & Synchronize:**
   - In `workplace/refs/catalog.yaml`, update `status: INGESTED` and record the verified sections.
   - Commit the new slice into the `references` Git repository (`git add . && git commit -m "feat(ref): ingest <bibkey> for <module_id>"`).
