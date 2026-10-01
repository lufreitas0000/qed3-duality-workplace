# Chapter-Sliced Reference Library

> Canonical index of complete books that have been split into upload-friendly chapter PDFs. Page numbers are 1-based. “Print” is the number printed in the book; “physical PDF” is the page position used by PDF tools. Links are relative to this file (`workplace/refs/CHAPTER_SLICES_INDEX.md`).

## Library summary

| Book key | Book | Chapter units | Source format |
|---|---|---:|---|
| `reed_simon_v1` | Michael Reed and Barry Simon, *Methods of Modern Mathematical Physics, Vol. I: Functional Analysis* | 10 | Raster scan; one full-page image per PDF page; no embedded OCR text layer. |
| `reed_simon_v2` | Michael Reed and Barry Simon, *Methods of Modern Mathematical Physics, Vol. II: Fourier Analysis, Self-Adjointness* | 2 | Raster scan; one full-page image per PDF page; no embedded OCR text layer. |
| `difrancesco_1997` | Philippe Di Francesco, Pierre Mathieu, and David Sénéchal, *Conformal Field Theory* | 18 | TeX-composed book processed by CVISION PDF Compressor; searchable text/OCR layer with full-page images. |
| `stone_goldbart_2009` | Michael Stone and Paul Goldbart, *Mathematics for Physics: A Guided Tour for Graduate Students* | 21 | Modern searchable typeset PDF; embedded fonts and a small number of illustrations. |
| `tasaki_2020` | Hal Tasaki, *Physics and Mathematics of Quantum Many-Body Systems* | 13 | Modern born-digital InDesign PDF; searchable text, embedded fonts, and vector/raster illustrations. |
| `hall_2013` | Brian C. Hall, *Quantum Theory for Mathematicians* | 24 | Modern searchable typeset PDF, subsequently processed by CVISION PDF Compressor. |
| `senechal_tremblay_bourbonnais` | David Sénéchal, André-Marie Tremblay, and Claude Bourbonnais (editors), *Theoretical Methods for Strongly Correlated Electrons* | 8 | Born-digital TeX/DVI-to-PostScript production; searchable text with embedded fonts. |
| `kac_vertex_algebras` | Victor G. Kac, *Vertex Algebras for Beginners* | 5 | Raster scan; one full-page image per PDF page; no embedded OCR text layer. TOC was transcribed from the scanned pages. |
| `kac_infinite_dimensional_lie_algebras_1995` | Victor G. Kac, *Infinite-Dimensional Lie Algebras* | 14 | Hybrid older scan with searchable OCR text and embedded page images; legacy ITXT page-tree metadata is discarded safely during slicing. |
| `giamarchi_2004` | Thierry Giamarchi, *Quantum Physics in One Dimension* | 17 | DjVu page scan with a hidden OCR layer. Chapter PDFs were converted with DjVuLibre 3.5.28 and are raster PDFs. |

The chapter maps in [`chapter_maps/`](chapter_maps/) bind each plan to the source SHA-256 and total physical page count. Each chapter PDF has a neighboring `.meta.txt` sidecar containing its output checksum and provenance.

## Michael Reed and Barry Simon — *Methods of Modern Mathematical Physics, Vol. I: Functional Analysis*

- **Book key:** `reed_simon_v1`
- **Edition:** Revised and enlarged edition (1980)
- **Publisher:** Academic Press
- **Source:** `Reed Simons V1  Functional Analsys.pdf`
- **Document metadata:** Raster scan; one full-page image per PDF page; no embedded OCR text layer.
- **Chapter map:** [`reed_simon_v1.chapters.tsv`](chapter_maps/reed_simon_v1.chapters.tsv)

| Unit | Chapter or appendix | Print pages | Physical PDF pages | Chapter PDF |
|---:|---|---:|---:|---|
| 01 | Preliminaries | 1-35 | 13–47 | [`01_ch01_preliminaries_pdf013-047.pdf`](../../References-Full/_slices/reed_simon_v1/chapters/01_ch01_preliminaries_pdf013-047.pdf) |
| 02 | Hilbert Spaces | 36-66 | 48–78 | [`02_ch02_hilbert_spaces_pdf048-078.pdf`](../../References-Full/_slices/reed_simon_v1/chapters/02_ch02_hilbert_spaces_pdf048-078.pdf) |
| 03 | Banach Spaces | 67-89 | 79–101 | [`03_ch03_banach_spaces_pdf079-101.pdf`](../../References-Full/_slices/reed_simon_v1/chapters/03_ch03_banach_spaces_pdf079-101.pdf) |
| 04 | Topological Spaces | 90-123 | 102–135 | [`04_ch04_topological_spaces_pdf102-135.pdf`](../../References-Full/_slices/reed_simon_v1/chapters/04_ch04_topological_spaces_pdf102-135.pdf) |
| 05 | Locally Convex Spaces | 124-181 | 136–193 | [`05_ch05_locally_convex_spaces_pdf136-193.pdf`](../../References-Full/_slices/reed_simon_v1/chapters/05_ch05_locally_convex_spaces_pdf136-193.pdf) |
| 06 | Bounded Operators | 182-220 | 194–232 | [`06_ch06_bounded_operators_pdf194-232.pdf`](../../References-Full/_slices/reed_simon_v1/chapters/06_ch06_bounded_operators_pdf194-232.pdf) |
| 07 | The Spectral Theorem | 221-248 | 233–260 | [`07_ch07_spectral_theorem_pdf233-260.pdf`](../../References-Full/_slices/reed_simon_v1/chapters/07_ch07_spectral_theorem_pdf233-260.pdf) |
| 08 | Unbounded Operators | 249-317 | 261–329 | [`08_ch08_unbounded_operators_pdf261-329.pdf`](../../References-Full/_slices/reed_simon_v1/chapters/08_ch08_unbounded_operators_pdf261-329.pdf) |
| 09 | The Fourier Transform | 318-343 | 330–355 | [`09_ch09_fourier_transform_pdf330-355.pdf`](../../References-Full/_slices/reed_simon_v1/chapters/09_ch09_fourier_transform_pdf330-355.pdf) |
| 10 | Supplementary Material | 344-394 | 356–404 | [`10_supplement_supplementary_material_pdf356-404.pdf`](../../References-Full/_slices/reed_simon_v1/chapters/10_supplement_supplementary_material_pdf356-404.pdf) |

<details>
<summary><strong>Full contents, including sections</strong></summary>

### 01 — Preliminaries

- **1** Sets and functions — print p. 1
- **2** Metric and normed linear spaces — print p. 3
- **Appendix** Lim sup and lim inf — print p. 11
- **3** The Lebesgue integral — print p. 12
- **4** Abstract measure theory — print p. 19
- **5** Two convergence arguments — print p. 26
- **6** Equicontinuity — print p. 28
- **Notes** Notes — print p. 31
- **Problems** Problems — print p. 32

### 02 — Hilbert Spaces

- **1** The geometry of Hilbert space — print p. 36
- **2** The Riesz lemma — print p. 41
- **3** Orthonormal bases — print p. 44
- **4** Tensor products of Hilbert spaces — print p. 49
- **5** Ergodic theory: an introduction — print p. 54
- **Notes** Notes — print p. 60
- **Problems** Problems — print p. 63

### 03 — Banach Spaces

- **1** Definition and examples — print p. 67
- **2** Duals and double duals — print p. 72
- **3** The Hahn–Banach theorem — print p. 75
- **4** Operations on Banach spaces — print p. 78
- **5** The Baire category theorem and its consequences — print p. 79
- **Notes** Notes — print p. 84
- **Problems** Problems — print p. 86

### 04 — Topological Spaces

- **1** General notions — print p. 90
- **2** Nets and convergence — print p. 95
- **3** Compactness — print p. 97
- **Appendix** The Stone–Weierstrass theorem — print p. 103
- **4** Measure theory on compact spaces — print p. 104
- **5** Weak topologies on Banach spaces — print p. 111
- **Appendix** Weak and strong measurability — print p. 115
- **Notes** Notes — print p. 117
- **Problems** Problems — print p. 119

### 05 — Locally Convex Spaces

- **1** General properties — print p. 124
- **2** Fréchet spaces — print p. 131
- **3** Functions of rapid decrease and the tempered distributions — print p. 133
- **Appendix** The N-representation for S and S′ — print p. 141
- **4** Inductive limits: generalized functions and weak solutions of partial differential equations — print p. 145
- **5** Fixed point theorems — print p. 150
- **6** Applications of fixed point theorems — print p. 153
- **7** Topologies on locally convex spaces: duality theory and the strong dual topology — print p. 162
- **Appendix** Polars and the Mackey–Arens theorem — print p. 167
- **Notes** Notes — print p. 169
- **Problems** Problems — print p. 173

### 06 — Bounded Operators

- **1** Topologies on bounded operators — print p. 182
- **2** Adjoints — print p. 185
- **3** The spectrum — print p. 188
- **4** Positive operators and the polar decomposition — print p. 195
- **5** Compact operators — print p. 198
- **6** The trace class and Hilbert–Schmidt ideals — print p. 206
- **Notes** Notes — print p. 213
- **Problems** Problems — print p. 216

### 07 — The Spectral Theorem

- **1** The continuous functional calculus — print p. 221
- **2** The spectral measures — print p. 224
- **3** Spectral projections — print p. 234
- **4** Ergodic theory revisited: Koopmanism — print p. 237
- **Notes** Notes — print p. 243
- **Problems** Problems — print p. 245

### 08 — Unbounded Operators

- **1** Domains, graphs, adjoints, and spectrum — print p. 249
- **2** Symmetric and self-adjoint operators: the basic criterion for self-adjointness — print p. 255
- **3** The spectral theorem — print p. 259
- **4** Stone’s theorem — print p. 264
- **5** Formal manipulation is a touchy business: Nelson’s example — print p. 270
- **6** Quadratic forms — print p. 276
- **7** Convergence of unbounded operators — print p. 283
- **8** The Trotter product formula — print p. 295
- **9** The polar decomposition for closed operators — print p. 297
- **10** Tensor products — print p. 298
- **11** Three mathematical problems in quantum mechanics — print p. 302
- **Notes** Notes — print p. 305
- **Problems** Problems — print p. 312

### 09 — The Fourier Transform

- **1** The Fourier transform on S(Rⁿ) and S′(Rⁿ), convolutions — print p. 318
- **2** The range of the Fourier transform: Classical spaces — print p. 326
- **3** The range of the Fourier transform: Analyticity — print p. 332
- **Notes** Notes — print p. 338
- **Problems** Problems — print p. 339

### 10 — Supplementary Material

- **II.2** Applications of the Riesz lemma — print p. 344
- **III.1** Basic properties of Lᵖ spaces — print p. 348
- **IV.3** Proof of Tychonoff’s theorem — print p. 351
- **IV.4** The Riesz–Markov theorem for X = [0,1] — print p. 353
- **IV.5** Minimization of functionals — print p. 354
- **V.5** Proofs of some theorems in nonlinear functional analysis — print p. 363
- **VI.5** Applications of compact operators — print p. 368
- **VIII.7** Monotone convergence for forms — print p. 372
- **VIII.8** More on the Trotter product formula — print p. 377
- **Uses** Uses of the maximum principle — print p. 382
- **Notes** Notes — print p. 385
- **Problems** Problems — print p. 387

</details>

<details>
<summary><strong>Additional prepared PDF slices</strong></summary>

- [`frontmatter/reed_simon_v1_frontmatter_pdf001-040.pdf`](../../References-Full/_slices/reed_simon_v1/frontmatter/reed_simon_v1_frontmatter_pdf001-040.pdf)
- [`sections/chA_m01_banach_spaces_completeness_pp067-089_pdf078-102.pdf`](../../References-Full/_slices/reed_simon_v1/sections/chA_m01_banach_spaces_completeness_pp067-089_pdf078-102.pdf)
- [`sections/chA_m01_metric_normed_spaces_pp003-010_pdf014-023.pdf`](../../References-Full/_slices/reed_simon_v1/sections/chA_m01_metric_normed_spaces_pp003-010_pdf014-023.pdf)
- [`sections/chA_m01_topological_spaces_compactness_pp090-103_pdf101-116.pdf`](../../References-Full/_slices/reed_simon_v1/sections/chA_m01_topological_spaces_compactness_pp090-103_pdf101-116.pdf)
- [`sections/chA_m02_lebesgue_measure_convergence_pp012-030_pdf023-043.pdf`](../../References-Full/_slices/reed_simon_v1/sections/chA_m02_lebesgue_measure_convergence_pp012-030_pdf023-043.pdf)
- [`sections/chA_m02_lp_spaces_supplement_pp348-350_pdf359-363.pdf`](../../References-Full/_slices/reed_simon_v1/sections/chA_m02_lp_spaces_supplement_pp348-350_pdf359-363.pdf)
- [`sections/chA_m03_hilbert_riesz_onb_pp036-048_pdf047-061.pdf`](../../References-Full/_slices/reed_simon_v1/sections/chA_m03_hilbert_riesz_onb_pp036-048_pdf047-061.pdf)
- [`sections/chA_m04_tensor_products_hilbert_spaces_pp049-053_pdf060-066.pdf`](../../References-Full/_slices/reed_simon_v1/sections/chA_m04_tensor_products_hilbert_spaces_pp049-053_pdf060-066.pdf)
- [`sections/chA_m06_m07_schwartz_tempered_distributions_pp133-144_pdf144-157.pdf`](../../References-Full/_slices/reed_simon_v1/sections/chA_m06_m07_schwartz_tempered_distributions_pp133-144_pdf144-157.pdf)

</details>

## Michael Reed and Barry Simon — *Methods of Modern Mathematical Physics, Vol. II: Fourier Analysis, Self-Adjointness*

- **Book key:** `reed_simon_v2`
- **Edition:** 1975 edition
- **Publisher:** Academic Press
- **Source:** `Reed,Simon - V2 - Fourier Analisys and Self Adjointness.pdf`
- **Document metadata:** Raster scan; one full-page image per PDF page; no embedded OCR text layer.
- **Chapter map:** [`reed_simon_v2.chapters.tsv`](chapter_maps/reed_simon_v2.chapters.tsv)

| Unit | Chapter or appendix | Print pages | Physical PDF pages | Chapter PDF |
|---:|---|---:|---:|---|
| 01 | The Fourier Transform | 1-134 | 11–144 | [`01_ch09_fourier_transform_pdf011-144.pdf`](../../References-Full/_slices/reed_simon_v2/chapters/01_ch09_fourier_transform_pdf011-144.pdf) |
| 02 | Self-Adjointness and the Existence of Dynamics | 135-352 | 145–361 | [`02_ch10_self_adjointness_and_dynamics_pdf145-361.pdf`](../../References-Full/_slices/reed_simon_v2/chapters/02_ch10_self_adjointness_and_dynamics_pdf145-361.pdf) |

<details>
<summary><strong>Full contents, including sections</strong></summary>

### 01 — The Fourier Transform

- **1** The Fourier transform on S(Rⁿ) and S′(Rⁿ), convolutions — print p. 1
- **2** The range of the Fourier transform: Classical spaces — print p. 9
- **3** The range of the Fourier transform: Analyticity — print p. 15
- **4** Lᵖ estimates — print p. 27
- **Appendix** Abstract interpolation — print p. 32
- **5** Fundamental solutions of partial differential equations with constant coefficients — print p. 45
- **6** Elliptic regularity — print p. 49
- **7** The free Hamiltonian for nonrelativistic quantum mechanics — print p. 54
- **8** The Gårding–Wightman axioms — print p. 61
- **Appendix** Lorentz invariant measures — print p. 72
- **9** Restriction to submanifolds — print p. 76
- **10** Products of distributions, wave front sets, and oscillatory integrals — print p. 87
- **Notes** Notes — print p. 108
- **Problems** Problems — print p. 120
- **Guide** Reader’s Guide — print p. 133

### 02 — Self-Adjointness and the Existence of Dynamics

- **1** Extensions of symmetric operators — print p. 135
- **Appendix** Motion on a half-line, limit point–limit circle methods — print p. 146
- **2** Perturbations of self-adjoint operators — print p. 162
- **3** Positivity and self-adjointness I: Quadratic forms — print p. 176
- **4** Positivity and self-adjointness II: Pointwise positivity — print p. 182
- **5** The commutator theorem — print p. 191
- **6** Analytic vectors — print p. 200
- **7** Free quantum fields — print p. 207
- **Appendix** The Weyl relations for the free field — print p. 231
- **8** Semigroups and their generators — print p. 235
- **9** Hypercontractive semigroups — print p. 258
- **10** Graph limits — print p. 268
- **11** The Feynman–Kac formula — print p. 274
- **12** Time-dependent Hamiltonians — print p. 282
- **13** Classical nonlinear wave equations — print p. 293
- **14** The Hilbert space approach to classical mechanics — print p. 313
- **Notes** Notes — print p. 318
- **Problems** Problems — print p. 338
- **Guide** Reader’s Guide — print p. 349

</details>

<details>
<summary><strong>Additional prepared PDF slices</strong></summary>

- [`frontmatter/reed_simon_v2_frontmatter_pdf001-040.pdf`](../../References-Full/_slices/reed_simon_v2/frontmatter/reed_simon_v2_frontmatter_pdf001-040.pdf)
- [`sections/chA_m06_fourier_analyticity_pp015-026_pdf024-037.pdf`](../../References-Full/_slices/reed_simon_v2/sections/chA_m06_fourier_analyticity_pp015-026_pdf024-037.pdf)
- [`sections/chA_m06_fourier_classical_spaces_pp009-014_pdf018-025.pdf`](../../References-Full/_slices/reed_simon_v2/sections/chA_m06_fourier_classical_spaces_pp009-014_pdf018-025.pdf)
- [`sections/chA_m06_fourier_lp_estimates_pp027-044_pdf036-055.pdf`](../../References-Full/_slices/reed_simon_v2/sections/chA_m06_fourier_lp_estimates_pp027-044_pdf036-055.pdf)
- [`sections/chA_m06_m07_fourier_schwartz_distributions_pp001-008_pdf010-019.pdf`](../../References-Full/_slices/reed_simon_v2/sections/chA_m06_m07_fourier_schwartz_distributions_pp001-008_pdf010-019.pdf)

</details>

## Philippe Di Francesco, Pierre Mathieu, and David Sénéchal — *Conformal Field Theory*

