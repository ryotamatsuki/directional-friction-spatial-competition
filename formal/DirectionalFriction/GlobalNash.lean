import DirectionalFriction.GlobalSlack
import DirectionalFriction.GlobalFloor

/-!
# Exact witness: assembled global deviation problem

This module joins the slack and binding-floor certificates.  It proves that the
frozen candidate attains the deviation-profit benchmark and that every other
physical shopper share in `[0,1]` yields strictly lower profit for either
retailer when its rival price is held at the frozen candidate.
-/

namespace DirectionalFriction.GlobalNash

open DirectionalFriction.Operator
open DirectionalFriction.Witness
open DirectionalFriction.GlobalWitness
open DirectionalFriction.GlobalSlack
open DirectionalFriction.GlobalFloor

noncomputable section

/-- At `x*=23/40`, the operator's unconstrained square-root share is exactly the
    algebraic service share `s*=(149-sqrt(7599))/98`. -/
theorem unconstrainedShare_xStar :
    unconstrainedShare (2 / 3) xStar = sStar := by
  have hDL : demandL (2 / 3) xStar = (149 / 120 : ℝ) := by
    norm_num [demandL, xStar]
  have hDR : demandR xStar = (51 / 120 : ℝ) := by
    norm_num [demandR, xStar]
  have hDLpos : 0 < demandL (2 / 3) xStar := by rw [hDL]; norm_num
  have hDRpos : 0 < demandR xStar := by rw [hDR]; norm_num
  let a : ℝ := Real.sqrt (demandL (2 / 3) xStar)
  let b : ℝ := Real.sqrt (demandR xStar)
  have ha : 0 < a := by dsimp [a]; exact Real.sqrt_pos.2 hDLpos
  have hb : 0 < b := by dsimp [b]; exact Real.sqrt_pos.2 hDRpos
  have ha2 : a^2 = (149 / 120 : ℝ) := by
    dsimp [a]
    rw [Real.sq_sqrt (le_of_lt hDLpos), hDL]
  have hb2 : b^2 = (51 / 120 : ℝ) := by
    dsimp [b]
    rw [Real.sq_sqrt (le_of_lt hDRpos), hDR]
  rcases sStar_interval with ⟨hslo, hshi⟩
  have hs0 : 0 < sStar := by linarith
  have hs1 : 0 < 1 - sStar := by linarith
  have hr2 : r^2 = (7599 : ℝ) := by norm_num [r]
  have hsq : (a * (1 - sStar))^2 = (b * sStar)^2 := by
    rw [mul_pow, mul_pow, ha2, hb2]
    unfold sStar
    ring_nf at ⊢
    simp only [hr2]
    ring
  have hleft : 0 ≤ a * (1 - sStar) := mul_nonneg (le_of_lt ha) (le_of_lt hs1)
  have hright : 0 ≤ b * sStar := mul_nonneg (le_of_lt hb) (le_of_lt hs0)
  have hcross : a * (1 - sStar) = b * sStar := by
    nlinarith
  rw [unconstrainedShare]
  change a / (a + b) = sStar
  apply (div_eq_iff (ne_of_gt (add_pos ha hb))).2
  nlinarith

/-- The L slack profit at the algebraic candidate service share equals the
    frozen candidate profit exactly. -/
theorem piLSlack_sStar : piLSlack sStar = piLStar := by
  rcases sStar_interval with ⟨hslo, hshi⟩
  have hs0 : sStar ≠ 0 := ne_of_gt (lt_trans (by norm_num) hslo)
  have hs1 : sStar ≠ 1 := ne_of_lt (lt_trans hshi (by norm_num))
  have h := l_gap_factorization hs0 hs1
  have hgap : piLStar - piLSlack sStar = 0 := by simpa using h
  linarith

/-- The R slack profit at the algebraic candidate service share equals the
    frozen candidate profit exactly. -/
theorem piRSlack_sStar : piRSlack sStar = piRStar := by
  rcases sStar_interval with ⟨hslo, hshi⟩
  have hs0 : sStar ≠ 0 := ne_of_gt (lt_trans (by norm_num) hslo)
  have hs1 : sStar ≠ 1 := ne_of_lt (lt_trans hshi (by norm_num))
  have h := r_gap_factorization hs0 hs1
  have hgap : piRStar - piRSlack sStar = 0 := by simpa using h
  linarith

