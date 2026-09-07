import Mathlib

/-!
# Core local price-reaction algebra

Lean encoding of the local best-response formulas and sign implications used in
Section 3 of the frozen manuscript.
-/

namespace DirectionalFriction

noncomputable section

/-- Local best-response slope of retailer L on a stable slack-service branch.
    Paper equation (15). -/
def brL (g gp x : ℝ) : ℝ :=
  (g + x * gp) / (2 * g + x * gp)

/-- Local best-response slope of retailer R on a stable slack-service branch.
    Paper equation (16). -/
def brR (g gp x : ℝ) : ℝ :=
  (g - (1 - x) * gp) / (2 * g - (1 - x) * gp)

/-- The sign claim in Lemma 1 for L is purely algebraic once the SOC denominator
    is positive and the reaction numerator is negative. -/
theorem brL_neg_of_local_conditions {g gp x : ℝ}
    (hnum : g + x * gp < 0)
    (hden : 0 < 2 * g + x * gp) :
    brL g gp x < 0 := by
  exact div_neg_of_neg_of_pos hnum hden

/-- The sign claim in Lemma 1 for R is purely algebraic once the SOC denominator
    and reaction numerator are positive. -/
theorem brR_pos_of_local_conditions {g gp x : ℝ}
    (hnum : 0 < g - (1 - x) * gp)
    (hden : 0 < 2 * g - (1 - x) * gp) :
    0 < brR g gp x := by
  exact div_pos hnum hden

/-- With zero curvature of the demand-mediated service effect (`g' = 0`),
    both local price reactions reduce to the standard one-half benchmark. -/
theorem fixed_curvature_reactions {g x : ℝ} (hg : g ≠ 0) :
    brL g 0 x = (1 / 2 : ℝ) ∧ brR g 0 x = (1 / 2 : ℝ) := by
  constructor <;>
    simp only [brL, brR, mul_zero, add_zero, sub_zero] <;>
    field_simp [hg]

end

end DirectionalFriction
