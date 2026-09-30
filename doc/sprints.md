# R&D Sprints, Mathematical SOLID Architecture, and PDD/TDD Roadmap

## 1. Adaptation of SOLID, Categorical Architecture, and TDD to Theoretical Physics

### 1.1 Categorical Framing of Mathematical Physics Modules
- **Objects (Domain Entities):** Explicit Hilbert/Fock spaces ($\mathcal{H} = \bigoplus_{N \in \mathbb{Z}} \mathcal{H}_N$, $\mathcal{F}_c$, $\mathcal{F}_b$) and $\mathbb{Z}_2$-graded operator algebras equipped with explicit UV ($\alpha \to 0^+$) and IR ($L \to \infty$) regulators.
- **Morphisms (Pure Rules / Isomorphisms):** Exact algebraic homomorphisms and unitary maps (Fourier transformation, normal-ordering functor $: \cdot :$, Mattis-Mandelstam bosonization map $\Phi_{\mathrm{bos}}$, Bogoliubov unitary $U_B$, Jordan-Wigner transformation, non-local wire duality $D_{y,y'}$).
- **Infrastructure (Effectful Layer):** Strictly isolated in `infra/` and `tests/` (LaTeX compilation `compile_tex.sh`, log auditing, Julia/Python numerical scripts, Git persistence `git_sync.sh`).

### 1.2 Mathematical SOLID Principles
1. **Single Responsibility Principle (SRP):** Each module `.tex` file (`src/chXX/chXX_mYY_*.tex`) and its paired 1-to-1 reference slice (`../archive/light/.../ref_chXX_mYY_*.md`) covers **one** cohesive mathematical stage.
2. **Open/Closed Principle (OCP):** Once a module passes all verification gates and is marked `VERIFIED`, its operator definitions and proven theorems become **immutable contracts** (closed for modification, open for citation/extension by downstream modules).
3. **Liskov Substitution Principle (LSP):** Any operator identity (e.g., $\psi_\nu(x)$ or $\rho_\nu(x)$) must preserve all canonical commutators, Hermiticity, periodicity, and $1/L$ finite-size scalings when substituted into composite operators ($H_0$, $H_{\mathrm{int}}$, or correlation functions).
4. **Interface Segregation Principle (ISP):** Sub-agents in a chat session receive *only* the single module reference file `ref_chXX_mYY_*.md` and `.agents/skills/sk_rd_derivation.md`, eliminating context-window pollution.
5. **Dependency Inversion Principle (DIP):** High-level physical phenomena (Luttinger liquid exponents, spin-charge separation, $\mathrm{QED}_3$ duality) must be derived from abstract algebraic contracts (current algebra $[\rho(p),\rho(q)]$, BCH identities, discrete difference algebra $\Delta D = -P\Delta$) rather than continuum heuristics.

### 1.3 Proof-Driven & Test-Driven Derivation (PDD / Mathematical TDD)
Every module executes a 3-step **Red -> Green -> Refactor** cycle:
1. **Red Phase (Falsifiable Specification):** Before writing prose, declare the target theorem/identity and its falsifiable boundary tests:
   - *Test 1 (Hermiticity & Adjoint):* Does the derived operator/correlator satisfy $O^\dagger = O$ or expected conjugation symmetry?
   - *Test 2 (Dimensional & Cutoff Scaling):* Do powers of $L$ and $\alpha$ match canonical dimensions?
   - *Test 3 (Limiting Case):* Does $g \to 1$ recover free fermions? Does $\alpha \to 0^+$ at finite $L$ recover periodic delta combs?
   - *Test 4 (Numerical/Symbolic Check):* If finite-size sums or matrix identities are involved, write a test in `tests/chXX/`.
2. **Green Phase (Constructive Proof):** Execute the line-by-line derivation with zero skipped steps until all Red-Phase tests and `./infra/compile_tex.sh` pass with zero warnings.
3. **Refactor Phase (Clean Audit):** Ensure zero custom LaTeX macros, update status to `VERIFIED`, and commit via `./infra/git_sync.sh`.

---

## 2. R&D Sprint Backlog

### Sprint 1: Constructive 1D Bosonization Engine (Chapter 1 — Miranda Sec. I–XIII)
- **Sprint Goal:** Constructively prove the complete 1D bosonization dictionary at finite $L$ and finite UV cutoff $\alpha > 0$.
- **Deliverable Modules (`src/ch01/`):**
  - [ ] `ch01_m01_lattice_continuum_fock.tex` (Ref: `ref_ch01_m01_sec01_04_appA.md`)
  - [ ] `ch01_m02_current_algebra_klein.tex` (Ref: `ref_ch01_m02_sec05_07.md`)
  - [ ] `ch01_m03_mattis_mandelstam.tex` (Ref: `ref_ch01_m03_sec08_appBC.md`)
  - [ ] `ch01_m04_bosonic_fields_hamiltonian.tex` (Ref: `ref_ch01_m04_sec09_10.md`)
  - [ ] `ch01_m05_two_branches_dual_fields.tex` (Ref: `ref_ch01_m05_sec11_13.md`)

### Sprint 2: Interacting 1D Liquids, Spin Chains & Sine-Gordon (Chapter 2 — Miranda Sec. XIV–XVIII)
- **Sprint Goal:** Solve the spinless and spinful Luttinger models via Bogoliubov rotation, compute all correlation exponents and Green's functions, bosonize the XXZ chain, and analyze sine-Gordon gaps.
- **Deliverable Modules (`src/ch02/`):**
  - [ ] `ch02_m01_spinless_luttinger_bogoliubov.tex` (Ref: `ref_ch02_m01_sec14_1_appD.md`)
  - [ ] `ch02_m02_spinless_correlators_greens.tex` (Ref: `ref_ch02_m02_sec14_2.md`)
  - [ ] `ch02_m03_xxz_chain_haldane_conjecture.tex` (Ref: `ref_ch02_m03_sec15_16.md`)
  - [ ] `ch02_m04_spinful_luttinger_sine_gordon.tex` (Ref: `ref_ch02_m04_sec17_18_appE.md`)

### Sprint 3: Rigorous Completeness, Vertex Algebras & Green's Functions (Chapter 3 — vDS Sec. 1–8)
- **Sprint Goal:** Prove $Z_c = Z_b$ via Jacobi's triple product, resolve the $\delta_b$ zero-mode energy, derive vertex OPEs and thermal/finite-$L$ Green's functions, and build the 5-way notation dictionary.

### Sprint 4: Constructive Finite-Size Refermionization & Impurity Scattering (Chapter 4 — vDS Sec. 9–10)
- **Sprint Goal:** Constructively refermionize the $g=1/2$ Luttinger liquid with an impurity at finite $L$, diagonalize $H'_+$, prove $\rho_{\mathrm{dos}}(\omega) \sim \omega$, and resolve the Coulomb gas sign problem.

### Sprint 5: Quantum Hall Edges, TIs & Coupled-Wire Dirac Cone (Chapter 5 — Legacy + MAM Setup)
- **Sprint Goal:** Migrate and expand `dualidade.tex` and `TCC_English` with MAM Appendices A, G, H to establish the coupled-wire Dirac model and its discrete symmetries ($\mathcal{T}, \mathcal{C}, \mathcal{I}, \mathcal{M}$).

### Sprint 6: Non-Local Wire Duality & Path-Integral $\mathrm{QED}_3$ Derivation (Chapters 6–7 — MAM Core)
- **Sprint Goal:** Prove the staggered CS gauge anomaly cancellation, matrix algebra of $D, \Delta, S, P$, dual fermion locality, and Hubbard-Stratonovich path-integral derivation of $N=1$ $\mathrm{QED}_3$ with $A_\mu \neq 0$.

### Sprint 7: $\mathrm{QED}_3$ Predictions, $\nu=1/2$ CFL, T-Pfaffian & $N=2$ BTI Web (Chapters 8–9 — MAM + Seiberg et al.)
- **Sprint Goal:** Derive $\Delta_m = 2$, dual current correlators, Son's $\nu=1/2$ Dirac CFL, the 6-wire T-Pfaffian parent Hamiltonian, $N=2$ $\mathrm{QED}_3$ / BTI duality, and flux-quantized $\mathrm{spin}_c$ completions.
