import AmGm.Basic

namespace AmGm

example : Real.sqrt (4 * 9) ≤ (4 + 9) / 2 := am_gm (by norm_num) (by norm_num)

example (x : ℝ) : x * x = ((x + x) / 2) ^ 2 := (mul_eq_sq_avg_iff x x).mpr rfl

end AmGm
