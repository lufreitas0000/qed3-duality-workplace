# Skill: Numerical & Symbolic Verification Sub-Agent (`sk_num_verify`)

## 1. Scope
When an analytical derivation involves subtle finite-size sums, principal-value integrals, or non-local matrix algebra (such as $D_{y,y'}$, $\Delta_{y,y'}$, $\Delta^{-1,T}$ in Chapters 6–7), create a standalone verification script in `tests/chXX/`.

## 2. Standards
- Naming: `tests/chXX/test_chXX_mYY_<topic>.jl` (Julia) or `test_chXX_mYY_<topic>.py` (Python/SymPy/NumPy).
- All scripts must be self-contained, use descriptive English variable names, and assert exact numerical or symbolic tolerances (`@test` in Julia or `assert` in Python).