- **Book key:** `difrancesco_1997`
- **Edition:** Softcover reprint of the 1997 first edition
- **Publisher:** Springer-Verlag
- **Source:** `Di Francesco-Conformal Field Theory(1997).pdf`
- **Document metadata:** TeX-composed book processed by CVISION PDF Compressor; searchable text/OCR layer with full-page images.
- **Chapter map:** [`difrancesco_1997.chapters.tsv`](chapter_maps/difrancesco_1997.chapters.tsv)

| Unit | Chapter or appendix | Print pages | Physical PDF pages | Chapter PDF |
|---:|---|---:|---:|---|
| 01 | Introduction | 3-14 | 22–33 | [`01_ch01_introduction_pdf022-033.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/01_ch01_introduction_pdf022-033.pdf) |
| 02 | Quantum Field Theory | 15-59 | 34–78 | [`02_ch02_quantum_field_theory_pdf034-078.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/02_ch02_quantum_field_theory_pdf034-078.pdf) |
| 03 | Statistical Mechanics | 60-94 | 79–112 | [`03_ch03_statistical_mechanics_pdf079-112.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/03_ch03_statistical_mechanics_pdf079-112.pdf) |
| 04 | Global Conformal Invariance | 95-110 | 113–128 | [`04_ch04_global_conformal_invariance_pdf113-128.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/04_ch04_global_conformal_invariance_pdf113-128.pdf) |
| 05 | Conformal Invariance in Two Dimensions | 111-149 | 129–167 | [`05_ch05_conformal_invariance_two_dimensions_pdf129-167.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/05_ch05_conformal_invariance_two_dimensions_pdf129-167.pdf) |
| 06 | Operator Formalism | 150-199 | 168–217 | [`06_ch06_operator_formalism_pdf168-217.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/06_ch06_operator_formalism_pdf168-217.pdf) |
| 07 | Minimal Models I | 200-238 | 218–256 | [`07_ch07_minimal_models_i_pdf218-256.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/07_ch07_minimal_models_i_pdf218-256.pdf) |
| 08 | Minimal Models II | 239-293 | 257–311 | [`08_ch08_minimal_models_ii_pdf257-311.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/08_ch08_minimal_models_ii_pdf257-311.pdf) |
| 09 | The Coulomb Gas Formalism | 294-334 | 312–352 | [`09_ch09_coulomb_gas_formalism_pdf312-352.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/09_ch09_coulomb_gas_formalism_pdf312-352.pdf) |
| 10 | Modular Invariance | 335-408 | 353–426 | [`10_ch10_modular_invariance_pdf353-426.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/10_ch10_modular_invariance_pdf353-426.pdf) |
| 11 | Finite-Size Scaling and Boundary Conformal Field Theory | 409-438 | 427–456 | [`11_ch11_finite_size_scaling_boundaries_pdf427-456.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/11_ch11_finite_size_scaling_boundaries_pdf427-456.pdf) |
| 12 | The Two-Dimensional Ising Model | 439-488 | 457–505 | [`12_ch12_two_dimensional_ising_model_pdf457-505.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/12_ch12_two_dimensional_ising_model_pdf457-505.pdf) |
| 13 | Simple Lie Algebras | 489-555 | 506–572 | [`13_ch13_simple_lie_algebras_pdf506-572.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/13_ch13_simple_lie_algebras_pdf506-572.pdf) |
| 14 | Affine Lie Algebras | 556-616 | 573–633 | [`14_ch14_affine_lie_algebras_pdf573-633.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/14_ch14_affine_lie_algebras_pdf573-633.pdf) |
| 15 | Wess–Zumino–Witten Models | 617-674 | 634–691 | [`15_ch15_wzw_models_pdf634-691.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/15_ch15_wzw_models_pdf634-691.pdf) |
| 16 | Fusion Rules in WZW Models | 675-718 | 692–735 | [`16_ch16_fusion_rules_wzw_models_pdf692-735.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/16_ch16_fusion_rules_wzw_models_pdf692-735.pdf) |
| 17 | Modular Invariants in WZW Models | 719-796 | 736–813 | [`17_ch17_modular_invariants_wzw_models_pdf736-813.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/17_ch17_modular_invariants_wzw_models_pdf736-813.pdf) |
| 18 | Coset Constructions | 797-860 | 814–876 | [`18_ch18_cosets_pdf814-876.pdf`](../../References-Full/_slices/difrancesco_1997/chapters/18_ch18_cosets_pdf814-876.pdf) |

<details>
<summary><strong>Full contents, including sections</strong></summary>

### 01 — Introduction

- **1** Introduction — print p. 5

### 02 — Quantum Field Theory

- **2.1** Quantum Fields — print p. 15
  - **2.1.1** The Free Boson — print p. 15
  - **2.1.2** The Free Fermion — print p. 21
- **2.2** Path Integrals — print p. 25
  - **2.2.1** System with One Degree of Freedom — print p. 25
  - **2.2.2** Path Integration for Quantum Fields — print p. 28
- **2.3** Correlation Functions — print p. 30
  - **2.3.1** System with One Degree of Freedom — print p. 30
  - **2.3.2** The Euclidian Formalism — print p. 31
  - **2.3.3** The Generating Functional — print p. 33
  - **2.3.4** Example: The Free Boson — print p. 33
  - **2.3.5** Wick's Theorem — print p. 35
- **2.4** Symmetries and Conservation Laws — print p. 36
  - **2.4.1** Continuous Symmetry Transformations — print p. 36
  - **2.4.2** Infinitesimal Transformations and Noether's Theorem — print p. 39
  - **2.4.3** Transformation of the Correlation Functions — print p. 42
  - **2.4.4** Ward Identities — print p. 43
- **2.5** The Energy-Momentum Tensor — print p. 45
  - **2.5.1** The Belinfante Tensor — print p. 46
  - **2.5.2** Alternate Definition of the Energy-Momentum Tensor — print p. 49
- **2.A** Gaussian Integrals — print p. 51
- **2.B** Grassmann Variables — print p. 52
- **2.C** Tetrads — print p. 56

### 03 — Statistical Mechanics

- **3.1** The Boltzmann Distribution — print p. 60
  - **3.1.1** Classical Statistical Models — print p. 62
  - **3.1.2** Quantum Statistics — print p. 66
- **3.2** Critical Phenomena — print p. 67
  - **3.2.1** Generalities — print p. 67
  - **3.2.2** Scaling — print p. 70
  - **3.2.3** Broken Symmetry — print p. 73
- **3.3** The Renormalization Group: Lattice Models — print p. 74
  - **3.3.1** Generalities — print p. 75
  - **3.3.2** The Ising Model on a Triangular Lattice — print p. 77
- **3.4** The Renormalization Group: Continuum Models — print p. 82
  - **3.4.1** Introduction — print p. 82
  - **3.4.2** Dimensional Analysis — print p. 84
  - **3.4.3** Beyond Dimensional Analysis: The cp4 Theory — print p. 86
- **3.5** The Transfer Matrix — print p. 87

### 04 — Global Conformal Invariance

- **4.1** The Conformal Group — print p. 95
- **4.2** Conformal Invariance in Classical Field Theory — print p. 99
  - **4.2.1** Representations of the Conformal Group in d Dimensions — print p. 99
  - **4.2.2** The Energy-Momentum Tensor — print p. 101
- **4.3** Conformal Invariance in Quantum Field Theory — print p. 104
  - **4.3.1** Correlation Functions — print p. 104
  - **4.3.2** Ward Identities — print p. 106
  - **4.3.3** Tracelessness of T/Lv in Two Dimensions — print p. 107

### 05 — Conformal Invariance in Two Dimensions

- **5.1** The Conformal Group in Two Dimensions — print p. 112
  - **5.1.1** Conformal Mappings — print p. 112
  - **5.1.2** Global Conformal Transformations — print p. 113
  - **5.1.3** Conformal Generators — print p. 114
  - **5.1.4** Primary Fields — print p. 115
  - **5.1.5** Correlation Functions — print p. 116
- **5.2** Ward Identities — print p. 118
  - **5.2.1** Holomorphic Form of the Ward Identities — print p. 118
  - **5.2.2** The Conformal Ward Identity — print p. 121
  - **5.2.3** Alternate Derivation of the Ward Identities — print p. 123
- **5.3** Free Fields and the Operator Product Expansion — print p. 127
  - **5.3.1** The Free Boson — print p. 128
  - **5.3.2** The Free Fermion — print p. 129
  - **5.3.3** The Ghost System — print p. 132
- **5.4** The Central Charge — print p. 135
  - **5.4.1** Transformation of the Energy-Momentum Tensor — print p. 136
  - **5.4.2** Physical Meaning of c — print p. 138
- **5.A** The Trace Anomaly — print p. 140
- **5.B** The Heat Kernel — print p. 145

### 06 — Operator Formalism

- **6** The Operator Formalism — print p. 150
- **6.1** The Operator Formalism of Conformal Field Theory — print p. 151
  - **6.1.1** Radial Quantization — print p. 151
  - **6.1.2** Radial Ordering and Operator Product Expansion — print p. 153
- **6.2** The Vrrasoro Algebra — print p. 155
  - **6.2.1** Conformal Generators — print p. 155
  - **6.2.2** The Hilbert Space — print p. 157
- **6.3** The Free Boson — print p. 159
  - **6.3.1** Canonical Quantization on the Cylinder — print p. 159
  - **6.3.2** Vertex Operators — print p. 161
  - **6.3.3** The Fock Space — print p. 163
  - **6.3.4** Twisted Boundary Conditions — print p. 164
  - **6.3.5** Compactified Boson — print p. 167
- **6.4** The Free Fermion — print p. 168
  - **6.4.1** Canonical Quantization on a Cylinder — print p. 168
  - **6.4.2** Mapping onto the Plane — print p. 169
  - **6.4.3** Vacuum Energies — print p. 171
- **6.5** Normal Ordering — print p. 173
- **6.6** Conformal Families and Operator Algebra — print p. 177
  - **6.6.1** Descendant Fields — print p. 177
  - **6.6.2** Conformal Families — print p. 178
  - **6.6.3** The Operator Algebra — print p. 180
  - **6.6.4** Conformal Blocks — print p. 183
  - **6.6.5** Crossing Symmetry and the Conformal Bootstrap — print p. 185
- **6.A** Vertex and Coherent States — print p. 187
- **6.B** The Generalized Wick Theorem — print p. 188
- **6.C** A Rearrangement Lemma — print p. 190
- **6.D** Summary of Important Formulas — print p. 192

### 07 — Minimal Models I

- **7.1** Verma Modules — print p. 200
  - **7.1.1** Highest-Weight Representations — print p. 201
  - **7.1.2** VlI'8Soro Characters — print p. 203
  - **7.1.3** Singular vectors and Reducible Verma Modules — print p. 204
- **7.2** The Kac Determinant — print p. 205
  - **7.2.1** Unitarity and the Kac Determinant — print p. 205
  - **7.2.2** Unitarity of c ~ 1 Representations — print p. 209
  - **7.2.3** Unitary c < 1 Representations — print p. 210
- **7.3** Overview of Minimal Models — print p. 211
  - **7.3.1** A Simple Example — print p. 211
  - **7.3.2** Truncation of the Operator Algebra — print p. 214
  - **7.3.3** Minimal Models — print p. 215
  - **7.3.4** Unitary Minimal Models — print p. 218
- **7.4** Examples — print p. 219
  - **7.4.1** The Yang-Lee Singularity — print p. 219
  - **7.4.2** The Ising Model — print p. 221
  - **7.4.3** The Tricritical Ising Model — print p. 222
  - **7.4.4** The Three-State Potts Model — print p. 225
  - **7.4.5** RSOS Models — print p. 227
  - **7.4.6** The O(n) Model — print p. 229
  - **7.4.7** Effective Landau-Ginzburg Description of Unitary Minimal Models — print p. 231

### 08 — Minimal Models II

- **8** Minimal Models n — print p. 239
- **8.1** Irreducible Modules and Minimal Characters — print p. 240
  - **8.1.1** The Structure of Reducible Verma Modules for Minimal Models — print p. 240
  - **8.1.2** Characters — print p. 242
- **8.2** Explicit Form of Singular Vectors — print p. 243
- **8.3** Differential Equations for the Correlation Functions — print p. 247
  - **8.3.1** From Singular Vectors to Differential Equations — print p. 247
  - **8.3.2** Differential Equations for Two-Point Functions in Minimal Models — print p. 250
  - **8.3.3** Differential Equations for Four-Point Functions in Minimal Models — print p. 252
- **8.4** Fusion Rules — print p. 255
  - **8.4.1** From Differential Equations to Fusion Rules — print p. 255
  - **8.4.2** Fusion Algebra — print p. 257
  - **8.4.3** Fusion Rules for the Minimal Models — print p. 259
- **8.A** General Singular Vectors from the Covariance of the OPE — print p. 265
  - **8.A.2** The Fusion Map F: Transferring the Action of Operators — print p. 271
  - **8.A.3** The Singular Vectors Ihr,s + rs): General Strategy — print p. 273
  - **8.A.4** The Leading Action of ~r.l — print p. 275
  - **8.A.5** Fusion at Work — print p. 278
  - **8.A.6** The Singular Vectors Ihr,s + rs): Summary — print p. 281

### 09 — The Coulomb Gas Formalism

- **9** The Coulomb-Gas FormaUsm — print p. 294
- **9.1** Vertex Operators — print p. 294
  - **9.1.1** Correlators of Vertex Operators — print p. 295
  - **9.1.2** The Neutrality Condition — print p. 297
  - **9.1.3** The Background Charge — print p. 298
  - **9.1.4** The Anomalous OPEs — print p. 300
- **9.2** Screening Operators — print p. 301
  - **9.2.1** Physical and Vertex Operators — print p. 301
  - **9.2.2** Minimal Models — print p. 303
  - **9.2.3** Four-Point Functions: Sample Correlators — print p. 306
- **9.3** Minimal Models: General Structure of Correlation Functions — print p. 314
  - **9.3.1** Conformal Blocks for the Four-Point Functions — print p. 314
  - **9.3.2** Conformal Blocks for the N-Point Function on the Plane — print p. 315
  - **9.3.3** Monodromy and Exchange Relations for Conformal Blocks — print p. 316
  - **9.3.4** Conformal Blocks for Correlators on a Surface of Arbitrary Genus — print p. 318
- **9.A** Calculation of the Energy-Momentum Tensor — print p. 319
- **9.B** Screened Vertex Operators and BRST Cohomology: A Proof of the Coulomb-Gas Representation of Minimal Models — print p. 320
  - **9.B.2** Screened Vertex Operators — print p. 323
  - **9.B.3** The BRST Charge — print p. 324
  - **9.B.4** BRST Invariance and Cohomology — print p. 325
  - **9.B.5** The Coulomb-Gas Representation — print p. 327

### 10 — Modular Invariance

- **10.1** Conformal Field Theory on the Torus — print p. 336
  - **10.1.1** The Partition Function — print p. 337
  - **10.1.2** Modular Invariance — print p. 338
  - **10.1.3** Generators and the Fundamental Domain — print p. 339
- **10.2** The Free Boson on the Torus — print p. 340
- **10.3** Free Fermions on the Torus — print p. 344
- **10.4** Models with c = 1 — print p. 349
  - **10.4.1** Compactified Boson — print p. 349
  - **10.4.2** Multi-Component Chiral Boson — print p. 352
  - **10.4.3** ~ Orbifold — print p. 354
- **10.5** Minimal Models: Modular Invariance and Operator Content — print p. 356
- **10.6** Minimal Models: Modular Transformations of the Characters — print p. 359
- **10.7** Minimal Models: Modular Invariant Partition Functions — print p. 364
  - **10.7.1** Diagonal Modular Invariants — print p. 365
  - **10.7.2** Nondiagonal Modular Invariants: Example of the Three-state Potts Model — print p. 365
  - **10.7.3** Block-Diagonal Modular Invariants — print p. 368
  - **10.7.4** Nondiagonal Modular Invariants Related to an Automorphism — print p. 370
  - **10.7.5** D Series from ~ Orbifolds — print p. 370
  - **10.7.6** The Classification of Minimal Models — print p. 372
- **10.8** Fusion Rules and Modular Invariance — print p. 374
  - **10.8.1** Verlinde's Formula for Minimal Theories — print p. 375
  - **10.8.2** Counting Conformal Blocks — print p. 376
  - **10.8.3** A General Proof of Verlinde's Formula — print p. 378
  - **10.8.4** Extended Symmetries and Fusion Rules — print p. 384
  - **10.8.5** Fusion Rules of the Extended Theory of the Three-State Potts Model — print p. 386
  - **10.8.6** A Simple Example of Nonminimal Extended Theory: The Free Boson at the Self-Dual Radius — print p. 388
  - **10.8.7** Rational Conformal Field Theory: A Definition — print p. 389
- **10.A** Theta Functions — print p. 390
  - **10.A.3** Dedekind's 11 Function — print p. 394
  - **10.A.4** Modular Transformations of Theta Functions — print p. 394
  - **10.A.5** Doubling Identities — print p. 395

### 11 — Finite-Size Scaling and Boundary Conformal Field Theory

- **11** Finite-Size Scaling and Boundaries — print p. 409
- **11.1** Conformal Invariance on a Cylinder — print p. 410
- **11.2** Surface Critical Behavior — print p. 413
  - **11.2.1** Conformal Field Theory on the Upper Half-Plane — print p. 413
  - **11.2.2** The Ising Model on the Upper Half-Plane — print p. 417
  - **11.2.3** The Infinite Strip — print p. 419
- **11.3** Boundary Operators — print p. 421
  - **11.3.1** Introduction — print p. 421
  - **11.3.2** Boundary States and the Verlinde Formula — print p. 422
- **11.4** Critical Percolation — print p. 427
  - **11.4.1** Statement of the Problem — print p. 427
  - **11.4.2** Bond Percolation and the Q-state Potts Model — print p. 429
  - **11.4.3** Boundary Operators and Crossing Probabilities — print p. 430

### 12 — The Two-Dimensional Ising Model

- **12.1** The Statistical Model — print p. 439
- **12.2** The Underlying Fennionic Theory — print p. 442
  - **12.2.1** Fennion: Energy and Energy-Momentum Tensor — print p. 443
  - **12.2.2** Spin — print p. 445
- **12.3** Correlation Functions on the Plane by Bosonization — print p. 447
  - **12.3.1** The Bosonization Rules — print p. 447
  - **12.3.2** Energy Correlators — print p. 448
  - **12.3.3** Spin and General Correlators — print p. 450
- **12.4** The Ising Model on the Torus — print p. 453
  - **12.4.1** The Partition Function — print p. 454
  - **12.4.2** General Ward Identities on the Torus — print p. 455
- **12.5** Correlation Functions on the Torus — print p. 457
  - **12.5.1** Fennion and Energy Correlators — print p. 457
  - **12.5.2** Spin and Disorder-Field Correlators — print p. 459
- **12.6** Bosonization on the Torus — print p. 464
  - **12.6.1** The Two Bosonizations of the Ising Model: Partition Functions and Operators — print p. 464
  - **12.6.2** Compactified Boson Correlations on the Plane and on the Torus — print p. 466
  - **12.6.3** Ising Correlators from the Bosonization of the Dirac Fennion — print p. 471
  - **12.6.4** Ising Correlators from the Bosonization of Two Real Fennions — print p. 475
- **12.A** Elliptic and Theta Function Identities — print p. 477
  - **12.A.2** Periodicity and Zeros of the Jacobi Theta Functions — print p. 478
  - **12.A.3** Doubling Identities — print p. 479

### 13 — Simple Lie Algebras

- **13.1** The Structure of Simple Lie Algebras — print p. 490
  - **13.1.1** The Cartan-Weyl Basis — print p. 490
  - **13.1.2** The Killing Form — print p. 492
  - **13.1.3** Weights — print p. 494
  - **13.1.4** Simple Roots and the Cartan Matrix — print p. 495
  - **13.1.5** The Chevalley Basis — print p. 497
  - **13.1.6** Dynkin Diagrams — print p. 497
  - **13.1.7** Fundamental Weights — print p. 498
  - **13.1.8** The Weyl Group — print p. 500
  - **13.1.9** Lattices — print p. 502
  - **13.1.10** Normalization Convention — print p. 503
  - **13.1.11** Examples — print p. 504
- **13.2** Highest-Weight Representations — print p. 508
  - **13.2.1** Weights and Their Multiplicities — print p. 508
  - **13.2.2** Conjugate Representations — print p. 510
  - **13.2.3** Quadratic Casimir Operator — print p. 511
  - **13.2.4** Index of a Representation — print p. 512
- **13.3** Tableaux and Patterns (su(N» — print p. 513
  - **13.3.1** Young Tableaux — print p. 513
  - **13.3.2** Partitions and Orthonormal Bases — print p. 514
  - **13.3.3** Semistandard Tableaux — print p. 515
  - **13.3.4** Gelfand-Tsetlin Patterns — print p. 516
- **13.4** Characters — print p. 517
  - **13.4.1** Weyl's Character Formula — print p. 517
  - **13.4.2** The Dimension and the Strange Formulae — print p. 519
  - **13.4.3** Schur Functions — print p. 521
- **13.5** Tensor Products: Computational Tools — print p. 522
  - **13.5.1** The Character Method — print p. 523
  - **13.5.2** Algorithm for the Calculation of Tensor Products — print p. 524
  - **13.5.3** The Littlewood-Richardson Rule — print p. 526
  - **13.5.4** Berenstein-Zelevinsky Triangles — print p. 528
- **13.6** Tensor Products: A Fusion-Rule Point of View — print p. 531
- **13.7** Algebra Embeddings and Branching Rules — print p. 534
  - **13.7.1** Embedding Index — print p. 534
  - **13.7.2** Classification of Embeddings — print p. 537
- **13.A** Properties of Simple Lie Algebras — print p. 540
- **13.B** Notation for Simple Lie Algebras — print p. 546

### 14 — Affine Lie Algebras

- **14.1** The Structure of Affine Lie Algebras — print p. 557
  - **14.1.1** From Simple Lie Algebras to Affine Lie Algebras — print p. 557
  - **14.1.2** The Killing Form — print p. 559
  - **14.1.3** Simple Roots, the Cartan Matrix and Dynkin Diagrams — print p. 561
  - **14.1.4** The Chevalley Basis — print p. 564
  - **14.1.5** Fundamental Weights — print p. 564
  - **14.1.6** The Affine Weyl Group — print p. 566
  - **14.1.7** Examples — print p. 568
- **14.2** Outer Automorphisms — print p. 571
  - **14.2.1** Symmetry of the Extended Diagram and Group of Outer Automorphisms — print p. 571
  - **14.2.2** Action of Outer Automorphisms on Weights — print p. 572
  - **14.2.3** Relation with the Center of the Group — print p. 574
- **14.3** Highest-Weight Representations — print p. 575
  - **14.3.1** Integrable Highest-Weight Representations — print p. 576
  - **14.3.2** The Basic Representation of 5u(2)1 — print p. 579
  - **14.3.3** String Functions — print p. 579
- **14.4** Characters — print p. 581
  - **14.4.1** Weyl-Kac Character Formula — print p. 581
  - **14.4.2** The SU(2)k Characters — print p. 585
  - **14.4.3** Characters of Heisenberg Algebra Modules — print p. 586
  - **14.4.4** The "(1) Characters Associated with the Free Boson on a Circle of Rational Square Radius — print p. 587
- **14.5** Modular Transformations — print p. 591
- **14.6** Properties of the Modular S Matrix — print p. 592
  - **14.6.1** The S Matrix and the Charge Conjugation Matrix — print p. 592
  - **14.6.2** The S Matrix and the Asymptotic Form of Characters — print p. 593
  - **14.6.3** The S Matrix and Finite Characters — print p. 595
  - **14.6.4** Outer Automorphisms and the Modular S Matrix — print p. 595
- **14.7** Affine Embeddings — print p. 596
  - **14.7.1** Level of the Embedded Algebra — print p. 596
  - **14.7.2** Affine Branching Rules — print p. 597
  - **14.7.3** Branching of Outer Automorphism Groups — print p. 599
- **14.A** A Technical Identity — print p. 601
- **14.B** Modular Transformation Properties of Affine Characters — print p. 602
- **14.C** Paths as a Basis of States — print p. 608
  - **14.C.2** 5U(N)1 Paths — print p. 609
- **14.D** Notation for Affine Lie Algebras — print p. 611

### 15 — Wess–Zumino–Witten Models

- **15** WZW Models — print p. 617
- **15.1** Introducing WZW Models — print p. 617
  - **15.1.1** Nonlinear Sigma Models — print p. 617
  - **15.1.2** Wess-Zumino-Witten Models — print p. 619
  - **15.1.3** Ward Identity and Affine Lie Algebras — print p. 622
- **15.2** The Sugawara Construction — print p. 624
- **15.3** WZW Primary Fields — print p. 628
  - **15.3.1** Primary Fields as Covariant Fields — print p. 628
  - **15.3.2** The Knizhnik-Zamolodchikov Equation — print p. 631
  - **15.3.3** Primary Fields as Highest-Weight States — print p. 633
  - **15.3.4** Affine Lie Algebra Singular Vectors — print p. 634
  - **15.3.5** WZW Models as Rational Conformal Field Theories — print p. 636
- **15.4** Four-Point Functions and the Knizhnik-Zamolodchikov Equation — print p. 638
  - **15.4.1** Introductory Comments — print p. 639
  - **15.4.2** The Four-Point SU(N)k Knizhnik-Zamolodchikov Equation — print p. 641
  - **15.4.3** The Crossing-Symmetry Constraint — print p. 644
- **15.5** Free-Fermion Representations — print p. 646
  - **15.5.1** Free-Field Representations and Quantum Equivalence — print p. 646
  - **15.5.2** The SO(N)1 Current Algebra From Real Free Fermions — print p. 647
  - **15.5.3** Description of the SO(N)1 Primary Fields — print p. 649
  - **15.5.4** SO(N)1 Characters — print p. 650
  - **15.5.5** so(N) Representations at Higher Levels — print p. 651
  - **15.5.6** Complex Free-Fermion Representations: U(N)k — print p. 652
- **15.6** Vertex Representations — print p. 653
  - **15.6.1** Thesu(2)1 Case — print p. 653
  - **15.6.2** Fock Construction of the SU(2)1 Integrable Modules — print p. 655
  - **15.6.3** Generalization: Vertex Representations of Simply-Laced Algebras at Level 1 — print p. 657
- **15.7** The Wakimoto Free-Field Representation — print p. 660
  - **15.7.1** From the su(2) Monomial Representation to the Affine Case — print p. 660
  - **15.7.2** SU(2)k Primary Fields — print p. 663
  - **15.7.3** Calculation of Correlation Functions — print p. 664
  - **15.7.4** Wakimoto Representation for SU(3)k — print p. 665
  - **15.7.5** Generalization — print p. 667
- **15.A** Normalization of the Wess-Zumino Term — print p. 668

### 16 — Fusion Rules in WZW Models

- **16.1** Symmetries of Fusion Coefficients — print p. 676
- **16.2** Fusion Rules Using the Affine Weyl Group — print p. 679
  - **16.2.1** The Kac-Walton Formula — print p. 679
  - **16.2.2** Algorithm for Fusion Rules — print p. 681
  - **16.2.3** The SU(2)k Fusion Coefficients — print p. 684
  - **16.2.4** SU(N)k Fusion Rules: Combinatorial Description — print p. 684
- **16.3** Quantum Dimensions — print p. 686
- **16.4** The Depth Rule and Threshold Levels — print p. 689
  - **16.4.1** The Depth Rule — print p. 689
- **16.5** Fusion Potentials (su(N» — print p. 695
  - **16.5.1** Tensor-Product Coefficients Revisited — print p. 695
  - **16.5.2** Level Truncation in the Determinant Method — print p. 697
  - **16.5.3** The Constraint-Generating Function — print p. 699
- **16.6** Level-Rank Duality — print p. 702
- **16.A** Fusion Elementary Couplings in su(N) — print p. 707

### 17 — Modular Invariants in WZW Models

- **17.1** Modular Invariance in WZW Models — print p. 721
  - **17.1.1** The Construction of Modular-Invariant Partition Functions — print p. 721
  - **17.1.2** Diagonal Modular Invariants — print p. 722
  - **17.1.3** The Search for New Modular Invariants — print p. 723
- **17.2** A Simple Nondiagonal Modular Invariant — print p. 723
- **17.3** Modular Invariants Using Outer Automorphisms — print p. 726
  - **17.3.1** The General Construction — print p. 726
  - **17.3.2** Constraints on the Partition Function — print p. 730
  - **17.3.3** su(2) Modular Invariants by Outer Automorphisms — print p. 731
- **17.4** The SU(2)4 Nondiagonal Invariant Revisited — print p. 732
- **17.5** Conformal Embeddings — print p. 733
  - **17.5.1** Conformally Invariant Embeddings — print p. 733
  - **17.5.2** Conformal Branching Rules — print p. 735
- **17.6** Modular Invariants From Conformal Embeddings — print p. 739
- **17.7** Some Classification Results — print p. 741
  - **17.7.1** The ADE Classification of the su(2) Modular Invariants — print p. 741
  - **17.7.2** The Classification of the su(3) Modular Invariants — print p. 743
- **17.8** Permutation Invariants and Extended Chiral Algebras — print p. 744
- **17.9** Galois Symmetry — print p. 749
  - **17.9.1** Galois Transformations on S Matrices — print p. 749
  - **17.9.2** The Parity Rule — print p. 751
  - **17.9.3** Modular Invariants From Galois Symmetry — print p. 752
  - **17.9.4** Galois Permutation Invariants — print p. 754
- **17.10** Modular Invariants. Generalized ADE Diagrams and Fusion Rules — print p. 756
  - **17.10.1** Graph Algebra — print p. 756
  - **17.10.2** Positivity Constraints on Fusion Coefficients — print p. 758
  - **17.10.3** Graph Subalgebra and Extended ADE Fusion Rules — print p. 759
  - **17.10.4** Generalized ADE Diagrams for su(3) — print p. 764
  - **17.10.5** Graph Subalgebras and Modular Invariants for su(3) — print p. 766
- **17.A** su(P)q E9 su(q)p c su(pq). Branching Rules — print p. 770
- **17.B** General Orbifolds: Fine Structure of the c = 1 Models — print p. 774
  - **17.B.2** Orbifolds and the Method of Outer Automorphisms — print p. 776
  - **17.B.3** ~ Orbifoldofthec = 1 su(2). Theory — print p. 777
  - **17.B.4** Quotienting by Subgroups of SU(2) — print p. 778
  - **17.B.5** The Finite Subgroups of SU(2) andA,b,E — print p. 780
  - **17.B.6** Operator Content of the c = 1 Theories — print p. 782

### 18 — Coset Constructions

- **18** Cosets — print p. 797
- **18.1** The Coset Construction — print p. 799
- **18.2** Branching Functions and Characters — print p. 801
  - **18.2.1** Field Identifications and Selection Rules — print p. 801
  - **18.2.2** Fixed Points and Their Resolutions — print p. 803
  - **18.2.3** Maverick Cosets — print p. 803
  - **18.2.4** Modular Transformation Properties of Coset Characters — print p. 804
  - **18.2.5** Modular Invariants — print p. 806
- **18.3** Coset Description of Unitary Minimal Models — print p. 807
  - **18.3.1** Character Decomposition — print p. 808
  - **18.3.2** Modular S Matrix — print p. 811
  - **18.3.3** Fusion Rules — print p. 812
  - **18.3.4** Modular Invariants — print p. 813
- **18.4** Other Coset Representations of Minimal Models — print p. 813
  - **18.4.1** The Es Formulation of the Ising Model — print p. 814
  - **18.4.2** The su(3) Formulation of the Three-State Potts Model — print p. 814
- **18.5** The CosetSU(2)k!U(I) and Parafermions — print p. 817
  - **18.5.1** Character Decomposition and String Functions — print p. 817
  - **18.5.2** A Few Special Cases — print p. 820
  - **18.5.3** Parafermions — print p. 823
  - **18.5.4** Parafermionic Formulation of the General su(2) Diagonal Cosets — print p. 824
- **18.6** Conformal Theories With Fractional su(2) Spectrumgenerating Algebra — print p. 826
  - **18.6.1** Admissible Representations of SU(2)k — print p. 827
  - **18.6.2** Character of Admissible Representations — print p. 828
  - **18.6.3** Modular Covariance of Admissible Representations — print p. 830
  - **18.6.4** Charge Conjugation — print p. 831
  - **18.6.5** Fusion Rules — print p. 832
- **18.7** Coset Description of Nonunitary Minimal Models — print p. 833
  - **18.7.1** The Coset Description of the Yang-Lee Model — print p. 834
  - **18.7.2** Field Identification in the Nonunitary Case — print p. 835
  - **18.7.3** Character Decomposition, Modular Matrices, and Modular Invariants — print p. 837
- **18.A** Lie-Algebraic Structure of the Vrrasoro Singular Vectors — print p. 837
- **18.B** Affine Lie Algebras at Fractional Levels and General Nonunitary Coset Models — print p. 840
  - **18.B.2** Modular Properties of Characters for Admissible Representations — print p. 844
  - **18.B.3** Charge Conjugation and the Associated Weyl Group — print p. 844
  - **18.B.4** Nonunitary Diagonal Coset Models — print p. 845

</details>

<details>
<summary><strong>Additional prepared PDF slices</strong></summary>

- [`frontmatter/difrancesco_1997_frontmatter_pdf001-024.pdf`](../../References-Full/_slices/difrancesco_1997/frontmatter/difrancesco_1997_frontmatter_pdf001-024.pdf)
- [`sections/chA_m08_m10_theta_jacobi_poisson_pp390-408_pdf407-427.pdf`](../../References-Full/_slices/difrancesco_1997/sections/chA_m08_m10_theta_jacobi_poisson_pp390-408_pdf407-427.pdf)
- [`sections/chA_m10_elliptic_theta_identities_pp477-488_pdf494-507.pdf`](../../References-Full/_slices/difrancesco_1997/sections/chA_m10_elliptic_theta_identities_pp477-488_pdf494-507.pdf)

</details>

## Michael Stone and Paul Goldbart — *Mathematics for Physics: A Guided Tour for Graduate Students*

- **Book key:** `stone_goldbart_2009`
- **Edition:** 2009
- **Publisher:** Cambridge University Press
- **Source:** `Michael Stone, Paul Goldbart - Mathematics for physics_ a guided tour for graduate students (2009).pdf`
- **Document metadata:** Modern searchable typeset PDF; embedded fonts and a small number of illustrations.
- **Chapter map:** [`stone_goldbart_2009.chapters.tsv`](chapter_maps/stone_goldbart_2009.chapters.tsv)

| Unit | Chapter or appendix | Print pages | Physical PDF pages | Chapter PDF |
|---:|---|---:|---:|---|
| 01 | Calculus of Variations | 1-49 | 15–63 | [`01_ch01_calculus_of_variations_pdf015-063.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/01_ch01_calculus_of_variations_pdf015-063.pdf) |
| 02 | Function Spaces | 50-85 | 64–99 | [`02_ch02_function_spaces_pdf064-099.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/02_ch02_function_spaces_pdf064-099.pdf) |
| 03 | Linear Ordinary Differential Equations | 86-100 | 100–114 | [`03_ch03_linear_ordinary_differential_equations_pdf100-114.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/03_ch03_linear_ordinary_differential_equations_pdf100-114.pdf) |
| 04 | Linear Differential Operators | 101-139 | 115–153 | [`04_ch04_linear_differential_operators_pdf115-153.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/04_ch04_linear_differential_operators_pdf115-153.pdf) |
| 05 | Green Functions | 140-173 | 154–187 | [`05_ch05_green_functions_pdf154-187.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/05_ch05_green_functions_pdf154-187.pdf) |
| 06 | Partial Differential Equations | 174-230 | 188–244 | [`06_ch06_partial_differential_equations_pdf188-244.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/06_ch06_partial_differential_equations_pdf188-244.pdf) |
| 07 | The Mathematics of Real Waves | 231-263 | 245–277 | [`07_ch07_mathematics_of_real_waves_pdf245-277.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/07_ch07_mathematics_of_real_waves_pdf245-277.pdf) |
| 08 | Special Functions | 264-310 | 278–324 | [`08_ch08_special_functions_pdf278-324.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/08_ch08_special_functions_pdf278-324.pdf) |
| 09 | Integral Equations | 311-346 | 325–360 | [`09_ch09_integral_equations_pdf325-360.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/09_ch09_integral_equations_pdf325-360.pdf) |
| 10 | Vectors and Tensors | 347-375 | 361–389 | [`10_ch10_vectors_and_tensors_pdf361-389.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/10_ch10_vectors_and_tensors_pdf361-389.pdf) |
| 11 | Differential Calculus on Manifolds | 376-413 | 390–427 | [`11_ch11_differential_calculus_on_manifolds_pdf390-427.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/11_ch11_differential_calculus_on_manifolds_pdf390-427.pdf) |
| 12 | Integration on Manifolds | 414-448 | 428–462 | [`12_ch12_integration_on_manifolds_pdf428-462.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/12_ch12_integration_on_manifolds_pdf428-462.pdf) |
| 13 | An Introduction to Differential Topology | 449-497 | 463–511 | [`13_ch13_introduction_to_differential_topology_pdf463-511.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/13_ch13_introduction_to_differential_topology_pdf463-511.pdf) |
| 14 | Groups and Group Representations | 498-529 | 512–543 | [`14_ch14_groups_and_group_representations_pdf512-543.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/14_ch14_groups_and_group_representations_pdf512-543.pdf) |
| 15 | Lie Groups | 530-575 | 544–589 | [`15_ch15_lie_groups_pdf544-589.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/15_ch15_lie_groups_pdf544-589.pdf) |
| 16 | The Geometry of Fibre Bundles | 576-605 | 590–619 | [`16_ch16_geometry_of_fibre_bundles_pdf590-619.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/16_ch16_geometry_of_fibre_bundles_pdf590-619.pdf) |
| 17 | Complex Analysis | 606-665 | 620–679 | [`17_ch17_complex_analysis_pdf620-679.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/17_ch17_complex_analysis_pdf620-679.pdf) |
| 18 | Applications of Complex Variables | 666-705 | 680–719 | [`18_ch18_applications_of_complex_variables_pdf680-719.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/18_ch18_applications_of_complex_variables_pdf680-719.pdf) |
| 19 | Special Functions and Complex Variables | 706-743 | 720–757 | [`19_ch19_special_functions_and_complex_variables_pdf720-757.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/19_ch19_special_functions_and_complex_variables_pdf720-757.pdf) |
| 20 | Appendix A: Linear Algebra Review | 744-778 | 758–792 | [`20_appendix_a_linear_algebra_review_pdf758-792.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/20_appendix_a_linear_algebra_review_pdf758-792.pdf) |
| 21 | Appendix B: Fourier Series and Integrals | 779-796 | 793–810 | [`21_appendix_b_fourier_series_and_integrals_pdf793-810.pdf`](../../References-Full/_slices/stone_goldbart_2009/chapters/21_appendix_b_fourier_series_and_integrals_pdf793-810.pdf) |

<details>
<summary><strong>Full contents, including sections</strong></summary>

### 01 — Calculus of Variations

- **1.1** What is it good for? — print p. 1
- **1.2** Functionals — print p. 1
- **1.3** Lagrangian mechanics — print p. 10
- **1.4** Variable endpoints — print p. 27
- **1.5** Lagrange multipliers — print p. 32
- **1.6** Maximum or minimum? — print p. 36
- **1.7** Further exercises and problems — print p. 38

### 02 — Function Spaces

- **2.1** Motivation — print p. 50
- **2.2** Norms and inner products — print p. 51
- **2.3** Linear operators and distributions — print p. 66
- **2.4** Further exercises and problems — print p. 76

### 03 — Linear Ordinary Differential Equations

- **3.1** Existence and uniqueness of solutions — print p. 86
- **3.2** Normal form — print p. 93
- **3.3** Inhomogeneous equations — print p. 94
- **3.4** Singular points — print p. 97
- **3.5** Further exercises and problems — print p. 98

### 04 — Linear Differential Operators

- **4.1** Formal vs. concrete operators — print p. 101
- **4.2** The adjoint operator — print p. 104
- **4.3** Completeness of eigenfunctions — print p. 117
- **4.4** Further exercises and problems — print p. 132

### 05 — Green Functions

- **5.1** Inhomogeneous linear equations — print p. 140
- **5.2** Constructing Green functions — print p. 141
- **5.3** Applications of Lagrange’s identity — print p. 150
- **5.4** Eigenfunction expansions — print p. 153
- **5.5** Analytic properties of Green functions — print p. 155
- **5.6** Locality and the Gelfand–Dikii equation — print p. 165
- **5.7** Further exercises and problems — print p. 167

### 06 — Partial Differential Equations

- **6.1** Classification of PDEs — print p. 174
- **6.2** Cauchy data — print p. 176
- **6.3** Wave equation — print p. 181
- **6.4** Heat equation — print p. 196
- **6.5** Potential theory — print p. 201
- **6.6** Further exercises and problems — print p. 224

### 07 — The Mathematics of Real Waves

- **7.1** Dispersive waves — print p. 231
- **7.2** Making waves — print p. 242
- **7.3** Nonlinear waves — print p. 246
- **7.4** Solitons — print p. 255
- **7.5** Further exercises and problems — print p. 260

### 08 — Special Functions

- **8.1** Curvilinear coordinates — print p. 264
- **8.2** Spherical harmonics — print p. 270
- **8.3** Bessel functions — print p. 278
- **8.4** Singular endpoints — print p. 298
- **8.5** Further exercises and problems — print p. 305

### 09 — Integral Equations

- **9.1** Illustrations — print p. 311
- **9.2** Classification of integral equations — print p. 312
- **9.3** Integral transforms — print p. 313
- **9.4** Separable kernels — print p. 321
- **9.5** Singular integral equations — print p. 323
- **9.6** Wiener–Hopf equations I — print p. 327
- **9.7** Some functional analysis — print p. 332
- **9.8** Series solutions — print p. 338
- **9.9** Further exercises and problems — print p. 342

### 10 — Vectors and Tensors

- **10.1** Covariant and contravariant vectors — print p. 347
- **10.2** Tensors — print p. 350
- **10.3** Cartesian tensors — print p. 362
- **10.4** Further exercises and problems — print p. 372

### 11 — Differential Calculus on Manifolds

- **11.1** Vector and covector fields — print p. 376
- **11.2** Differentiating tensors — print p. 381
- **11.3** Exterior calculus — print p. 389
- **11.4** Physical applications — print p. 395
- **11.5** Covariant derivatives — print p. 403
- **11.6** Further exercises and problems — print p. 409

### 12 — Integration on Manifolds

- **12.1** Basic notions — print p. 414
- **12.2** Integrating p-forms — print p. 417
- **12.3** Stokes’ theorem — print p. 422
- **12.4** Applications — print p. 424
- **12.5** Further exercises and problems — print p. 440

### 13 — An Introduction to Differential Topology

- **13.1** Homeomorphism and diffeomorphism — print p. 449
- **13.2** Cohomology — print p. 450
- **13.3** Homology — print p. 455
- **13.4** De Rham’s theorem — print p. 469
- **13.5** Poincaré duality — print p. 473
- **13.6** Characteristic classes — print p. 477
- **13.7** Hodge theory and the Morse index — print p. 483
- **13.8** Further exercises and problems — print p. 496

### 14 — Groups and Group Representations

- **14.1** Basic ideas — print p. 498
- **14.2** Representations — print p. 505
- **14.3** Physics applications — print p. 517
- **14.4** Further exercises and problems — print p. 525

### 15 — Lie Groups

- **15.1** Matrix groups — print p. 530
- **15.2** Geometry of SU(2) — print p. 535
- **15.3** Lie algebras — print p. 555
- **15.4** Further exercises and problems — print p. 572

### 16 — The Geometry of Fibre Bundles

- **16.1** Fibre bundles — print p. 576
- **16.2** Physics examples — print p. 577
- **16.3** Working in the total space — print p. 591

### 17 — Complex Analysis

- **17.1** Cauchy–Riemann equations — print p. 606
- **17.2** Complex integration: Cauchy and Stokes — print p. 616
- **17.3** Applications — print p. 624
- **17.4** Applications of Cauchy’s theorem — print p. 630
- **17.5** Meromorphic functions and the winding number — print p. 644
- **17.6** Analytic functions and topology — print p. 647
- **17.7** Further exercises and problems — print p. 661

### 18 — Applications of Complex Variables

- **18.1** Contour integration technology — print p. 666
- **18.2** The Schwarz reflection principle — print p. 676
- **18.3** Partial-fraction and product expansions — print p. 687
- **18.4** Wiener–Hopf equations II — print p. 692
- **18.5** Further exercises and problems — print p. 701

### 19 — Special Functions and Complex Variables

- **19.1** The Gamma function — print p. 706
- **19.2** Linear differential equations — print p. 711
- **19.3** Solving ODEs via contour integrals — print p. 718
- **19.4** Asymptotic expansions — print p. 725
- **19.5** Elliptic functions — print p. 735
- **19.6** Further exercises and problems — print p. 741

### 20 — Appendix A: Linear Algebra Review

- **A.1** Vector space — print p. 744
- **A.2** Linear maps — print p. 746
- **A.3** Inner-product spaces — print p. 749
- **A.4** Sums and differences of vector spaces — print p. 754
- **A.5** Inhomogeneous linear equations — print p. 757
- **A.6** Determinants — print p. 759
- **A.7** Diagonalization and canonical forms — print p. 766

### 21 — Appendix B: Fourier Series and Integrals

- **B.1** Fourier series — print p. 779
- **B.2** Fourier integral transforms — print p. 783
- **B.3** Convolution — print p. 786
- **B.4** The Poisson summation formula — print p. 792

</details>

## Hal Tasaki — *Physics and Mathematics of Quantum Many-Body Systems*

- **Book key:** `tasaki_2020`
- **Edition:** 2020
- **Publisher:** Springer
- **Source:** `Hal Tasaki - Physics and Mathematics of Quantum Many-Body Systems-Springer Nature (2020) (1).pdf`
- **Document metadata:** Modern born-digital InDesign PDF; searchable text, embedded fonts, and vector/raster illustrations.
- **Chapter map:** [`tasaki_2020.chapters.tsv`](chapter_maps/tasaki_2020.chapters.tsv)

| Unit | Chapter or appendix | Print pages | Physical PDF pages | Chapter PDF |
|---:|---|---:|---:|---|
| 01 | Introduction | 1-11 | 17–27 | [`01_ch01_introduction_pdf017-027.pdf`](../../References-Full/_slices/tasaki_2020/chapters/01_ch01_introduction_pdf017-027.pdf) |
| 02 | Basics of Quantum Spin Systems | 13-45 | 28–60 | [`02_ch02_basics_of_quantum_spin_systems_pdf028-060.pdf`](../../References-Full/_slices/tasaki_2020/chapters/02_ch02_basics_of_quantum_spin_systems_pdf028-060.pdf) |
| 03 | Long-Range Order and Spontaneous Symmetry Breaking in the Classical and Quantum Ising Models | 49-71 | 63–85 | [`03_ch03_long_range_order_ising_models_pdf063-085.pdf`](../../References-Full/_slices/tasaki_2020/chapters/03_ch03_long_range_order_ising_models_pdf063-085.pdf) |
| 04 | Long-Range Order and Spontaneous Symmetry Breaking in the Antiferromagnetic Heisenberg Model | 73-134 | 86–147 | [`04_ch04_long_range_order_antiferromagnetic_heisenberg_model_pdf086-147.pdf`](../../References-Full/_slices/tasaki_2020/chapters/04_ch04_long_range_order_antiferromagnetic_heisenberg_model_pdf086-147.pdf) |
| 05 | Long-Range Order and “Spontaneous Symmetry Breaking” in Bose–Einstein Condensates | 135-150 | 148–163 | [`05_ch05_long_range_order_bose_einstein_condensates_pdf148-163.pdf`](../../References-Full/_slices/tasaki_2020/chapters/05_ch05_long_range_order_bose_einstein_condensates_pdf148-163.pdf) |
| 06 | Ground States of the Antiferromagnetic Heisenberg Chains | 153-175 | 166–188 | [`06_ch06_ground_states_antiferromagnetic_heisenberg_chains_pdf166-188.pdf`](../../References-Full/_slices/tasaki_2020/chapters/06_ch06_ground_states_antiferromagnetic_heisenberg_chains_pdf166-188.pdf) |
| 07 | Affleck–Kennedy–Lieb–Tasaki Model | 177-224 | 189–236 | [`07_ch07_affleck_kennedy_lieb_tasaki_model_pdf189-236.pdf`](../../References-Full/_slices/tasaki_2020/chapters/07_ch07_affleck_kennedy_lieb_tasaki_model_pdf189-236.pdf) |
| 08 | Haldane Phase | 225-302 | 237–314 | [`08_ch08_haldane_phase_pdf237-314.pdf`](../../References-Full/_slices/tasaki_2020/chapters/08_ch08_haldane_phase_pdf237-314.pdf) |
| 09 | Introduction to the Hubbard Model | 305-339 | 317–351 | [`09_ch09_introduction_to_hubbard_model_pdf317-351.pdf`](../../References-Full/_slices/tasaki_2020/chapters/09_ch09_introduction_to_hubbard_model_pdf317-351.pdf) |
| 10 | Half-Filled Models: Lieb’s Theorems and the Origin of Antiferromagnetism and Ferrimagnetism | 341-370 | 352–381 | [`10_ch10_half_filled_models_lieb_theorems_pdf352-381.pdf`](../../References-Full/_slices/tasaki_2020/chapters/10_ch10_half_filled_models_lieb_theorems_pdf352-381.pdf) |
| 11 | The Origin of Ferromagnetism | 371-455 | 382–466 | [`11_ch11_origin_of_ferromagnetism_pdf382-466.pdf`](../../References-Full/_slices/tasaki_2020/chapters/11_ch11_origin_of_ferromagnetism_pdf382-466.pdf) |
| 12 | Appendix A: Mathematical Appendices | 457-491 | 467–501 | [`12_appendix_a_mathematical_appendices_pdf467-501.pdf`](../../References-Full/_slices/tasaki_2020/chapters/12_appendix_a_mathematical_appendices_pdf467-501.pdf) |
| 13 | Solutions | 493-520 | 502–529 | [`13_solutions_solutions_pdf502-529.pdf`](../../References-Full/_slices/tasaki_2020/chapters/13_solutions_solutions_pdf502-529.pdf) |

<details>
<summary><strong>Full contents, including sections</strong></summary>

### 01 — Introduction

- **1.1** Universality in Macroscopic Physics — print p. 1
- **1.2** Overview of the Book — print p. 4
- References — print p. 10

### 02 — Basics of Quantum Spin Systems

- **2.1** Quantum Mechanics of a Single Spin — print p. 13
- **2.2** Quantum Spin Systems — print p. 21
- **2.3** Time-Reversal and the Kramers Degeneracy — print p. 25
- **2.4** The Ferromagnetic Heisenberg Model — print p. 31
- **2.5** The Antiferromagnetic Heisenberg Model — print p. 37
- References — print p. 44

### 03 — Long-Range Order and Spontaneous Symmetry Breaking in the Classical and Quantum Ising Models

- **3.1** Motivation from the Heisenberg Antiferromagnet — print p. 49
- **3.2** Classical Ising Model — print p. 52
- **3.3** Quantum Ising Model — print p. 55
- **3.4** General Theory of Low-Lying States and SSB — print p. 64
- References — print p. 70

### 04 — Long-Range Order and Spontaneous Symmetry Breaking in the Antiferromagnetic Heisenberg Model

- **4.1** Existence of Long-Range Order — print p. 73
  - **4.1.1** Main Results — print p. 74
  - **4.1.2** Proof of the Existence of LRO — print p. 79
- **4.2** The ``Tower'' of Low-Lying States and Spontaneous Symmetry Breaking — print p. 93
  - **4.2.1** Main Results — print p. 94
  - **4.2.2** Proofs — print p. 104
- **4.3** Ground States of the Infinite System — print p. 112
  - **4.3.1** Construction of Ground States — print p. 112
  - **4.3.2** Physical Versus Unphysical Ground States — print p. 116
- **4.4** Equilibrium States of the Heisenberg Model — print p. 117
  - **4.4.1** Disorder at High-Temperature and in One-Dimension — print p. 118
  - **4.4.2** Berezinskii's Harmonic Approximation — print p. 120
  - **4.4.3** Absence of Order in Two Dimensions — print p. 123
  - **4.4.4** LRO and SSB in Three or Higher Dimensions — print p. 130
- References — print p. 131

### 05 — Long-Range Order and “Spontaneous Symmetry Breaking” in Bose–Einstein Condensates

- **5** Long-Range Order and ``Spontaneous Symmetry Breaking'' in Bose–Einstein Condensates — print p. 135
- **5.1** The Model and the Equivalence to the XY Model — print p. 135
- **5.2** Off-Diagonal Long-Range Order — print p. 138
- **5.3** Symmetry Breaking ``Ground States'' — print p. 140
- **5.4** Physical Ground States of Bose–Einstein Condensates — print p. 142
- **5.5** ``SSB'' in Coupled Bose–Einstein Condensates — print p. 146
- References — print p. 149

### 06 — Ground States of the Antiferromagnetic Heisenberg Chains

- **6.1** Haldane ``Conjecture'' — print p. 153
- **6.2** The Lieb–Schultz–Mattis Theorem — print p. 158
- **6.3** Semi-classical Approach — print p. 166
- References — print p. 172

### 07 — Affleck–Kennedy–Lieb–Tasaki Model

- **7.1** The Model and Main Results — print p. 177
  - **7.1.1** The Hamiltonian and the Main Theorem — print p. 178
  - **7.1.2** The Exact Ground State — print p. 180
  - **7.1.3** The Uniqueness of the Ground State — print p. 186
  - **7.1.4** The Proof of the Existence of Gap — print p. 188
- **7.2** Properties of the AKLT Model — print p. 190
  - **7.2.1** Hidden Antiferromagnetic Order — print p. 191
  - **7.2.2** Matrix Product Representation — print p. 194
  - **7.2.3** AKLT Model on Open Chains — print p. 205
- **7.3** Extensions and Related Models — print p. 208
  - **7.3.1** Spin Chains with Higher S and the VBS Picture — print p. 208
  - **7.3.2** Higher Dimensional Models — print p. 210
  - **7.3.3** Briegel–Raussendorf State (Cluster State) and Its Generalizations — print p. 214
- References — print p. 220

### 08 — Haldane Phase

- **8.1** Characterization of the Haldane Phase — print p. 225
  - **8.1.1** Topological Phase Transition in Anisotropic Model — print p. 226
  - **8.1.2** Hidden Antiferromagnetic Order — print p. 229
  - **8.1.3** Emergence of Edge States — print p. 234
- **8.2** Hidden mathbbZ2timesmathbbZ2 Symmetry Breaking — print p. 238
  - **8.2.1** Phase Diagram of the λ-D Model — print p. 239
  - **8.2.2** Nonlocal Unitary Transformation — print p. 241
  - **8.2.3** The Picture of Hidden mathbbZ2timesmathbbZ2 Symmetry Breaking — print p. 244
- **8.3** Symmetry Protected Topological Phase — print p. 251
  - **8.3.1** More on the Picture of the Hidden mathbbZ2timesmathbbZ2 Symmetry Breaking — print p. 251
  - **8.3.2** Symmetry Protected Topological (SPT) Phase — print p. 254
  - **8.3.3** Entanglement and ``Topological'' Indices for SPT Phases — print p. 260
  - **8.3.4** ``Topological'' Indices for Matrix Product States — print p. 264
  - **8.3.5** Lieb–Schultz–Mattis Type Theorem Without Continuous Symmetry — print p. 276
  - **8.3.6** Rigorous Index Theorems for SPT Phases — print p. 280
- **8.4** Topological Order in Kitaev's Toric Code Model — print p. 288
- References — print p. 298

### 09 — Introduction to the Hubbard Model

- **9.1** What is the Hubbard Model? — print p. 305
- **9.2** Tight-Binding Description of Electrons in a Solid — print p. 307
  - **9.2.1** Wave Functions for Electrons — print p. 308
  - **9.2.2** Creation and Annihilation Operators in the Wave Function Formalism — print p. 310
  - **9.2.3** The Fock Space Representation — print p. 314
- **9.3** Definition of the Hubbard Model — print p. 324
  - **9.3.1** Single-Electron Schrödinger Equation — print p. 324
  - **9.3.2** Hamiltonian of the Hubbard Model — print p. 328
  - **9.3.3** Transformations and Symmetry of the Hubbard Hamiltonian — print p. 332
- **9.4** Bosonic Hubbard Model — print p. 337
- References — print p. 339

### 10 — Half-Filled Models: Lieb’s Theorems and the Origin of Antiferromagnetism and Ferrimagnetism

- **10** Half-Filled Models: Lieb's Theorems and the Origin of Antiferromagnetism and Ferrimagnetism — print p. 341
- **10.1** Formal Perturbation Theory for Strong Interaction — print p. 341
- **10.2** Lieb's Theorems — print p. 347
  - **10.2.1** Lieb's Theorem for the Attractive Hubbard Model — print p. 348
  - **10.2.2** Lieb's Theorem for the Repulsive Hubbard Model — print p. 349
  - **10.2.3** Lieb's Ferrimagnetism — print p. 354
  - **10.2.4** Proofs of Theorems 10.2 and 10.3 — print p. 361
  - **10.2.5** Extensions and Other Rigorous Results — print p. 367
- References — print p. 369

### 11 — The Origin of Ferromagnetism

- **11.1** Basic Properties of Ferromagnetism — print p. 371
  - **11.1.1** Definition and Basic Theorem — print p. 372
  - **11.1.2** Instability of Ferromagnetism — print p. 374
  - **11.1.3** Toy Model with Two Electrons — print p. 377
  - **11.1.4** Stoner Criterion — print p. 379
- **11.2** Nagaoka's Ferromagnetism — print p. 381
  - **11.2.1** Weak Version of Nagaoka's Theorem — print p. 382
  - **11.2.2** Nagaoka's Theorem and the Connectivity Condition — print p. 385
  - **11.2.3** Instability of Nagaoka's Ferromagnetism — print p. 388
- **11.3** Flat-Band Ferromagnetism — print p. 389
  - **11.3.1** Tasaki's Flat-Band Ferromagnetism — print p. 390
  - **11.3.2** Mielke's Flat-Band Ferromagnetism — print p. 401
  - **11.3.3** Construction of Tight-Binding Models with Flat-Bands — print p. 405
  - **11.3.4** General Theory of Flat-Band Ferromagnetism — print p. 409
- **11.4** Ferromagnetism in Non-singular Hubbard Models — print p. 414
  - **11.4.1** Wannier State Perturbation Theory — print p. 415
  - **11.4.2** Local Stability and the Spin Wave Excitation — print p. 421
  - **11.4.3** Ferromagnetism in Non-singular Hubbard Models — print p. 425
- **11.5** Toward Metallic Ferromagnetism — print p. 438
  - **11.5.1** Heuristic Arguments — print p. 439
  - **11.5.2** Rigorous Results — print p. 441
- References — print p. 452

### 12 — Appendix A: Mathematical Appendices

- **A.1** Dirac Notation — print p. 457
- **A.2** Useful Properties of Operators — print p. 462
- **A.2.1** Commutator and Operator Norm — print p. 462
- **A.2.2** Exponential of an Operator — print p. 464
- **A.2.3** Inequality Between Self-adjoint Operators and Nonnegative Operators — print p. 467
- **A.3** Quantum Mechanical Angular Momentum — print p. 470
- **A.3.1** Definition and Basic Properties — print p. 470
- **A.3.2** SU(2) Invariant Hamiltonian — print p. 472
- **A.3.3** Addition of Angular Momenta — print p. 473
- **A.4** Some Linear Algebra — print p. 475
- **A.4.1** Perron–Frobenius Theorem — print p. 475
- **A.4.2** Decomposition of Matrices — print p. 476
- **A.4.3** Antilinear Operators — print p. 478
- **A.5** Groups and Their Representations — print p. 479
- **A.6** Wigner's Theorem — print p. 482
- **A.6.1** Statement and the Proof — print p. 482
- **A.6.2** Applications — print p. 485
- **A.7** Operator Algebraic Formulation of Infinite Systems — print p. 486

### 13 — Solutions

- Appendix Solutions — print p. 493

</details>

## Brian C. Hall — *Quantum Theory for Mathematicians*

- **Book key:** `hall_2013`
- **Edition:** 2013
- **Publisher:** Springer
- **Source:** `Brian Hall - Quantum Theory for Mathematicians(2013).pdf`
- **Document metadata:** Modern searchable typeset PDF, subsequently processed by CVISION PDF Compressor.
- **Chapter map:** [`hall_2013.chapters.tsv`](chapter_maps/hall_2013.chapters.tsv)

| Unit | Chapter or appendix | Print pages | Physical PDF pages | Chapter PDF |
|---:|---|---:|---:|---|
| 01 | The Experimental Origins of Quantum Mechanics | 1-17 | 18–34 | [`01_ch01_experimental_origins_quantum_mechanics_pdf018-034.pdf`](../../References-Full/_slices/hall_2013/chapters/01_ch01_experimental_origins_quantum_mechanics_pdf018-034.pdf) |
| 02 | A First Approach to Classical Mechanics | 19-52 | 35–68 | [`02_ch02_first_approach_classical_mechanics_pdf035-068.pdf`](../../References-Full/_slices/hall_2013/chapters/02_ch02_first_approach_classical_mechanics_pdf035-068.pdf) |
| 03 | A First Approach to Quantum Mechanics | 53-90 | 69–106 | [`03_ch03_first_approach_quantum_mechanics_pdf069-106.pdf`](../../References-Full/_slices/hall_2013/chapters/03_ch03_first_approach_quantum_mechanics_pdf069-106.pdf) |
| 04 | The Free Schrödinger Equation | 91-108 | 107–124 | [`04_ch04_free_schrodinger_equation_pdf107-124.pdf`](../../References-Full/_slices/hall_2013/chapters/04_ch04_free_schrodinger_equation_pdf107-124.pdf) |
| 05 | A Particle in a Square Well | 109-122 | 125–138 | [`05_ch05_particle_in_square_well_pdf125-138.pdf`](../../References-Full/_slices/hall_2013/chapters/05_ch05_particle_in_square_well_pdf125-138.pdf) |
| 06 | Perspectives on the Spectral Theorem | 123-130 | 139–146 | [`06_ch06_perspectives_on_spectral_theorem_pdf139-146.pdf`](../../References-Full/_slices/hall_2013/chapters/06_ch06_perspectives_on_spectral_theorem_pdf139-146.pdf) |
| 07 | The Spectral Theorem for Bounded Self-Adjoint Operators: Statements | 131-152 | 147–168 | [`07_ch07_spectral_theorem_bounded_statements_pdf147-168.pdf`](../../References-Full/_slices/hall_2013/chapters/07_ch07_spectral_theorem_bounded_statements_pdf147-168.pdf) |
| 08 | The Spectral Theorem for Bounded Self-Adjoint Operators: Proofs | 153-168 | 169–184 | [`08_ch08_spectral_theorem_bounded_proofs_pdf169-184.pdf`](../../References-Full/_slices/hall_2013/chapters/08_ch08_spectral_theorem_bounded_proofs_pdf169-184.pdf) |
| 09 | Unbounded Self-Adjoint Operators | 169-200 | 185–216 | [`09_ch09_unbounded_self_adjoint_operators_pdf185-216.pdf`](../../References-Full/_slices/hall_2013/chapters/09_ch09_unbounded_self_adjoint_operators_pdf185-216.pdf) |
| 10 | The Spectral Theorem for Unbounded Self-Adjoint Operators | 201-226 | 217–242 | [`10_ch10_spectral_theorem_unbounded_operators_pdf217-242.pdf`](../../References-Full/_slices/hall_2013/chapters/10_ch10_spectral_theorem_unbounded_operators_pdf217-242.pdf) |
| 11 | The Harmonic Oscillator | 227-238 | 243–254 | [`11_ch11_harmonic_oscillator_pdf243-254.pdf`](../../References-Full/_slices/hall_2013/chapters/11_ch11_harmonic_oscillator_pdf243-254.pdf) |
| 12 | The Uncertainty Principle | 239-253 | 255–269 | [`12_ch12_uncertainty_principle_pdf255-269.pdf`](../../References-Full/_slices/hall_2013/chapters/12_ch12_uncertainty_principle_pdf255-269.pdf) |
| 13 | Quantization Schemes for Euclidean Space | 255-277 | 270–292 | [`13_ch13_quantization_schemes_euclidean_space_pdf270-292.pdf`](../../References-Full/_slices/hall_2013/chapters/13_ch13_quantization_schemes_euclidean_space_pdf270-292.pdf) |
| 14 | The Stone–von Neumann Theorem | 279-304 | 293–318 | [`14_ch14_stone_von_neumann_theorem_pdf293-318.pdf`](../../References-Full/_slices/hall_2013/chapters/14_ch14_stone_von_neumann_theorem_pdf293-318.pdf) |
| 15 | The WKB Approximation | 305-331 | 319–345 | [`15_ch15_wkb_approximation_pdf319-345.pdf`](../../References-Full/_slices/hall_2013/chapters/15_ch15_wkb_approximation_pdf319-345.pdf) |
| 16 | Lie Groups, Lie Algebras, and Representations | 333-366 | 346–379 | [`16_ch16_lie_groups_lie_algebras_representations_pdf346-379.pdf`](../../References-Full/_slices/hall_2013/chapters/16_ch16_lie_groups_lie_algebras_representations_pdf346-379.pdf) |
| 17 | Angular Momentum and Spin | 367-391 | 380–404 | [`17_ch17_angular_momentum_and_spin_pdf380-404.pdf`](../../References-Full/_slices/hall_2013/chapters/17_ch17_angular_momentum_and_spin_pdf380-404.pdf) |
| 18 | Radial Potentials and the Hydrogen Atom | 393-418 | 405–430 | [`18_ch18_radial_potentials_hydrogen_atom_pdf405-430.pdf`](../../References-Full/_slices/hall_2013/chapters/18_ch18_radial_potentials_hydrogen_atom_pdf405-430.pdf) |
| 19 | Systems and Subsystems, Multiple Particles | 419-440 | 431–452 | [`19_ch19_systems_subsystems_multiple_particles_pdf431-452.pdf`](../../References-Full/_slices/hall_2013/chapters/19_ch19_systems_subsystems_multiple_particles_pdf431-452.pdf) |
| 20 | The Path Integral Formulation of Quantum Mechanics | 441-454 | 453–466 | [`20_ch20_path_integral_formulation_pdf453-466.pdf`](../../References-Full/_slices/hall_2013/chapters/20_ch20_path_integral_formulation_pdf453-466.pdf) |
| 21 | Hamiltonian Mechanics on Manifolds | 455-466 | 467–478 | [`21_ch21_hamiltonian_mechanics_on_manifolds_pdf467-478.pdf`](../../References-Full/_slices/hall_2013/chapters/21_ch21_hamiltonian_mechanics_on_manifolds_pdf467-478.pdf) |
| 22 | Geometric Quantization on Euclidean Space | 467-482 | 479–494 | [`22_ch22_geometric_quantization_euclidean_space_pdf479-494.pdf`](../../References-Full/_slices/hall_2013/chapters/22_ch22_geometric_quantization_euclidean_space_pdf479-494.pdf) |
| 23 | Geometric Quantization on Manifolds | 483-526 | 495–538 | [`23_ch23_geometric_quantization_on_manifolds_pdf495-538.pdf`](../../References-Full/_slices/hall_2013/chapters/23_ch23_geometric_quantization_on_manifolds_pdf495-538.pdf) |
| 24 | Appendix A: Review of Basic Material | 527-544 | 539–556 | [`24_appendix_a_review_of_basic_material_pdf539-556.pdf`](../../References-Full/_slices/hall_2013/chapters/24_appendix_a_review_of_basic_material_pdf539-556.pdf) |

<details>
<summary><strong>Full contents, including sections</strong></summary>

### 01 — The Experimental Origins of Quantum Mechanics

- **1.1** Is Light a Wave or a Particle? — print p. 1
  - **1.1.1** Newton Versus Huygens — print p. 1
  - **1.1.2** The Ascendance of the Wave Theory of Light — print p. 2
  - **1.1.3** Blackbody Radiation — print p. 4
  - **1.1.4** The Photoelectric Effect — print p. 6
  - **1.1.5** The Double-Slit Experiment, Revisited — print p. 6
- **1.2** Is an Electron a Wave or a Particle? — print p. 7
  - **1.2.1** The Spectrum of Hydrogen — print p. 8
  - **1.2.2** The Bohr–de Broglie Model of the Hydrogen Atom — print p. 9
  - **1.2.3** Electron Diffraction — print p. 11
  - **1.2.4** The Double-Slit Experiment with Electrons — print p. 12
- **1.3** Schrödinger and Heisenberg — print p. 13
- **1.4** A Matter of Interpretation — print p. 14
- **1.5** Exercises — print p. 16

### 02 — A First Approach to Classical Mechanics

- **2.1** Motion in R1 — print p. 19
  - **2.1.1** Newton's law — print p. 19
  - **2.1.2** Conservation of Energy — print p. 20
  - **2.1.3** Systems with Damping — print p. 22
- **2.2** Motion in Rn — print p. 23
- **2.3** Systems of Particles — print p. 26
  - **2.3.1** Conservation of Energy — print p. 26
  - **2.3.2** Conservation of Momentum — print p. 27
  - **2.3.3** Center of Mass — print p. 29
- **2.4** Angular Momentum — print p. 31
- **2.5** Poisson Brackets and Hamiltonian Mechanics — print p. 33
- **2.6** The Kepler Problem and the Runge–Lenz Vector — print p. 41
  - **2.6.1** The Kepler Problem — print p. 41
  - **2.6.2** Conservation of the Runge–Lenz Vector — print p. 41
  - **2.6.3** Ellipses, Hyperbolas, and Parabolas — print p. 42
  - **2.6.4** Special Properties of the Kepler Problem — print p. 45
- **2.7** Exercises — print p. 46

### 03 — A First Approach to Quantum Mechanics

- **3.1** Waves, Particles, and Probabilities — print p. 53
- **3.2** A Few Words About Operators and Their Adjoints — print p. 55
- **3.3** Position and the Position Operator — print p. 58
- **3.4** Momentum and the Momentum Operator — print p. 59
- **3.5** The Position and Momentum Operators — print p. 62
- **3.6** Axioms of Quantum Mechanics: Operatorsand Measurements — print p. 64
- **3.7** Time-Evolution in Quantum Theory — print p. 70
  - **3.7.1** The Schrödinger Equation — print p. 70
  - **3.7.2** Solving the Schrödinger Equation by Exponentiation — print p. 74
  - **3.7.3** Eigenvectors and the Time-Independent Schrödinger Equation — print p. 75
  - **3.7.4** The Schrödinger Equation in R1 — print p. 76
  - **3.7.5** Time-Evolution of the Expected Position and Expected Momentum — print p. 77
- **3.8** The Heisenberg Picture — print p. 78
- **3.9** Example: A Particle in a Box — print p. 80
- **3.10** Quantum Mechanics for a Particle in Rn — print p. 82
- **3.11** Systems of Multiple Particles — print p. 84
- **3.12** Physics Notation — print p. 85
- **3.13** Exercises — print p. 88

### 04 — The Free Schrödinger Equation

- **4.1** Solution by Means of the Fourier Transform — print p. 92
- **4.2** Solution as a Convolution — print p. 94
- **4.3** Propagation of the Wave Packet: First Approach — print p. 97
- **4.4** Propagation of the Wave Packet: Second Approach — print p. 100
- **4.5** Spread of the Wave Packet — print p. 104
- **4.6** Exercises — print p. 106

### 05 — A Particle in a Square Well

- **5.1** The Time-Independent Schrödinger Equation — print p. 109
- **5.2** Domain Questions and the Matching Conditions — print p. 111
- **5.3** Finding Square-Integrable Solutions — print p. 112
- **5.4** Tunneling and the Classically Forbidden Region — print p. 118
- **5.5** Discrete and Continuous Spectrum — print p. 119
- **5.6** Exercises — print p. 120

### 06 — Perspectives on the Spectral Theorem

- **6.1** The Difficulties with the Infinite-Dimensional Case — print p. 123
- **6.2** The Goals of Spectral Theory — print p. 125
- **6.3** A Guide to Reading — print p. 126
- **6.4** The Position Operator — print p. 126
- **6.5** Multiplication Operators — print p. 127
- **6.6** The Momentum Operator — print p. 127

### 07 — The Spectral Theorem for Bounded Self-Adjoint Operators: Statements

- **7** The Spectral Theorem for Bounded Self-AdjointOperators: Statements — print p. 131
- **7.1** Elementary Properties of Bounded Operators — print p. 131
- **7.2** Spectral Theorem for Bounded Self-AdjointOperators, I — print p. 137
  - **7.2.1** Spectral Subspaces — print p. 137
  - **7.2.2** Projection-Valued Measures — print p. 138
  - **7.2.3** The Spectral Theorem — print p. 141
- **7.3** Spectral Theorem for Bounded Self-AdjointOperators, II — print p. 144
- **7.4** Exercises — print p. 150

### 08 — The Spectral Theorem for Bounded Self-Adjoint Operators: Proofs

- **8** The Spectral Theorem for Bounded Self-AdjointOperators: Proofs — print p. 153
- **8.1** Proof of the Spectral Theorem, First Version — print p. 153
  - **8.1.1** Stage 1: The Continuous Functional Calculus — print p. 154
  - **8.1.2** Stage 2: An Operator-Valued Riesz Representation Theorem — print p. 158
- **8.2** Proof of the Spectral Theorem, Second Version — print p. 162
- **8.3** Exercises — print p. 166

### 09 — Unbounded Self-Adjoint Operators

- **9.1** Introduction — print p. 169
- **9.2** Adjoint and Closure of an Unbounded Operator — print p. 170
- **9.3** Elementary Properties of Adjoints and ClosedOperators — print p. 173
- **9.4** The Spectrum of an Unbounded Operator — print p. 177
- **9.5** Conditions for Self-Adjointness and EssentialSelf-Adjointness — print p. 179
- **9.6** A Counterexample — print p. 182
- **9.7** An Example — print p. 184
- **9.8** The Basic Operators of Quantum Mechanics — print p. 185
- **9.9** Sums of Self-Adjoint Operators — print p. 190
- **9.10** Another Counterexample — print p. 193
- **9.11** Exercises — print p. 196

### 10 — The Spectral Theorem for Unbounded Self-Adjoint Operators

- **10** The Spectral Theorem for Unbounded Self-AdjointOperators — print p. 201
- **10.1** Statements of the Spectral Theorem — print p. 202
- **10.2** Stone's Theorem and One-Parameter Unitary Groups — print p. 207
- **10.3** The Spectral Theorem for Bounded NormalOperators — print p. 213
- **10.4** Proof of the Spectral Theorem for UnboundedSelf-Adjoint Operators — print p. 220
- **10.5** Exercises — print p. 224

### 11 — The Harmonic Oscillator

- **11.1** The Role of the Harmonic Oscillator — print p. 227
- **11.2** The Algebraic Approach — print p. 228
- **11.3** The Analytic Approach — print p. 232
- **11.4** Domain Conditions and Completeness — print p. 233
- **11.5** Exercises — print p. 236

### 12 — The Uncertainty Principle

- **12.1** Uncertainty Principle, First Version — print p. 241
- **12.2** A Counterexample — print p. 245
- **12.3** Uncertainty Principle, Second Version — print p. 246
- **12.4** Minimum Uncertainty States — print p. 249
- **12.5** Exercises — print p. 251

### 13 — Quantization Schemes for Euclidean Space

- **13.1** Ordering Ambiguities — print p. 255
- **13.2** Some Common Quantization Schemes — print p. 256
- **13.3** The Weyl Quantization for R2n — print p. 261
  - **13.3.1** Heuristics — print p. 262
  - **13.3.2** The L2 Theory — print p. 264
  - **13.3.3** The Composition Formula — print p. 266
  - **13.3.4** Commutation Relations — print p. 268
- **13.4** The ``No Go'' Theorem of Groenewold — print p. 271
- **13.5** Exercises — print p. 275

### 14 — The Stone–von Neumann Theorem

- **14.1** A Heuristic Argument — print p. 279
- **14.2** The Exponentiated Commutation Relations — print p. 281
- **14.3** The Theorem — print p. 286
- **14.4** The Segal–Bargmann Space — print p. 292
  - **14.4.1** The Raising and Lowering Operators — print p. 293
  - **14.4.2** The Exponentiated Commutation Relations — print p. 297
  - **14.4.3** The Reproducing Kernel — print p. 299
  - **14.4.4** The Segal–Bargmann Transform — print p. 300
- **14.5** Exercises — print p. 301

### 15 — The WKB Approximation

- **15.1** Introduction — print p. 305
- **15.2** The Old Quantum Theory and the Bohr–SommerfeldCondition — print p. 306
- **15.3** Classical and Semiclassical Approximations — print p. 308
- **15.4** The WKB Approximation Away from the TurningPoints — print p. 311
  - **15.4.1** The Classically Allowed Region — print p. 311
  - **15.4.2** The Classically Forbidden Region — print p. 313
- **15.5** The Airy Function and the Connection Formulas — print p. 315
- **15.6** A Rigorous Error Estimate — print p. 320
  - **15.6.1** Preliminaries — print p. 321
  - **15.6.2** The Regions Near the Turning Points — print p. 323
  - **15.6.3** The Classically Allowed and Classically Forbidden Regions — print p. 323
  - **15.6.4** The Transition Regions — print p. 325
  - **15.6.5** Proof of the Main Theorem — print p. 328
- **15.7** Other Approaches — print p. 328
- **15.8** Exercises — print p. 329

### 16 — Lie Groups, Lie Algebras, and Representations

- **16.1** Summary — print p. 334
- **16.2** Matrix Lie Groups — print p. 335
- **16.3** Lie Algebras — print p. 338
- **16.4** The Matrix Exponential — print p. 339
- **16.5** The Lie Algebra of a Matrix Lie Group — print p. 342
- **16.6** Relationships Between Lie Groups and Lie Algebras — print p. 344
- **16.7** Finite-Dimensional Representations of Lie Groupsand Lie Algebras — print p. 350
  - **16.7.1** Finite-Dimensional Representations — print p. 350
  - **16.7.2** Unitary Representations — print p. 353
  - **16.7.3** Projective Unitary Representations — print p. 354
- **16.8** New Representations from Old — print p. 358
- **16.9** Infinite-Dimensional Unitary Representations — print p. 360
  - **16.9.1** Ordinary Unitary Representations — print p. 360
  - **16.9.2** Projective Unitary Representations — print p. 362
- **16.10** Exercises — print p. 363

### 17 — Angular Momentum and Spin

- **17.1** The Role of Angular Momentumin Quantum Mechanics — print p. 367
- **17.2** The Angular Momentum Operators in R3 — print p. 368
- **17.3** Angular Momentum from the Lie Algebra Pointof View — print p. 369
- **17.4** The Irreducible Representations of so(3) — print p. 370
- **17.5** The Irreducible Representations of SO(3) — print p. 375
- **17.6** Realizing the Representations Inside L2(S2) — print p. 376
- **17.7** Realizing the Representations Inside L2(R3) — print p. 380
- **17.8** Spin — print p. 383
- **17.9** Tensor Products of Representations: “Addition ofAngular Momentum” — print p. 384
- **17.10** Vectors and Vector Operators — print p. 387
- **17.11** Exercises — print p. 390

### 18 — Radial Potentials and the Hydrogen Atom

- **18.1** Radial Potentials — print p. 393
- **18.2** The Hydrogen Atom: Preliminaries — print p. 396
- **18.3** The Bound States of the Hydrogen Atom — print p. 397
- **18.4** The Runge–Lenz Vector in the Quantum KeplerProblem — print p. 401
  - **18.4.1** Some Notation — print p. 402
  - **18.4.2** The Classical Runge–Lenz Vector, Revisited — print p. 402
  - **18.4.3** The Quantum Runge–Lenz Vector — print p. 404
  - **18.4.4** Representations of so(4) — print p. 406
- **18.5** The Role of Spin — print p. 409
- **18.6** Runge–Lenz Calculations — print p. 410
- **18.7** Exercises — print p. 416

### 19 — Systems and Subsystems, Multiple Particles

- **19.1** Introduction — print p. 419
- **19.2** Trace-Class and Hilbert–Schmidt Operators — print p. 421
- **19.3** Density Matrices: The General Notionof the State of a Quantum System — print p. 422
- **19.4** Modified Axioms for Quantum Mechanics — print p. 427
- **19.5** Composite Systems and the Tensor Product — print p. 429
- **19.6** Multiple Particles: Bosons and Fermions — print p. 433
- **19.7** “Statistics” and the Pauli Exclusion Principle — print p. 435
- **19.8** Exercises — print p. 438

### 20 — The Path Integral Formulation of Quantum Mechanics

- **20.1** Trotter Product Formula — print p. 442
- **20.2** Formal Derivation of the Feynman Path Integral — print p. 444
- **20.3** The Imaginary-Time Calculation — print p. 447
- **20.4** The Wiener Measure — print p. 448
- **20.5** The Feynman–Kac Formula — print p. 449
- **20.6** Path Integrals in Quantum Field Theory — print p. 451
- **20.7** Exercises — print p. 453

### 21 — Hamiltonian Mechanics on Manifolds

- **21.1** Calculus on Manifolds — print p. 455
  - **21.1.1** Tangent Spaces, Vector Fields, and Flows — print p. 455
  - **21.1.2** Differential Forms — print p. 456
- **21.2** Mechanics on Symplectic Manifolds — print p. 459
  - **21.2.1** Symplectic Manifolds — print p. 459
  - **21.2.2** Poisson Brackets and Hamiltonian Vector Fields — print p. 460
  - **21.2.3** Hamiltonian Flows and Conserved Quantities — print p. 463
  - **21.2.4** The Liouville Form — print p. 465
- **21.3** Exercises — print p. 465

### 22 — Geometric Quantization on Euclidean Space

- **22.1** Introduction — print p. 467
- **22.2** Prequantization — print p. 468
- **22.3** Problems with Prequantization — print p. 472
- **22.4** Quantization — print p. 474
- **22.5** Quantization of Observables — print p. 478
- **22.6** Exercises — print p. 482

### 23 — Geometric Quantization on Manifolds

- **23.1** Introduction — print p. 483
- **23.2** Line Bundles and Connections — print p. 485
- **23.3** Prequantization — print p. 490
- **23.4** Polarizations — print p. 492
- **23.5** Quantization Without Half-Forms — print p. 495
  - **23.5.1** The General Case — print p. 496
  - **23.5.2** The Real Case — print p. 498
  - **23.5.3** The Complex Case — print p. 500
- **23.6** Quantization with Half-Forms: The Real Case — print p. 505
  - **23.6.1** The Space of Leaves — print p. 506
  - **23.6.2** The Canonical Bundle — print p. 506
  - **23.6.3** Square Roots of the Canonical Bundle — print p. 509
  - **23.6.4** The Half-Form Hilbert Space — print p. 511
  - **23.6.5** Quantization of Observables — print p. 514
- **23.7** Quantization with Half-Forms: The Complex Case — print p. 518
- **23.8** Pairing Maps — print p. 521
- **23.9** Exercises — print p. 523

### 24 — Appendix A: Review of Basic Material

- **A.1** Tensor Products of Vector Spaces — print p. 527
- **A.2** Measure Theory — print p. 529
- **A.3** Elementary Functional Analysis — print p. 530
  - **A.3.1** The Stone–Weierstrass Theorem — print p. 530
  - **A.3.2** The Fourier Transform — print p. 531
  - **A.3.3** Distributions — print p. 533
  - **A.3.4** Banach Spaces — print p. 535
- **A.4** Hilbert Spaces and Operators on Them — print p. 537
  - **A.4.1** Inner Product Spaces and Hilbert Spaces — print p. 537
  - **A.4.2** Orthogonality — print p. 539
  - **A.4.3** The Riesz Theorem and Adjoints — print p. 540
  - **A.4.4** Quadratic Forms — print p. 541
  - **A.4.5** Tensor Products of Hilbert Spaces — print p. 543

</details>

## David Sénéchal, André-Marie Tremblay, and Claude Bourbonnais (editors) — *Theoretical Methods for Strongly Correlated Electrons*

- **Book key:** `senechal_tremblay_bourbonnais`
- **Edition:** 2004 proceedings volume
- **Publisher:** Springer / CRM Series in Mathematical Physics
- **Source:** `David_Sénéchal,_Andre-Marie_Tremblay,_Claude_Bourbonnais_Theoretical_Methods_for_Strongly_Correlated_Electrons.pdf`
- **Document metadata:** Born-digital TeX/DVI-to-PostScript production; searchable text with embedded fonts.
- **Chapter map:** [`senechal_tremblay_bourbonnais.chapters.tsv`](chapter_maps/senechal_tremblay_bourbonnais.chapters.tsv)

| Unit | Chapter or appendix | Print pages | Physical PDF pages | Chapter PDF |
|---:|---|---:|---:|---|
| 01 | Density Matrix Renormalization | 3-38 | 22–57 | [`01_ch01_density_matrix_renormalization_pdf022-057.pdf`](../../References-Full/_slices/senechal_tremblay_bourbonnais/chapters/01_ch01_density_matrix_renormalization_pdf022-057.pdf) |
| 02 | Quantum Monte Carlo Methods for Strongly Correlated Electron Systems | 39-76 | 58–95 | [`02_ch02_quantum_monte_carlo_strongly_correlated_electrons_pdf058-095.pdf`](../../References-Full/_slices/senechal_tremblay_bourbonnais/chapters/02_ch02_quantum_monte_carlo_strongly_correlated_electrons_pdf058-095.pdf) |
| 03 | Renormalization Group Technique for Quasi-One-Dimensional Interacting Fermion Systems at Finite Temperature | 77-138 | 96–157 | [`03_ch03_rg_quasi_one_dimensional_fermions_pdf096-157.pdf`](../../References-Full/_slices/senechal_tremblay_bourbonnais/chapters/03_ch03_rg_quasi_one_dimensional_fermions_pdf096-157.pdf) |
| 04 | An Introduction to Bosonization | 139-186 | 158–205 | [`04_ch04_introduction_to_bosonization_pdf158-205.pdf`](../../References-Full/_slices/senechal_tremblay_bourbonnais/chapters/04_ch04_introduction_to_bosonization_pdf158-205.pdf) |
| 05 | Disordered Quantum Solids | 187-236 | 206–255 | [`05_ch05_disordered_quantum_solids_pdf206-255.pdf`](../../References-Full/_slices/senechal_tremblay_bourbonnais/chapters/05_ch05_disordered_quantum_solids_pdf206-255.pdf) |
| 06 | Self-Consistent Many-Body Theory for Condensed Matter Systems | 237-296 | 256–315 | [`06_ch06_self_consistent_many_body_theory_pdf256-315.pdf`](../../References-Full/_slices/senechal_tremblay_bourbonnais/chapters/06_ch06_self_consistent_many_body_theory_pdf256-315.pdf) |
| 07 | Fermi and Non-Fermi Liquid Behavior of Quantum Impurity Models: A Diagrammatic Pseudo-Particle Approach | 297-340 | 316–359 | [`07_ch07_quantum_impurity_models_pdf316-359.pdf`](../../References-Full/_slices/senechal_tremblay_bourbonnais/chapters/07_ch07_quantum_impurity_models_pdf316-359.pdf) |
| 08 | Conserving Approximations vs. Two-Particle Self-Consistent Approach | 341-356 | 360–375 | [`08_ch08_conserving_and_two_particle_self_consistent_approaches_pdf360-375.pdf`](../../References-Full/_slices/senechal_tremblay_bourbonnais/chapters/08_ch08_conserving_and_two_particle_self_consistent_approaches_pdf360-375.pdf) |

<details>
<summary><strong>Full contents, including sections</strong></summary>

### 01 — Density Matrix Renormalization

- **1** Introduction — print p. 3
- **2** The Method — print p. 5
- **3** Applications — print p. 8
- **4** Other Extensions to DMRG — print p. 10
- **4.1** Classical Systems — print p. 11
- **4.2** Finite-Temperature DMRG — print p. 12
- **4.3** Phonons, Bosons, and Disorder — print p. 13
- **4.4** Molecules and Quantum Chemistry — print p. 14
- **5** Dynamical Correlation Functions — print p. 15
- **5.1** Lanczos and Correction Vector Techniques — print p. 15
- **5.2** Moment Expansion — print p. 21
- **5.3** Finite Temperature Dynamics — print p. 22
- **6** Conclusions — print p. 22
- **7** References — print p. 23

### 02 — Quantum Monte Carlo Methods for Strongly Correlated Electron Systems

- **1** Introduction — print p. 39
- **2** Preliminaries — print p. 41
- **2.1** Starting Point of Quantum Monte Carlo (QMC) — print p. 41
- **2.2** Basics of Monte Carlo Techniques — print p. 42
- **2.3** Slater Determinant Space — print p. 43
- **2.4** Hubbard–Stratonovich Transformation — print p. 47
- **3** Standard Auxiliary-Field Quantum Monte Carlo — print p. 49
- **3.1** Ground-State Method — print p. 50
- **3.2** Finite-Temperature Method — print p. 51
- **4** Constrained Path Monte Carlo Methods—Ground-State and Finite-Temperature — print p. 52
- **4.1** Why and How Does the Sign Problem Occur? — print p. 52
- **4.2** The Constrained-Path Approximation — print p. 55
- **4.3** Ground-State Constrained Path Monte Carlo (CPMC) Method — print p. 58
- **4.4** Finite-Temperature Method — print p. 60
- **4.5** Additional Technical Issues — print p. 61
- **5** Illustrative Results — print p. 64
- **6** Summary — print p. 67
- **7** References — print p. 68
- **Appendix A** Brief Review of Conﬁguration-Space Methods — print p. 70
- **A.1** Variational Monte Carlo — print p. 70
- **A.2** Green’s Function Monte Carlo (GFMC) — print p. 72

### 03 — Renormalization Group Technique for Quasi-One-Dimensional Interacting Fermion Systems at Finite Temperature

- **1** Introduction — print p. 77
- **2** Scaling Ansatz for Fermions — print p. 79
- **2.1** One Dimension — print p. 79
- **2.2** Anisotropic Scaling and Crossover Phenomena — print p. 82
- **3** Free Fermion Limit — print p. 85
- **3.1** One Dimension — print p. 85
- **3.2** Interchain Coupling — print p. 89
- **4** The Kadanoﬀ–Wilson Renormalization Group — print p. 90
- **4.1** One-Dimensional Case — print p. 90
- **4.2** One-Loop Results — print p. 94
- **4.3** Two-Loop Results — print p. 99
- **4.4** Response Functions — print p. 105
- **5** Interchain Coupling: One-Particle Hopping — print p. 109
- **5.1** Interchain Pair Hopping and Long-Range Order — print p. 110
- **5.2** Long-Range Order in the Deconﬁned Region — print p. 116
- **6** Kohn–Luttinger Mechanism in Quasi-One-Dimensional Metals — print p. 119
- **6.1** Generation of Interchain Pairing Channels — print p. 119
- **6.2** Possibility of Long-Range Order in the Interchain Pairing Channels — print p. 125
- **7** Summary and Concluding Remarks — print p. 128
- **8** References — print p. 130
- **Appendix A** One-Particle Self-Energy at the Two-Loop Level . — print p. 134
- **A.1** Backward- and Forward-Scattering Contributions — print p. 134
- **A.2** Umklapp Contribution — print p. 136

### 04 — An Introduction to Bosonization

- **1** Quantum Field Theory in Condensed Matter — print p. 139
- **2** A Word on Conformal Symmetry — print p. 141
- **2.1** Scale and Conformal Invariance — print p. 141
- **2.2** Conformal Transformations — print p. 142
- **2.3** Eﬀect of Perturbations — print p. 143
- **2.4** The Central Charge — print p. 144
- **3** Interacting Electrons in One Dimension — print p. 145
- **3.1** Continuum Fields and Densities — print p. 145
- **3.2** Interactions — print p. 148
- **4** Bosonization: A Heuristic View — print p. 149
- **4.1** Why is One-Dimension Special? — print p. 149
- **4.2** The Simple Boson — print p. 151
- **4.3** Bose Representation of the Fermion Field — print p. 152
- **5** Details of the Bosonization Procedure — print p. 153
- **5.1** Left and Right Boson Modes — print p. 153
- **5.2** Proof of the Bosonization Formulas: Vertex Operators . — print p. 155
- **5.3** Bosonization of the Free-Electron Hamiltonian — print p. 159
- **5.4** Spectral Equivalence of Boson and Fermion — print p. 161
- **5.5** Case of Many Fermion Species: Klein Factors — print p. 163
- **5.6** Bosonization of Interactions — print p. 164
- **6** Exact Solution of the Tomonaga–Luttinger Model — print p. 166
- **6.1** Field and Velocity Renormalization — print p. 166
- **6.2** Left-Right Mixing — print p. 168
- **6.3** Correlation Functions — print p. 169
- **6.4** Spin or Charge Gap — print p. 171
- **7** Non-Abelian Bosonization — print p. 173
- **7.1** Symmetry Currents — print p. 173
- **7.2** Application to the Perturbed Tomonaga–Luttinger Model — print p. 176
- **8** Other Applications of Bosonization — print p. 179
- **8.1** The Spin- 12 Heisenberg Chain — print p. 179
- **8.2** Edge States in Quantum Hall Systems — print p. 180
- **8.3** And More — print p. 182
- **9** Conclusion — print p. 182
- **10** References — print p. 183
- **Appendix A** RG Flow and Operator Product Expansion — print p. 185

### 05 — Disordered Quantum Solids

- **1** Introduction — print p. 187
- **2** Disordered Interacting Fermions — print p. 189
- **2.1** Model — print p. 189
- **2.2** Pure System — print p. 189
- **2.3** Disorder — print p. 190
- **3** Tackling the Disorder — print p. 191
- **3.1** Chisel and Hammer — print p. 193
- **3.2** Starting From the Metal: RG — print p. 195
- **4** Other Systems and RG — print p. 198
- **5** A Zest for Numerics — print p. 201
- **6** Variational Method — print p. 202
- **6.1** A Classical Example — print p. 205
- **6.2** If It Ain’t Broken — print p. 209
- **6.3** Quantum Problems — print p. 211
- **6.4** The Fine Prints — print p. 215
- **6.5** Higher Dimension: Electronic Crystals and Classical Systems — print p. 217
- **7** Commensurate Systems — print p. 219
- **7.1** The Peculiar Random Exchange — print p. 220
- **7.2** Mott Versus Anderson — print p. 221
- **7.3** Variational Approach — print p. 223
- **7.4** Physical Discussion — print p. 227
- **8** Conclusions — print p. 229
- **9** References — print p. 229

### 06 — Self-Consistent Many-Body Theory for Condensed Matter Systems

- **1** Introduction — print p. 237
- **2** Review of Mean-Field Theory — print p. 238
- **3** Basics of Functional Integration — print p. 241
- **3.1** Bose Systems — print p. 242
- **3.2** Fermi Systems — print p. 245
- **4** Self-Consistent Approximations for the Action Functional — print p. 247
- **5** Φ-Derivability and Thermodynamic Self-Consistency — print p. 251
- **6** Thermodynamic Derivatives — print p. 255
- **7** Crossing Symmetry — print p. 262
- **8** Parquet Equations — print p. 267
- **9** Spin Diagonalization — print p. 273
- **10** Fluctuation Exchange Approximation and Pseudopotential Parquet — print p. 277
- **11** Analysis of Ordering Instabilities — print p. 282
- **12** Renormalization Group Solution of SCF Equations — print p. 283
- **13** Some Numerical Examples — print p. 290
- **14** Conclusion — print p. 294
- **15** References — print p. 295

### 07 — Fermi and Non-Fermi Liquid Behavior of Quantum Impurity Models: A Diagrammatic Pseudo-Particle Approach

- **1** Introduction — print p. 297
- **2** Single- and Multi-Channel Quantum Impurity Models — print p. 299
- **3** Pseudo-Particle Representation — print p. 302
- **3.1** Exact Projection onto the Physical Hilbert Space — print p. 303
- **3.2** Analytical Properties and Infrared Behavior — print p. 306
- **4** Mean Field Approach and 1/N Expansion at U → ∞ — print p. 309
- **4.1** Slave Boson Mean Field Theory — print p. 310
- **4.2** 1/N Expansion versus Self-Consistent Formulation — print p. 310
- **5** Conserving Approximations: Gauge-Invariant Self-Consistent Perturbation Theory in the Hybridization — print p. 311
- **5.1** Generating Functional — print p. 311
- **5.2** Noncrossing Approximation (NCA) — print p. 312
- **5.3** Evaluation of the Self-Consistency Equations at Low Temperatures — print p. 313
- **6** Conserving T -Matrix Approximation (CTMA) at U → ∞ — print p. 315
- **6.1** Dominant Contributions at Low Energy — print p. 315
- **6.2** Self-Consistent Formulation: CTMA — print p. 317
- **6.3** Results for the Auxiliary Particle Spectral Functions — print p. 324
- **6.4** Results for Physical Quantities: Spin Susceptibility — print p. 326
- **7** Anderson Model at Finite U : Generalized NCA and CTMA . — print p. 327
- **7.1** Generating Functional — print p. 328
- **7.2** Results of SUNCA — print p. 330
- **8** Conclusion — print p. 332
- **9** References — print p. 333
- **Appendix A** Infrared Cancellation of Non-CTMA Diagrams — print p. 336
- **A.1** Power Counting — print p. 336
- **A.2** Infrared Cancellation — print p. 338

### 08 — Conserving Approximations vs. Two-Particle Self-Consistent Approach

- **1** Introduction — print p. 341

</details>

## Victor G. Kac — *Vertex Algebras for Beginners*

- **Book key:** `kac_vertex_algebras`
- **Edition:** Second edition (1998)
- **Publisher:** American Mathematical Society
- **Source:** `Kac-Vertex-algebras-for-beginners.pdf`
- **Document metadata:** Raster scan; one full-page image per PDF page; no embedded OCR text layer. TOC was transcribed from the scanned pages.
- **Chapter map:** [`kac_vertex_algebras.chapters.tsv`](chapter_maps/kac_vertex_algebras.chapters.tsv)

| Unit | Chapter or appendix | Print pages | Physical PDF pages | Chapter PDF |
|---:|---|---:|---:|---|
| 01 | Wightman Axioms and Vertex Algebras | 5-16 | 9–20 | [`01_ch01_wightman_axioms_and_vertex_algebras_pdf009-020.pdf`](../../References-Full/_slices/kac_vertex_algebras/chapters/01_ch01_wightman_axioms_and_vertex_algebras_pdf009-020.pdf) |
| 02 | Calculus of Formal Distributions | 17-80 | 21–84 | [`02_ch02_calculus_of_formal_distributions_pdf021-084.pdf`](../../References-Full/_slices/kac_vertex_algebras/chapters/02_ch02_calculus_of_formal_distributions_pdf021-084.pdf) |
| 03 | Local Fields | 81-102 | 85–106 | [`03_ch03_local_fields_pdf085-106.pdf`](../../References-Full/_slices/kac_vertex_algebras/chapters/03_ch03_local_fields_pdf085-106.pdf) |
| 04 | Structure Theory of Vertex Algebras | 103-132 | 107–136 | [`04_ch04_structure_theory_of_vertex_algebras_pdf107-136.pdf`](../../References-Full/_slices/kac_vertex_algebras/chapters/04_ch04_structure_theory_of_vertex_algebras_pdf107-136.pdf) |
| 05 | Examples of Vertex Algebras and Their Applications | 133-192 | 137–196 | [`05_ch05_examples_vertex_algebras_and_applications_pdf137-196.pdf`](../../References-Full/_slices/kac_vertex_algebras/chapters/05_ch05_examples_vertex_algebras_and_applications_pdf137-196.pdf) |

<details>
<summary><strong>Full contents, including sections</strong></summary>

### 01 — Wightman Axioms and Vertex Algebras

- **1.1** Wightman axioms of a QFT — print p. 5
- **1.2** d = 2 QFT and chiral algebras — print p. 8
- **1.3** Definition of a vertex algebra — print p. 13
- **1.4** Holomorphic vertex algebras — print p. 15

### 02 — Calculus of Formal Distributions

- **2.1** Formal delta-function — print p. 17
- **2.2** An expansion of a formal distribution a(z,w) and formal Fourier transform — print p. 19
- **2.3** Locality of two formal distributions — print p. 24
- **2.4** Taylor’s formula — print p. 29
- **2.5** Current algebras — print p. 31
- **2.6** Conformal weight and the Virasoro algebra — print p. 34
- **2.7** Formal distribution Lie superalgebras and conformal superalgebras — print p. 39
- **2.8** Conformal modules and modules over conformal superalgebras — print p. 50
- **2.9** Representation theory of finite conformal algebras — print p. 56
- **2.10** Associative conformal algebras and the general conformal algebra — print p. 61
- **2.11** Cohomology of conformal algebras — print p. 67

### 03 — Local Fields

- **3.1** Normally ordered product — print p. 81
- **3.2** Dong’s lemma — print p. 84
- **3.3** Wick’s theorem and a “non-commutative” generalization — print p. 87
- **3.4** Bounded and field representations of formal distribution Lie superalgebras — print p. 91
- **3.5** Free (super)bosons — print p. 93
- **3.6** Free (super)fermions — print p. 98

### 04 — Structure Theory of Vertex Algebras

- **4.1** Consequences of translation covariance and vacuum axioms — print p. 103
- **4.2** Skewsymmetry — print p. 105
- **4.3** Subalgebras, ideals, and tensor products — print p. 106
- **4.4** Uniqueness theorem — print p. 108
- **4.5** Existence theorem — print p. 110
- **4.6** Borcherds OPE formula — print p. 111
- **4.7** Vertex algebras associated to formal distribution Lie superalgebras — print p. 113
- **4.8** Borcherds identity — print p. 116
- **4.9** Graded and Möbius conformal vertex algebras — print p. 119
- **4.10** Conformal vertex algebras — print p. 125
- **4.11** Field algebras — print p. 129

### 05 — Examples of Vertex Algebras and Their Applications

- **5.1** Charged free fermions and triple product identity — print p. 133
- **5.2** Boson–fermion correspondence and KP hierarchy — print p. 137
- **5.3** ĝl∞ and W₁₊∞ — print p. 143
- **5.4** Lattice vertex algebras — print p. 148
- **5.5** Simple lattice vertex algebras — print p. 152
- **5.6** Root lattice vertex algebras and affine vertex algebras — print p. 158
- **5.7** Conformal structure for affine vertex algebras — print p. 161
- **5.8** Super boson–fermion correspondence and sums of squares — print p. 168
- **5.9** Superconformal vertex algebras — print p. 178
- **5.10** On classification of conformal superalgebras — print p. 185

- Bibliography — print p. 193
- Index — print p. 199

</details>

## Victor G. Kac — *Infinite-Dimensional Lie Algebras*

- **Book key:** `kac_infinite_dimensional_lie_algebras_1995`
- **Edition:** Third edition, 1995 printing
- **Publisher:** Cambridge University Press
- **Source:** `Kac - Infinite-Dimensional Lie Algebras (1995).pdf`
- **Document metadata:** Hybrid older scan with searchable OCR text and embedded page images; legacy ITXT page-tree metadata is discarded safely during slicing.
- **Chapter map:** [`kac_infinite_dimensional_lie_algebras_1995.chapters.tsv`](chapter_maps/kac_infinite_dimensional_lie_algebras_1995.chapters.tsv)

| Unit | Chapter or appendix | Print pages | Physical PDF pages | Chapter PDF |
|---:|---|---:|---:|---|
| 01 | Basic Definitions | 1-15 | 24–38 | [`01_ch01_basic_definitions_pdf024-038.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/01_ch01_basic_definitions_pdf024-038.pdf) |
| 02 | The Invariant Bilinear Form and the Generalized Casimir Operator | 16-29 | 39–52 | [`02_ch02_invariant_form_and_casimir_operator_pdf039-052.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/02_ch02_invariant_form_and_casimir_operator_pdf039-052.pdf) |
| 03 | Integrable Representations of Kac–Moody Algebras and the Weyl Group | 30-46 | 53–69 | [`03_ch03_integrable_representations_and_weyl_group_pdf053-069.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/03_ch03_integrable_representations_and_weyl_group_pdf053-069.pdf) |
| 04 | A Classification of Generalized Cartan Matrices | 47-58 | 70–81 | [`04_ch04_classification_generalized_cartan_matrices_pdf070-081.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/04_ch04_classification_generalized_cartan_matrices_pdf070-081.pdf) |
| 05 | Real and Imaginary Roots | 59-78 | 82–101 | [`05_ch05_real_and_imaginary_roots_pdf082-101.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/05_ch05_real_and_imaginary_roots_pdf082-101.pdf) |
| 06 | Affine Algebras: the Normalized Invariant Form, the Root System, and the Weyl Group | 79-95 | 102–118 | [`06_ch06_affine_algebras_root_system_and_weyl_group_pdf102-118.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/06_ch06_affine_algebras_root_system_and_weyl_group_pdf102-118.pdf) |
| 07 | Affine Algebras as Central Extensions of Loop Algebras | 96-124 | 119–147 | [`07_ch07_affine_algebras_central_extensions_loop_algebras_pdf119-147.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/07_ch07_affine_algebras_central_extensions_loop_algebras_pdf119-147.pdf) |
| 08 | Twisted Affine Algebras and Finite-Order Automorphisms | 125-144 | 148–167 | [`08_ch08_twisted_affine_algebras_and_automorphisms_pdf148-167.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/08_ch08_twisted_affine_algebras_and_automorphisms_pdf148-167.pdf) |
| 09 | Highest-Weight Modules over Kac–Moody Algebras | 145-170 | 168–193 | [`09_ch09_highest_weight_modules_pdf168-193.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/09_ch09_highest_weight_modules_pdf168-193.pdf) |
| 10 | Integrable Highest-Weight Modules: the Character Formula | 171-189 | 194–212 | [`10_ch10_integrable_highest_weight_modules_character_formula_pdf194-212.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/10_ch10_integrable_highest_weight_modules_character_formula_pdf194-212.pdf) |
| 11 | Integrable Highest-Weight Modules: the Weight System and the Unitarizability | 190-215 | 213–238 | [`11_ch11_integrable_modules_weight_system_and_unitarizability_pdf213-238.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/11_ch11_integrable_modules_weight_system_and_unitarizability_pdf213-238.pdf) |
| 12 | Integrable Highest-Weight Modules over Affine Algebras; Theta-Function Identities, Sugawara Operators, and Branching Functions | 216-247 | 239–270 | [`12_ch12_affine_modules_theta_identities_sugawara_branching_pdf239-270.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/12_ch12_affine_modules_theta_identities_sugawara_branching_pdf239-270.pdf) |
| 13 | Affine Algebras, Theta Functions, and Modular Forms | 248-291 | 271–314 | [`13_ch13_affine_algebras_theta_functions_modular_forms_pdf271-314.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/13_ch13_affine_algebras_theta_functions_modular_forms_pdf271-314.pdf) |
| 14 | The Principal and Homogeneous Vertex Operator Constructions; Boson–Fermion Correspondence; Soliton Equations | 292-352 | 315–375 | [`14_ch14_vertex_operator_constructions_boson_fermion_correspondence_pdf315-375.pdf`](../../References-Full/_slices/kac_infinite_dimensional_lie_algebras_1995/chapters/14_ch14_vertex_operator_constructions_boson_fermion_correspondence_pdf315-375.pdf) |

