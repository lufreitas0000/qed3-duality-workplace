# Skill: Constructive R&D Derivation Sub-Agent (`sk_rd_derivation`)

## 1. Mathematical Rigor & Pedagogical Sequence
Every module file `src/chXX/chXX_mYY_<topic>.tex` must follow the strict mathematical sequence:
1. **Premises & Notation:** Explicit declaration of system size $L$, UV cutoff $\alpha \to 0^+$, boundary condition parameter $\delta_b \in [0, 2)$, and Hilbert/Fock space domain.
2. **Definitions:** Unambiguous operator definitions with domain and index restrictions (e.g., $q = \frac{2\pi}{L}n_q > 0$).
3. **Lemmas, Propositions, and Theorems:** Formal statements of all intermediate and main identities.
4. **Constructive Proofs:** Line-by-line derivations. Never write "it is easy to show" or skip intermediate lines. Explicitly write out every index relabeling, normal-ordering subtraction $:AB: = AB - \langle AB \rangle_0$, Baker-Campbell-Hausdorff (BCH) step, and order of limits ($\alpha \to 0^+$ vs. $L \to \infty$).
5. **Verification & Edge-Case Audit:** Check Hermiticity, dimensional consistency, and exact agreement with target equations in the reference vault (`../references-lightweight/`).

## 2. Global Notation Standard (Miranda Convention)
All derivations across Chapters 1–9 must use **E. Miranda's normalization**:

- **Fermion Fields ($\nu \in \{R, L\}$):**
  $$\psi_{R,L}(x) = \frac{1}{\sqrt{L}} \sum_{k=-\infty}^{+\infty} e^{\pm i k x} c_k^{R,L}, \qquad \{\psi_\nu(x), \psi_{\nu'}^\dagger(y)\} = \delta_{\nu,\nu'} \delta(x-y) \quad (\vert{}x-y\vert{} < L).$$
  *(Conversion from von Delft & Schoeller: $\psi_{\mathrm{vDS}} = \sqrt{2\pi}\psi_{\mathrm{Book}}$).*

- **Momentum Quantization:**
  $$k = \frac{2\pi}{L}\left(n_k - \frac{1}{2}\delta_b\right), \qquad n_k \in \mathbb{Z}, \quad \delta_b \in [0, 2).$$
  *(In Ch. 1, $\delta_b = 0$ yields zero-mode energy $\frac{\pi v_F}{L}\hat{N}_\nu(\hat{N}_\nu + 1)$; in Ch. 2–4, $\delta_b = 1$ yields $\frac{\pi v_F}{L}\hat{N}_\nu^2$).*

- **Density Fluctuation & Boson Operators ($q = \frac{2\pi}{L}n_q > 0$):**
  $$\rho_\nu(q) = \sum_k c_{k+q}^{\nu\dagger} c_k^\nu, \qquad b_q^{R,L} = \sqrt{\frac{2\pi}{Lq}}\rho_{R,L}(\mp q), \qquad b_q^{R,L\dagger} = \sqrt{\frac{2\pi}{Lq}}\rho_{R,L}(\pm q).$$

- **Chiral Bosonic Fields ($\alpha \to 0^+$):**
  $$\varphi_{R,L}(x) = \frac{i}{\sqrt{L}}\sum_{q>0} \frac{e^{\pm iqx}}{\sqrt{q}} e^{-\alpha q/2} b_q^{R,L}, \qquad \phi_{R,L}(x) = \varphi_{R,L}(x) + \varphi_{R,L}^\dagger(x).$$
  $$[\phi_{R,L}(x), \phi_{R,L}(y)] = \pm \frac{i}{2}\mathrm{sgn}(x-y) \mp \frac{i}{L}(x-y), \qquad [\phi_{R,L}(x), \partial_y\phi_{R,L}(y)] = \mp i\delta(x-y) \pm \frac{i}{L}.$$
  *(Conversion: $\phi_{\mathrm{vDS}} = \sqrt{2\pi}\phi_{\mathrm{Book}}$ and $\phi_{y,\mathrm{MAM}} = -\sqrt{2\pi}\phi_{y,\mathrm{Book}}$).*

- **Mattis-Mandelstam Identity & Chiral Density:**
  $$\psi_{R,L}(x) = \frac{F_{R,L}}{\sqrt{L}} e^{\pm i \frac{2\pi \hat{N}_{R,L}}{L}x} e^{-i\sqrt{2\pi}\varphi_{R,L}^\dagger(x)} e^{-i\sqrt{2\pi}\varphi_{R,L}(x)} = \frac{F_{R,L}}{\sqrt{2\pi\alpha}} e^{\pm i \frac{2\pi \hat{N}_{R,L}}{L}x} e^{-i\sqrt{2\pi}\phi_{R,L}(x)},$$
  $$:\psi_{R,L}^\dagger(x)\psi_{R,L}(x): = \frac{\hat{N}_{R,L}}{L} \mp \frac{1}{\sqrt{2\pi}}\partial_x\phi_{R,L}(x).$$

- **Canonical Dual Fields:**
  $$\phi(x) = \frac{1}{\sqrt{2}}\big(\phi_L(x) - \phi_R(x)\big), \qquad \theta(x) = \frac{1}{\sqrt{2}}\big(\phi_L(x) + \phi_R(x)\big), \qquad \Pi(x) = \partial_x\theta(x).$$

## 3. Strict LaTeX Hygiene
- Never define custom shorthand macros (`\be`, `\ee`, `\im`, `\d`, `\half`). Use standard `amsmath`/`mathtools` environments so modules merge into `../book/` without macro collisions.