/-- L's full unilateral deviation profit, parameterized by the uniquely induced
    shopper share: slack service up to the floor boundary, then the binding-floor
    quadratic. -/
def piLDeviation (x : ℝ) : ℝ :=
  if x ≤ 2 / 3 then piLSlack (unconstrainedShare (2 / 3) x) else piLFloor x

/-- R's corresponding full unilateral deviation profit. -/
def piRDeviation (x : ℝ) : ℝ :=
  if x ≤ 2 / 3 then piRSlack (unconstrainedShare (2 / 3) x) else piRFloor x

/-- The frozen L candidate actually attains the global-deviation benchmark. -/
theorem piLDeviation_xStar : piLDeviation xStar = piLStar := by
  have hx : xStar ≤ (2 / 3 : ℝ) := by norm_num [xStar]
  rw [piLDeviation, if_pos hx, unconstrainedShare_xStar, piLSlack_sStar]

/-- The frozen R candidate actually attains the global-deviation benchmark. -/
theorem piRDeviation_xStar : piRDeviation xStar = piRStar := by
  have hx : xStar ≤ (2 / 3 : ℝ) := by norm_num [xStar]
  rw [piRDeviation, if_pos hx, unconstrainedShare_xStar, piRSlack_sStar]

/-- L's candidate profit globally dominates every physical shopper-share deviation. -/
theorem l_global_deviation {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 1) :
    piLDeviation x ≤ piLStar := by
  by_cases h : x ≤ 2 / 3
  · rw [piLDeviation, if_pos h]
    exact l_physical_slack_global hx0 h
  · rw [piLDeviation, if_neg h]
    exact le_of_lt (l_floor_global (le_of_lt (lt_of_not_ge h)))

/-- R's candidate profit globally dominates every physical shopper-share deviation. -/
theorem r_global_deviation {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 1) :
    piRDeviation x ≤ piRStar := by
  by_cases h : x ≤ 2 / 3
  · rw [piRDeviation, if_pos h]
    exact r_physical_slack_global hx0 h
  · rw [piRDeviation, if_neg h]
    exact le_of_lt (r_floor_global x)

/-- L's global maximum is strict at every physical share other than `x*`. -/
theorem l_global_deviation_strict {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 1)
    (hne : x ≠ xStar) : piLDeviation x < piLStar := by
  by_cases h : x ≤ 2 / 3
  · rw [piLDeviation, if_pos h]
    exact l_physical_slack_strict hx0 h hne
  · rw [piLDeviation, if_neg h]
    exact l_floor_global (le_of_lt (lt_of_not_ge h))

/-- R's global maximum is strict at every physical share other than `x*`. -/
theorem r_global_deviation_strict {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 1)
    (hne : x ≠ xStar) : piRDeviation x < piRStar := by
  by_cases h : x ≤ 2 / 3
  · rw [piRDeviation, if_pos h]
    exact r_physical_slack_strict hx0 h hne
  · rw [piRDeviation, if_neg h]
    exact r_floor_global x

/-- Machine-checked unique global-max statement for L's frozen unilateral problem. -/
theorem l_unique_global_max :
    piLDeviation xStar = piLStar ∧
      ∀ x : ℝ, 0 ≤ x → x ≤ 1 → x ≠ xStar → piLDeviation x < piLStar := by
  exact ⟨piLDeviation_xStar, fun x hx0 hx1 hne =>
    l_global_deviation_strict hx0 hx1 hne⟩

/-- Machine-checked unique global-max statement for R's frozen unilateral problem. -/
theorem r_unique_global_max :
    piRDeviation xStar = piRStar ∧
      ∀ x : ℝ, 0 ≤ x → x ≤ 1 → x ≠ xStar → piRDeviation x < piRStar := by
  exact ⟨piRDeviation_xStar, fun x hx0 hx1 hne =>
    r_global_deviation_strict hx0 hx1 hne⟩

end

end DirectionalFriction.GlobalNash