<details>
<summary><strong>Full contents, including sections</strong></summary>

### 01 — Basic Definitions

- **1.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 1
- **1.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 1
- **1.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 3
- **1.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 6
- **1.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 8
- **1.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 8
- **1.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 11
- **1.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 11
- **1.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 12
- **1.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 14

### 02 — The Invariant Bilinear Form and the Generalized Casimir Operator

- **2.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 16
- **2.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 16
- **2.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 17
- **2.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 19
- **2.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 20
- **2.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 22
- **2.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 23
- **2.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 25
- **2.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 25
- **2.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 26
- **2.10** Internal numbered section (the printed contents gives chapter titles only) — print p. 27
- **2.11** Internal numbered section (the printed contents gives chapter titles only) — print p. 28

### 03 — Integrable Representations of Kac–Moody Algebras and the Weyl Group

- **3.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 30
- **3.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 30
- **3.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 30
- **3.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 32
- **3.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 32
- **3.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 33
- **3.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 33
- **3.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 35
- **3.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 36
- **3.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 37
- **3.10** Internal numbered section (the printed contents gives chapter titles only) — print p. 38
- **3.11** Internal numbered section (the printed contents gives chapter titles only) — print p. 38
- **3.12** Internal numbered section (the printed contents gives chapter titles only) — print p. 39
- **3.13** Internal numbered section (the printed contents gives chapter titles only) — print p. 41
- **3.14** Internal numbered section (the printed contents gives chapter titles only) — print p. 41
- **3.15** Internal numbered section (the printed contents gives chapter titles only) — print p. 46

