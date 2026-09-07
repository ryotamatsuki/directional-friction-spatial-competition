import Mathlib

namespace DirectionalFriction.Welfare

/-- Algebraic step behind the paper's private/social wedge identity.
    If retail FOCs imply `p_L-p_R = (2x-1) C''(x)` and shopper indifference
    implies `p_L-p_R + C'(x) = 0`, then equation (35) follows. -/
theorem wedge_identity_of_price_conditions
    {x pDiff Cp Cpp : ℝ}
    (hFOC : pDiff = (2 * x - 1) * Cpp)
    (hDemand : pDiff + Cp = 0) :
    Cp = -(2 * x - 1) * Cpp := by
  rw [hFOC] at hDemand
  linarith

/-- T5 sign implication for an equilibrium share above one half. -/
theorem wedge_points_toward_L
    {x Cp Cpp : ℝ}
    (hwedge : Cp = -(2 * x - 1) * Cpp)
    (hx : (1 / 2 : ℝ) < x)
    (hconvex : 0 < Cpp) :
    Cp < 0 := by
  have hshare : 0 < 2 * x - 1 := by
    linarith
  have hprod : 0 < (2 * x - 1) * Cpp := mul_pos hshare hconvex
  rw [hwedge]
  linarith

/-- Symmetric T5 sign implication for an equilibrium share below one half. -/
theorem wedge_points_toward_R
    {x Cp Cpp : ℝ}
    (hwedge : Cp = -(2 * x - 1) * Cpp)
    (hx : x < (1 / 2 : ℝ))
    (hconvex : 0 < Cpp) :
    0 < Cp := by
  have hshare : 2 * x - 1 < 0 := by
    linarith
  have hprod : (2 * x - 1) * Cpp < 0 := mul_neg_of_neg_of_pos hshare hconvex
  rw [hwedge]
  linarith

/-- The local private/social wedge vanishes at a symmetric share. -/
theorem wedge_vanishes_at_half
    {Cp Cpp : ℝ}
    (hwedge : Cp = -(2 * (1 / 2 : ℝ) - 1) * Cpp) :
    Cp = 0 := by
  norm_num at hwedge ⊢
  exact hwedge

end DirectionalFriction.Welfare
