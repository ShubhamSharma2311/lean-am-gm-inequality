import Mathlib

/-!
# AM–GM for two non-negative reals

Everything follows from `0 ≤ (a - b) ^ 2`.
-/

namespace AmGm

/-- `2xy ≤ x² + y²` for all reals. -/
lemma two_mul_le_add_sq (x y : ℝ) : 2 * x * y ≤ x ^ 2 + y ^ 2 := by
  nlinarith [sq_nonneg (x - y)]

/-- Squared form: `ab ≤ ((a + b) / 2)²`. -/
lemma mul_le_sq_avg (a b : ℝ) : a * b ≤ ((a + b) / 2) ^ 2 := by
  nlinarith [two_mul_le_add_sq a b]

/-- **AM–GM.** `√(ab) ≤ (a + b) / 2` for `0 ≤ a, b`. -/
theorem am_gm {a b : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b) : Real.sqrt (a * b) ≤ (a + b) / 2 := by
  sorry

end AmGm