### 04 — A Classification of Generalized Cartan Matrices

- **4.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 47
- **4.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 47
- **4.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 48
- **4.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 48
- **4.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 49
- **4.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 49
- **4.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 50
- **4.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 51
- **4.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 51
- **4.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 55
- **4.10** Internal numbered section (the printed contents gives chapter titles only) — print p. 56
- **4.11** Internal numbered section (the printed contents gives chapter titles only) — print p. 58

### 05 — Real and Imaginary Roots

- **5.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 59
- **5.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 59
- **5.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 61
- **5.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 62
- **5.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 63
- **5.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 63
- **5.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 64
- **5.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 64
- **5.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 65
- **5.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 66
- **5.10** Internal numbered section (the printed contents gives chapter titles only) — print p. 66
- **5.11** Internal numbered section (the printed contents gives chapter titles only) — print p. 69
- **5.12** Internal numbered section (the printed contents gives chapter titles only) — print p. 71
- **5.13** Internal numbered section (the printed contents gives chapter titles only) — print p. 72
- **5.14** Internal numbered section (the printed contents gives chapter titles only) — print p. 77

### 06 — Affine Algebras: the Normalized Invariant Form, the Root System, and the Weyl Group

- **6.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 79
- **6.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 79
- **6.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 80
- **6.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 82
- **6.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 84
- **6.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 86
- **6.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 89
- **6.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 90
- **6.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 93
- **6.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 95

