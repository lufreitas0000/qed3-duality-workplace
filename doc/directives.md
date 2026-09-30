# Project Directives and Architectural Standards

## 1. Project Objective
Constructive, step-by-step research, verification, and pedagogical exposition of the duality between a free $(2+1)$D Dirac cone and $N=1$ $\mathrm{QED}_3$ (Mross, Alicea, Motrunich, `arXiv:1510.08455`), built from first principles starting from constructive $(1+1)$D bosonization (Miranda, `Braz. J. Phys. 33, 3 (2003)` and von Delft & Schoeller, `cond-mat/9805275`).

## 2. Two-Repository Workflow (Two-Phase Execution)
1. **Phase 1 — Research & Development (`workplace` repository):**
   - Break each chapter into orthogonal verification modules inside `workplace/src/chXX/`.
   - Every derivation is written as a minimal, self-contained atomic `.tex` file based on `workplace/infra/tpl_draft.tex`.
   - No algebraic step, index shift, normal-ordering subtraction, contour integral, or commutator may be skipped.
   - Where finite-size sums, matrix identities (e.g., $D^2 = \mathbb{I}$, $\Delta D = -P\Delta$), or dispersion plots require verification, write standalone Julia or Python scripts in `workplace/tests/chXX/`.
   - A module is marked `VERIFIED` only when all lemmas, propositions, and theorems are constructively proven and cross-checked against the primary literature.
2. **Phase 2 — Pedagogical Synthesis (`book` repository):**
   - Only after all modules of a chapter are `VERIFIED` in `workplace/` are they synthesized into `book/src/chXX/main.tex` (pedagogical narrative, physical intuition, theorem statements) and `book/src/chXX/app.tex` (exhaustive line-by-line algebraic proofs).
   - `workplace/` draft files remain intact as a permanent audit trail.

## 3. Global Mathematical and Notational Standards
All chapters and modules must strictly adhere to **Miranda's normalization convention**:

1. **Fermion Fields ($\nu \in \{R, L\}$ or wire index $y$):**
   $$\psi_{R,L}(x) = \frac{1}{\sqrt{L}} \sum_{k=-\infty}^{+\infty} e^{\pm i k x} c_k^{R,L}, \qquad \{\psi_\nu(x), \psi_{\nu'}^\dagger(y)\} = \delta_{\nu,\nu'} \delta(x-y) \quad (\vert{}x-y\vert{} < L).$$
   *Translation Warning:* von Delft & Schoeller (vDS) use $\psi_{\mathrm{vDS}} = \sqrt{2\pi}\psi_{\mathrm{Book}}$. Rescale all vDS fermion correlators and OPEs by $2\pi$.

2. **Momentum Quantization and Boundary Conditions:**
   $$k = \frac{2\pi}{L}\left(n_k - \frac{1}{2}\delta_b\right), \qquad n_k \in \mathbb{Z}, \quad \delta_b \in [0, 2).$$
   - Chapter 1 uses $\delta_b = 0$ (periodic fermions, $H_{0\nu} \supset \frac{\pi v_F}{L}\hat{N}_\nu(\hat{N}_\nu + 1)$).
   - Chapters 2–4 explicitly track $\delta_b$ so that $\delta_b = 1$ (anti-periodic fermions) yields $H_{0\nu} \supset \frac{\pi v_F}{L}\hat{N}_\nu^2$.

3. **Bosonic Creation/Annihilation Operators ($q = \frac{2\pi}{L}n_q > 0$, $n_q \in \mathbb{Z}^+$):**
   $$\rho_\nu(q) = \sum_k c_{k+q}^{\nu\dagger} c_k^\nu, \qquad b_q^R = \sqrt{\frac{2\pi}{Lq}}\rho_R(-q), \qquad b_q^{R\dagger} = \sqrt{\frac{2\pi}{Lq}}\rho_R(q), \qquad [b_q^\nu, b_{q'}^{\nu'\dagger}] = \delta_{\nu,\nu'}\delta_{q,q'}.$$

4. **Chiral Bosonic Fields ($\alpha \to 0^+$ UV cutoff):**
   $$\varphi_{R,L}(x) = \frac{i}{\sqrt{L}}\sum_{q>0} \frac{e^{\pm iqx}}{\sqrt{q}} e^{-\alpha q/2} b_q^{R,L}, \qquad \phi_{R,L}(x) = \varphi_{R,L}(x) + \varphi_{R,L}^\dagger(x).$$
   *Commutators ($\vert{}x-y\vert{} \ll L$, $\alpha \to 0^+$):*
   $$[\phi_{R,L}(x), \phi_{R,L}(y)] = \pm \frac{i}{2}\mathrm{sgn}(x-y) \mp \frac{i}{L}(x-y), \qquad [\phi_{R,L}(x), \partial_y\phi_{R,L}(y)] = \mp i\delta(x-y) \pm \frac{i}{L}.$$
   *Translation Warning:* vDS and Mross-Alicea-Motrunich (MAM) absorb $\sqrt{2\pi}$ into $\phi$. To translate: $\phi_{\mathrm{vDS}} = \sqrt{2\pi}\phi_{\mathrm{Book}}$ and $\phi_{y,\mathrm{MAM}} = -\sqrt{2\pi}\phi_{y,\mathrm{Book}}$.

5. **Mattis-Mandelstam Bosonization Identity:**
   $$\psi_{R,L}(x) = \frac{F_{R,L}}{\sqrt{L}} e^{\pm i \frac{2\pi \hat{N}_{R,L}}{L}x} e^{-i\sqrt{2\pi}\varphi_{R,L}^\dagger(x)} e^{-i\sqrt{2\pi}\varphi_{R,L}(x)} = \frac{F_{R,L}}{\sqrt{2\pi\alpha}} e^{\pm i \frac{2\pi \hat{N}_{R,L}}{L}x} e^{-i\sqrt{2\pi}\phi_{R,L}(x)}.$$

6. **Chiral Densities and Canonical Dual Fields:**
   $$:\psi_{R,L}^\dagger(x)\psi_{R,L}(x): = \frac{\hat{N}_{R,L}}{L} \mp \frac{1}{\sqrt{2\pi}}\partial_x\phi_{R,L}(x),$$
   $$\phi(x) = \frac{1}{\sqrt{2}}(\phi_L(x) - \phi_R(x)), \qquad \theta(x) = \frac{1}{\sqrt{2}}(\phi_L(x) + \phi_R(x)), \qquad [\phi(x), \partial_y\theta(y)] = i\delta(x-y) - \frac{i}{L}.$$

## 4. Writing and Formatting Rules
- **Context -> Definition -> Lemma -> Theorem -> Proof -> Corollary -> Connections:** Follow this strict mathematical sequence in all notes.
- **No Custom LaTeX Symbol Macros:** Do not define custom shorthand macros (e.g., `\be`, `\ee`, `\im`, `\d`) in draft files; use standard LaTeX (`\begin{equation}`, `\partial`, `i`, `\dagger`) to guarantee zero macro collisions when merging files into `book/`.
- **Dynamic TOC Versioning (`TOC_X.Y.Z.md`):**
  - `MAJOR` (`X`): Structural addition, deletion, or reordering of chapters.
  - `MINOR` (`Y`): Addition/splitting of sections or new R&D appendix modules.
  - `PATCH` (`Z`): Title refinements or notation updates.
  - When updating the TOC, create a new file `TOC_X.Y.Z.md`, record the diff in its Changelog section, and update the symlink `TOC_latest.md`.
