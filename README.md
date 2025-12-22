# AM–GM Inequality (two variables)

`√(ab) ≤ (a + b) / 2` for non-negative reals, with the equality case.

Formalised in Lean 4 with Mathlib. No `sorry`.

## Proof outline

1. `0 ≤ (x - y)²` expands to `2xy ≤ x² + y²`.
2. Rearranged, `ab ≤ ((a + b) / 2)²`.
3. For `0 ≤ a, b` the mean is non-negative, so taking square roots gives `√(ab) ≤ (a + b) / 2`.
4. Equality forces `(a - b)² = 0`, i.e. `a = b`.

## Contents

- [`AmGm/Basic.lean`](AmGm/Basic.lean): the main development
- [`AmGm/Examples.lean`](AmGm/Examples.lean): small worked examples

Declarations:

- `AmGm.two_mul_le_add_sq`
- `AmGm.mul_le_sq_avg`
- `AmGm.am_gm`
- `AmGm.mul_eq_sq_avg_iff`

## Build

```
lake exe cache get
lake build
```

Toolchain: `leanprover/lean4:v4.33.0-rc1`.