### 07 — Affine Algebras as Central Extensions of Loop Algebras

- **7.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 96
- **7.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 96
- **7.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 96
- **7.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 98
- **7.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 99
- **7.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 102
- **7.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 102
- **7.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 103
- **7.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 105
- **7.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 107
- **7.10** Internal numbered section (the printed contents gives chapter titles only) — print p. 110
- **7.11** Internal numbered section (the printed contents gives chapter titles only) — print p. 112
- **7.12** Internal numbered section (the printed contents gives chapter titles only) — print p. 114
- **7.13** Internal numbered section (the printed contents gives chapter titles only) — print p. 116
- **7.14** Internal numbered section (the printed contents gives chapter titles only) — print p. 123

### 08 — Twisted Affine Algebras and Finite-Order Automorphisms

- **8.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 125
- **8.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 125
- **8.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 126
- **8.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 127
- **8.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 132
- **8.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 132
- **8.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 135
- **8.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 138
- **8.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 139
- **8.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 143

### 09 — Highest-Weight Modules over Kac–Moody Algebras

- **9.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 145
- **9.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 145
- **9.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 146
- **9.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 147
- **9.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 149
- **9.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 150
- **9.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 150
- **9.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 151
- **9.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 153
- **9.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 153
- **9.10** Internal numbered section (the printed contents gives chapter titles only) — print p. 154
- **9.11** Internal numbered section (the printed contents gives chapter titles only) — print p. 157
- **9.12** Internal numbered section (the printed contents gives chapter titles only) — print p. 160
- **9.13** Internal numbered section (the printed contents gives chapter titles only) — print p. 161
- **9.14** Internal numbered section (the printed contents gives chapter titles only) — print p. 163
- **9.15** Internal numbered section (the printed contents gives chapter titles only) — print p. 165
- **9.16** Internal numbered section (the printed contents gives chapter titles only) — print p. 168

