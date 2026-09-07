import Mathlib

/-!
# Operator allocation

Phase 2 formalization of the slack-floor fixed-fleet operator problem in the
frozen directional-friction model.  The proof is global: the square-root
allocation is obtained from an exact nonnegative-square decomposition rather
than assumed from a first-order condition.
-/

namespace DirectionalFriction.Operator

noncomputable section

/-- Passenger demand in the L direction. -/
def demandL (M x : ℝ) : ℝ := M + x

/-- Passenger demand in the R direction. -/
def demandR (x : ℝ) : ℝ := 1 - x

/-- Aggregate waiting cost after normalizing the common factor `w/F` and
    writing `s=f_L/F` for L's service share. -/
def operatorCost (M x s : ℝ) : ℝ :=
  demandL M x / s + demandR x / (1 - s)

/-- Unconstrained L service share in the canonical `w/f` model. -/
def unconstrainedShare (M x : ℝ) : ℝ :=
  Real.sqrt (demandL M x) /
    (Real.sqrt (demandL M x) + Real.sqrt (demandR x))

/-- Normalized minimized aggregate waiting cost on the slack-floor branch. -/
def minimizedCost (M x : ℝ) : ℝ :=
  (Real.sqrt (demandL M x) + Real.sqrt (demandR x)) ^ 2

/-- Exact square decomposition behind the global operator optimum. -/
theorem square_decomposition {M x s : ℝ}
    (hL : 0 ≤ demandL M x)
    (hR : 0 ≤ demandR x)
    (hs0 : s ≠ 0)
    (hs1 : 1 - s ≠ 0) :
    operatorCost M x s - minimizedCost M x =
      (Real.sqrt (demandL M x) * (1 - s) -
        Real.sqrt (demandR x) * s) ^ 2 / (s * (1 - s)) := by
  have hsqL : (Real.sqrt (demandL M x)) ^ 2 = demandL M x := by
    exact Real.sq_sqrt hL
  have hsqR : (Real.sqrt (demandR x)) ^ 2 = demandR x := by
    exact Real.sq_sqrt hR
  have hprod : s * (1 - s) ≠ 0 := mul_ne_zero hs0 hs1
  field_simp [operatorCost, minimizedCost, hprod]
  nlinarith

/-- Every interior allocation has cost at least the square-root minimum. -/
theorem cost_ge_minimized {M x s : ℝ}
    (hL : 0 ≤ demandL M x)
    (hR : 0 ≤ demandR x)
    (hs0 : 0 < s)
    (hs1 : s < 1) :
    minimizedCost M x ≤ operatorCost M x s := by
  have hs0ne : s ≠ 0 := ne_of_gt hs0
  have hs1ne : 1 - s ≠ 0 := by linarith
  rw [sub_nonneg.symm]
  rw [square_decomposition hL hR hs0ne hs1ne]
  exact div_nonneg (sq_nonneg _) (mul_nonneg (le_of_lt hs0) (by linarith))

/-- With strictly positive directional demands, the square-root share is
    strictly interior. -/
theorem unconstrainedShare_interior {M x : ℝ}
    (hL : 0 < demandL M x)
    (hR : 0 < demandR x) :
    0 < unconstrainedShare M x ∧ unconstrainedShare M x < 1 := by
  have hsL : 0 < Real.sqrt (demandL M x) := Real.sqrt_pos.2 hL
  have hsR : 0 < Real.sqrt (demandR x) := Real.sqrt_pos.2 hR
  constructor
  · exact div_pos hsL (add_pos hsL hsR)
  · rw [unconstrainedShare]
    exact (div_lt_one (add_pos hsL hsR)).2 (by linarith)

/-- The square-root allocation exactly attains the global lower bound. -/
theorem cost_unconstrainedShare {M x : ℝ}
    (hL : 0 < demandL M x)
    (hR : 0 < demandR x) :
    operatorCost M x (unconstrainedShare M x) = minimizedCost M x := by
  have hsL : 0 < Real.sqrt (demandL M x) := Real.sqrt_pos.2 hL
  have hsR : 0 < Real.sqrt (demandR x) := Real.sqrt_pos.2 hR
  have hsum : Real.sqrt (demandL M x) + Real.sqrt (demandR x) ≠ 0 :=
    ne_of_gt (add_pos hsL hsR)
  have hinterior := unconstrainedShare_interior hL hR
  have hbalance :
      Real.sqrt (demandL M x) * (1 - unconstrainedShare M x) -
        Real.sqrt (demandR x) * unconstrainedShare M x = 0 := by
    field_simp [unconstrainedShare, hsum]
    ring
  have hdec := square_decomposition
    (M := M) (x := x) (s := unconstrainedShare M x)
    (le_of_lt hL) (le_of_lt hR) (ne_of_gt hinterior.1) (by linarith)
  rw [hbalance] at hdec
  norm_num at hdec
  linarith

/-- The slack-floor operator solution is the unique interior global minimizer. -/
theorem unique_global_minimizer {M x s : ℝ}
    (hL : 0 < demandL M x)
    (hR : 0 < demandR x)
    (hs0 : 0 < s)
    (hs1 : s < 1)
    (hmin : operatorCost M x s = minimizedCost M x) :
    s = unconstrainedShare M x := by
  have hsL : 0 < Real.sqrt (demandL M x) := Real.sqrt_pos.2 hL
  have hsR : 0 < Real.sqrt (demandR x) := Real.sqrt_pos.2 hR
  have hsum : Real.sqrt (demandL M x) + Real.sqrt (demandR x) ≠ 0 :=
    ne_of_gt (add_pos hsL hsR)
  have hdec := square_decomposition
    (M := M) (x := x) (s := s)
    (le_of_lt hL) (le_of_lt hR) (ne_of_gt hs0) (by linarith)
  rw [hmin] at hdec
  have hden : 0 < s * (1 - s) := mul_pos hs0 (by linarith)
  have hsq :
      (Real.sqrt (demandL M x) * (1 - s) -
        Real.sqrt (demandR x) * s) ^ 2 = 0 := by
    have :
        (Real.sqrt (demandL M x) * (1 - s) -
          Real.sqrt (demandR x) * s) ^ 2 / (s * (1 - s)) = 0 := by
      linarith
    exact (div_eq_zero_iff).1 this |>.resolve_right (ne_of_gt hden)
  have hbalance :
      Real.sqrt (demandL M x) * (1 - s) -
        Real.sqrt (demandR x) * s = 0 := by
    nlinarith
  rw [unconstrainedShare]
  apply (eq_div_iff hsum).2
  nlinarith

end

end DirectionalFriction.Operator
