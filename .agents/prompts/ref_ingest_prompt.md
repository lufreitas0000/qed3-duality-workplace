# Reference Ingestion Instructions for Librarian Agents

You are a Librarian Agent. Your task is to convert portions of complex textbooks and papers into markdown slices for our Workspace Agent. **Do not summarize the whole text**. Follow the waves and the table below to target specific chapters, producing one markdown file per logical module.

## Wave 1: Core QM/Math and Sprint 0 Foundations

| # | Reference | Ingest | Serves |
|---|---|---|---|
| 1 | **Miranda 2003** (Braz. J. Phys.) | All: Secs. I-XIII and Apps. A-C | Ch. 1 |
| 2 | **Hall, *Quantum Theory for Mathematicians*** | The chapters on the Hilbert-space axioms, the spectral theorem (bounded and unbounded), self-adjoint extensions, the harmonic oscillator, the uncertainty principle, and the Stone-von Neumann theorem (about Chs. 3, 6-12, 14 **(U)**). Skip WKB, the hydrogen atom, and the path-integral chapter. | chC m01-m06, chB m04-m07 |
| 3 | **Tasaki** | The mathematical-QM and many-body chapters (tensor products, Fock space, CAR/CCR), then the spin and Hubbard chapters (Jordan-Wigner, XXZ, Hubbard at finite L) **(U)**. Also the Lieb-Robinson and Lieb-Schultz-Mattis statements. Skip ferromagnetism and Néel-order proofs. | chC m07-m09, m12-m14 |
| 4 | **Bratteli-Robinson vol. 1** | The C\*/von Neumann algebra basics (Ch. 2), then the CCR/CAR algebras, Fock representations, and quasi-free states (Ch. 5) **(U)** | chB m08-m10, chC m08 |
| 5 | **Reed-Simon I** | Hilbert and Banach spaces, bounded operators, the spectral theorem, unbounded operators, Stone's theorem, and the distribution chapter **(U)** | chA m01-m03, chB m01-m07 |

## Wave 2: Sprint 1 completion and Part 0 analysis

| # | Reference | Ingest | Serves |
|---|---|---|---|
| 6 | **Reed-Simon II** | Fourier analysis and the essential self-adjointness criteria (Chs. IX, X **(U)**) | chA m05-m09, chB m05 |
| 7 | **Carey-Hurst-O'Brien**, **Carey-Ruijsenaars** | Shale-Stinespring criterion, implementability, and Schwinger terms on Fock space | chC m10-m11, chE m03 |
| 8 | **Bratteli-Robinson vol. 2** | KMS states and quasi-free thermal states (Ch. 5 **(U)**), plus the CAR Bogoliubov-automorphism material | chC m10, m15 |
| 9 | **Lieb-Mattis 1965** and **Mattis-Mandelstam** | Whole papers, as the precursors of Ch. 1.6 | Ch. 1 |
| 10 | **Shale 1962**, **Schwinger 1959** | Whole papers, short | chC m11, chF m06 |

## Wave 3: Sprint 2-4 and the Bridge chapters

| # | Reference | Ingest | Serves |
|---|---|---|---|
| 11 | **von Delft-Schoeller 1998** | All: Secs. 1-9 | Ch. 3, 4 |
| 12 | **Haldane 1981** (J. Phys. C) | The Luttinger-liquid paper, whole | Ch. 2 |
| 13 | **Di Francesco-Mathieu-Sénéchal** | See the list below | chG, chE |
| 14 | **Kac, *Infinite-Dimensional Lie Algebras*** | Heisenberg, affine algebras, and the Virasoro algebra, at a chapter level only **(U)** | chE m03-m07 |
| 15 | **Pressley-Segal, *Loop Groups*** | The basic representation and the boson-fermion correspondence (about Chs. 9-10 **(U)**) | chE m08-m09 |
| 16 | **Kac, *Vertex Algebras for Beginners*** | The lattice vertex operators, locality, and OPE chapters; also Frenkel-Ben-Zvi for the same topics | chE m10-m11 |

For **Di Francesco**, take these, in this order. Numbers are **(U)**:
1. Conformal invariance in d dimensions: conformal group, Ward identities, primaries (Chs. 4-5).
2. 2D operator formalism: radial quantization, OPE, Virasoro (Ch. 6).
3. Free boson and free fermion, including bosonization (Chs. 7-8).
4. Torus partition functions and modular invariance (Chs. 10-11).
5. Kac-Moody algebras and Sugawara (Chs. 14-15).

Skip minimal models, coset constructions, WZW details, and the Coulomb-gas minimal-model material.

## Wave 4: groups, QFT axioms, and Sprints 5-7

| # | Reference | Ingest | Serves |
|---|---|---|---|
| 17 | **Hall, *Lie Groups, Lie Algebras, and Representations*** | Lie groups/algebras, the exponential map, BCH, su(2), and representations (early chapters) | chD m01-m04 |
| 18 | **Weinberg vol. 1** | Wigner's theorem, the Poincaré classification, and discrete symmetries (Chs. 2, 5 **(U)**) | chD m05-m07, chF m07 |
| 19 | **Streater-Wightman**, **Haag** | The Wightman axioms and Haag-Kastler nets (overview only) | chF m01-m02 |
| 20 | **Glimm-Jaffe** | Free fields and Osterwalder-Schrader material | chF m03-m04, m09 |
| 21 | **Mickelsson** | Anomalies, Schwinger terms, and parity anomaly in operator language | chF m08 |
| 22 | **Mross-Alicea-Motrunich** and related coupled-wire papers | Whole papers, including the appendices | Ch. 5-7 |
| 23 | **Son 2015**, **Seiberg-Senthil-Wang-Witten 2016**, **Metlitski-Vishwanath**, **Wang-Senthil** | The sections on the Dirac composite Fermi liquid, the duality web, and the T-Pfaffian | Ch. 8-9 |

## Wave 5: optional companions

Consult these on demand rather than ingesting them: Takesaki, Kadison-Ringrose, Schottenloher, Gawędzki's lectures, Giamarchi, Gogolin-Nersesyan-Tsvelik, Shankar, Fradkin. Giamarchi and Shankar are the best models for the pedagogical tone of the book.

## Rules for the Librarian agent

1. Start every slice by reading the edition's table of contents, then replace each **(U)** with the verified chapter and section numbers.
2. Write each slice in your own words, using the template: Scope, Definitions, Statements, Proof sketches, Equation map, Conventions vs ours, Modules served, Open doubts.
3. For each slice, record the reference's conventions (Fourier sign, sign of [x,p], normal ordering) next to ours. Convention drift between sources is the main source of errors in Ch. 1-3.
4. Ingest Waves 1-2 before starting chC and Sprint 1. Wave 3 can wait until Sprint 2, and Wave 4 until Sprint 5.