### 10 — Integrable Highest-Weight Modules: the Character Formula

- **10.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 171
- **10.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 171
- **10.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 172
- **10.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 173
- **10.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 173
- **10.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 175
- **10.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 176
- **10.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 179
- **10.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 180
- **10.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 181
- **10.10** Internal numbered section (the printed contents gives chapter titles only) — print p. 182
- **10.11** Internal numbered section (the printed contents gives chapter titles only) — print p. 183
- **10.12** Internal numbered section (the printed contents gives chapter titles only) — print p. 188

### 11 — Integrable Highest-Weight Modules: the Weight System and the Unitarizability

- **11.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 190
- **11.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 190
- **11.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 190
- **11.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 192
- **11.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 193
- **11.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 194
- **11.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 194
- **11.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 196
- **11.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 197
- **11.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 198
- **11.10** Internal numbered section (the printed contents gives chapter titles only) — print p. 199
- **11.11** Internal numbered section (the printed contents gives chapter titles only) — print p. 201
- **11.12** Internal numbered section (the printed contents gives chapter titles only) — print p. 202
- **11.13** Internal numbered section (the printed contents gives chapter titles only) — print p. 203
- **11.14** Internal numbered section (the printed contents gives chapter titles only) — print p. 208
- **11.15** Internal numbered section (the printed contents gives chapter titles only) — print p. 212

### 12 — Integrable Highest-Weight Modules over Affine Algebras; Theta-Function Identities, Sugawara Operators, and Branching Functions

- **12.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 216
- **12.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 216
- **12.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 219
- **12.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 220
- **12.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 222
- **12.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 223
- **12.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 223
- **12.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 225
- **12.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 228
- **12.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 233
- **12.10** Internal numbered section (the printed contents gives chapter titles only) — print p. 235
- **12.11** Internal numbered section (the printed contents gives chapter titles only) — print p. 236
- **12.12** Internal numbered section (the printed contents gives chapter titles only) — print p. 237
- **12.13** Internal numbered section (the printed contents gives chapter titles only) — print p. 239
- **12.14** Internal numbered section (the printed contents gives chapter titles only) — print p. 240
- **12.15** Internal numbered section (the printed contents gives chapter titles only) — print p. 247

### 13 — Affine Algebras, Theta Functions, and Modular Forms

- **13.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 248
- **13.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 248
- **13.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 249
- **13.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 251
- **13.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 253
- **13.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 255
- **13.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 257
- **13.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 261
- **13.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 263
- **13.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 266
- **13.10** Internal numbered section (the printed contents gives chapter titles only) — print p. 267
- **13.11** Internal numbered section (the printed contents gives chapter titles only) — print p. 269
- **13.12** Internal numbered section (the printed contents gives chapter titles only) — print p. 273
- **13.13** Internal numbered section (the printed contents gives chapter titles only) — print p. 274
- **13.14** Internal numbered section (the printed contents gives chapter titles only) — print p. 277
- **13.15** Internal numbered section (the printed contents gives chapter titles only) — print p. 280
- **13.16** Internal numbered section (the printed contents gives chapter titles only) — print p. 289

### 14 — The Principal and Homogeneous Vertex Operator Constructions; Boson–Fermion Correspondence; Soliton Equations

- **14.0** Internal numbered section (the printed contents gives chapter titles only) — print p. 292
- **14.1** Internal numbered section (the printed contents gives chapter titles only) — print p. 292
- **14.2** Internal numbered section (the printed contents gives chapter titles only) — print p. 293
- **14.3** Internal numbered section (the printed contents gives chapter titles only) — print p. 297
- **14.4** Internal numbered section (the printed contents gives chapter titles only) — print p. 299
- **14.5** Internal numbered section (the printed contents gives chapter titles only) — print p. 300
- **14.6** Internal numbered section (the printed contents gives chapter titles only) — print p. 301
- **14.7** Internal numbered section (the printed contents gives chapter titles only) — print p. 304
- **14.8** Internal numbered section (the printed contents gives chapter titles only) — print p. 306
- **14.9** Internal numbered section (the printed contents gives chapter titles only) — print p. 310
- **14.10** Internal numbered section (the printed contents gives chapter titles only) — print p. 314
- **14.11** Internal numbered section (the printed contents gives chapter titles only) — print p. 319
- **14.12** Internal numbered section (the printed contents gives chapter titles only) — print p. 323
- **14.13** Internal numbered section (the printed contents gives chapter titles only) — print p. 327
- **14.14** Internal numbered section (the printed contents gives chapter titles only) — print p. 331
- **14.15** Internal numbered section (the printed contents gives chapter titles only) — print p. 348

- Index of Notations and Definitions — print p. 353
- References — print p. 367
- Conference Proceedings and Collections of Papers — print p. 399

</details>

## Thierry Giamarchi — *Quantum Physics in One Dimension*

- **Book key:** `giamarchi_2004`
- **Edition:** First published 2003; source filename/catalog key uses 2004
- **Publisher:** Clarendon Press / Oxford University Press
- **Source:** `Thierry Giamarchi - Quantum Physics in One Dimension (2004, Clarendon_ Oxford University Press) - libgen.li.djvu`
- **Document metadata:** DjVu page scan with a hidden OCR layer. Chapter PDFs were converted with DjVuLibre 3.5.28 and are raster PDFs.
- **Chapter map:** [`giamarchi_2004.chapters.tsv`](chapter_maps/giamarchi_2004.chapters.tsv)

| Unit | Chapter or appendix | Print pages | Physical PDF pages | Chapter PDF |
|---:|---|---:|---:|---|
| 01 | Peculiarities of d = 1 | 1-28 | 15–42 | [`01_ch01_peculiarities_of_one_dimension_pdf015-042.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/01_ch01_peculiarities_of_one_dimension_pdf015-042.pdf) |
| 02 | Bosonization | 29-69 | 43–83 | [`02_ch02_bosonization_pdf043-083.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/02_ch02_bosonization_pdf043-083.pdf) |
| 03 | Luttinger Liquids | 70-99 | 84–113 | [`03_ch03_luttinger_liquids_pdf084-113.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/03_ch03_luttinger_liquids_pdf084-113.pdf) |
| 04 | Refinements | 100-136 | 114–150 | [`04_ch04_refinements_pdf114-150.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/04_ch04_refinements_pdf114-150.pdf) |
| 05 | Microscopic Methods | 137-159 | 151–173 | [`05_ch05_microscopic_methods_pdf151-173.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/05_ch05_microscopic_methods_pdf151-173.pdf) |
| 06 | Spin 1/2 Chains | 160-199 | 174–213 | [`06_ch06_spin_one_half_chains_pdf174-213.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/06_ch06_spin_one_half_chains_pdf174-213.pdf) |
| 07 | Interacting Fermions on a Lattice | 200-237 | 214–251 | [`07_ch07_interacting_fermions_on_a_lattice_pdf214-251.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/07_ch07_interacting_fermions_on_a_lattice_pdf214-251.pdf) |
| 08 | Coupled Fermionic Chains | 238-269 | 252–283 | [`08_ch08_coupled_fermionic_chains_pdf252-283.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/08_ch08_coupled_fermionic_chains_pdf252-283.pdf) |
| 09 | Disordered Systems | 270-302 | 284–316 | [`09_ch09_disordered_systems_pdf284-316.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/09_ch09_disordered_systems_pdf284-316.pdf) |
| 10 | Boundaries and Isolated Impurities | 303-332 | 317–346 | [`10_ch10_boundaries_and_isolated_impurities_pdf317-346.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/10_ch10_boundaries_and_isolated_impurities_pdf317-346.pdf) |
| 11 | Significant Others | 333-369 | 347–383 | [`11_ch11_significant_others_pdf347-383.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/11_ch11_significant_others_pdf347-383.pdf) |
| 12 | Appendix A: Basics of Many-Body Theory | 370-375 | 384–389 | [`12_appendix_a_basics_of_many_body_theory_pdf384-389.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/12_appendix_a_basics_of_many_body_theory_pdf384-389.pdf) |
| 13 | Appendix B: Not So Important Fine Technical Points | 376-379 | 390–393 | [`13_appendix_b_fine_technical_points_pdf390-393.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/13_appendix_b_fine_technical_points_pdf390-393.pdf) |
| 14 | Appendix C: Correlation Functions | 380-390 | 394–404 | [`14_appendix_c_correlation_functions_pdf394-404.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/14_appendix_c_correlation_functions_pdf394-404.pdf) |
| 15 | Appendix D: Bosonization Dictionary | 391-395 | 405–409 | [`15_appendix_d_bosonization_dictionary_pdf405-409.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/15_appendix_d_bosonization_dictionary_pdf405-409.pdf) |
| 16 | Appendix E: Sine-Gordon | 396-403 | 410–417 | [`16_appendix_e_sine_gordon_pdf410-417.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/16_appendix_e_sine_gordon_pdf410-417.pdf) |
| 17 | Appendix F: Numerical Solution | 404-407 | 418–421 | [`17_appendix_f_numerical_solution_pdf418-421.pdf`](../../References-Full/_slices/giamarchi_2004/chapters/17_appendix_f_numerical_solution_pdf418-421.pdf) |

<details>
<summary><strong>Full contents, including sections</strong></summary>

### 01 — Peculiarities of d = 1

- **1.1** Crash course on Fermi liquids — print p. 1
- **1.2** One dimension: Failure of perturbation theory — print p. 5
- **1.3** How to solve — print p. 14
  - **1.3.1** Dzyaloshinskii-Larkin solution — print p. 15
  - **1.3.2** Renormalization solution — print p. 21

### 02 — Bosonization

- **2.1** Spinless model; representation of excitations — print p. 29
- **2.2** Physical properties and correlation functions — print p. 37
  - **2.2.1** Thermodynamics — print p. 40
  - **2.2.2** Correlations — print p. 42
- **2.3** Model with spin; charge and spin excitations — print p. 50
  - **2.3.1** Physical observables — print p. 53
  - **2.3.2** Renormalization equations for sine-Gordon Hamiltonians — print p. 56
  - **2.3.3** Phase diagram — print p. 65

### 03 — Luttinger Liquids

- **3.1** Phenomenological bosonization — print p. 70
- **3.2** Semiclassical and physical interpretations — print p. 81
- **3.3** Links with 2D statistical mechanics — print p. 86
  - **3.3.1** Elastic systems — print p. 86
  - **3.3.2** Coulomb gas and XY model — print p. 91
- **3.4** Basics of conformal theory — print p. 94

### 04 — Refinements

- **4.1** Long-range interactions — print p. 100
- **4.2** Mott transition — print p. 106
  - **4.2.1** Basic ingredients — print p. 106
  - **4.2.2** Commensurate case: Luther-Emery solution — print p. 111
  - **4.2.3** Doping; C-IC transition — print p. 115
- **4.3** Effects of magnetic field and magnetic anisotropy — print p. 121
  - **4.3.1** Magnetic field — print p. 121
  - **4.3.2** Magnetic anisotropies — print p. 124
- **4.4** Logarithmic corrections of correlation functions — print p. 131

### 05 — Microscopic Methods

- **5.1** Bethe-ansatz — print p. 137
  - **5.1.1** Spin chain — print p. 138
  - **5.1.2** One, two, three — print p. 139
  - **5.1.3** Many; Bethe-ansatz — print p. 143
  - **5.1.4** Bethe-ansatz and Luttinger liquids — print p. 146
  - **5.1.5** Partial solution of the equations — print p. 148
- **5.2** A zest of numerics — print p. 153
  - **5.2.1** Exact diagonalizations — print p. 154
  - **5.2.2** Monte-Carlo — print p. 155
  - **5.2.3** DMRG — print p. 157

### 06 — Spin 1/2 Chains

- **6.1** Physical properties of the spin 1/2 chain — print p. 160
  - **6.1.1** Hamiltonian — print p. 160
  - **6.1.2** Bosonization solution — print p. 163
  - **6.1.3** Finite magnetic field — print p. 170
- **6.2** Extensions — print p. 175
  - **6.2.1** Frustrated chains — print p. 175
  - **6.2.2** Spin-Peierls — print p. 177
- **6.3** Experimental realization of spin chains — print p. 184
- **6.4** Coupled chains — print p. 188
  - **6.4.1** Spin ladders — print p. 189
  - **6.4.2** Infinite number of chains — print p. 196

### 07 — Interacting Fermions on a Lattice

- **7.1** Microscopic models — print p. 200
  - **7.1.1** Hubbard model — print p. 200
  - **7.1.2** t-J model — print p. 212
  - **7.1.3** U-V model and beyond — print p. 215
- **7.2** Transport — print p. 219
  - **7.2.1** Conductance, conductivity — print p. 219
  - **7.2.2** Clean case; persistent currents — print p. 223
  - **7.2.3** Mott insulator — print p. 228

### 08 — Coupled Fermionic Chains

- **8.1** Fermionic ladders — print p. 239
  - **8.1.1** Spinless ladders — print p. 239
  - **8.1.2** Ladders with spins — print p. 246
- **8.2** Physical realizations of Ladders — print p. 253
- **8.3** Infinite number of chains — print p. 254
  - **8.3.1** Hopping between chains — print p. 255
  - **8.3.2** Two-body hopping — print p. 258
- **8.4** Organic quasi-one-dimensional conductors — print p. 262

### 09 — Disordered Systems

- **9.1** Effect of disorder; Anderson localization — print p. 270
  - **9.1.1** Generalities on disordered systems — print p. 270
  - **9.1.2** Collective versus single individual pinning — print p. 275
- **9.2** Many impurities — print p. 276
  - **9.2.1** Basics — print p. 276
  - **9.2.2** Physical properties — print p. 285
  - **9.2.3** Extensions and pitfalls — print p. 296
- **9.3** Quantum wires — print p. 299

### 10 — Boundaries and Isolated Impurities

- **10.1** Effect of a boundary — print p. 303
- **10.2** Isolated impurities — print p. 307
  - **10.2.1** Weak coupling — print p. 308
  - **10.2.2** Strong coupling — print p. 310
  - **10.2.3** More than one impurity — print p. 318
- **10.3** Nanotubes — print p. 325
- **10.4** Edge states in quantum Hall systems — print p. 328

### 11 — Significant Others

- **11.1** Interacting one-dimensional bosons — print p. 333
  - **11.1.1** Commensurate bosons — print p. 337
  - **11.1.2** Disorder: Bose glass — print p. 339
  - **11.1.3** Experimental realizations — print p. 342
- **11.2** Impurities in Fermi liquids — print p. 346
  - **11.2.1** X-ray edge problem — print p. 347
  - **11.2.2** Kondo problem — print p. 355
  - **11.2.3** Multichannel Kondo problem — print p. 364

### 12 — Appendix A: Basics of Many-Body Theory

- **A.I** Notations and formulas — print p. 370
- **A.2** Digest of many-body — print p. 371

### 13 — Appendix B: Not So Important Fine Technical Points

- **B.I** Explicit form of U operators — print p. 376
- **B.2** Completness of Hilbert space — print p. 377

### 14 — Appendix C: Correlation Functions

- **C.I** Path integral — print p. 380
- **C.2** Basic correlations — print p. 381
- **C.3** Analytic continuation — print p. 387
- **C.4** Fourier transform of the retarded correlation function — print p. 389

### 15 — Appendix D: Bosonization Dictionary

- **D.1** Spinless fermions — print p. 391
- **D.2** Spin chains — print p. 392
- **D.3** Fermions with spins — print p. 393
- **D.4** Averages — print p. 393
- **D.5** Babel tower — print p. 394

### 16 — Appendix E: Sine-Gordon

- **E.1** Renormalization — print p. 396
- **E.2** Variational calculation — print p. 400
- **E.3** Semiclassical approximations — print p. 402

### 17 — Appendix F: Numerical Solution

- No lower-level entries are printed or bookmarked for this unit.

- References — print p. 408
- Index — print p. 421

</details>

## Maintenance rules

1. Add or update the checksum-bound TSV in [`chapter_maps/`](chapter_maps/).
2. Generate chapter PDFs with [`../infra/pdf_split_chapters.sh`](../infra/pdf_split_chapters.sh).
3. Record print and physical page ranges separately; never infer one from the other without a verified offset.
4. Keep links relative so the workplace and `References-Full` directories remain movable as sibling directories.
5. Treat OCR-derived titles as transcription data and verify unclear mathematical symbols against the scanned TOC page.
