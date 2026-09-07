import DirectionalFriction.GlobalWitness

/-!
# Global continuation-slope certificate at the exact witness

On the slack region of the frozen witness (`M=2/3`, `q=1/3`, `t=F=1`),
the shopper indifference residual has slope

`2 - A*(25/18)/sqrt((2/3+x)(1-x))^3`.

The product under the square root is minimized on `[0,2/3]` at the right
boundary.  Hence the slope is bounded below by the exact positive boundary
certificate already checked in `Witness.lean`.
-/

namespace DirectionalFriction.Continuation

open DirectionalFriction.Witness
open DirectionalFriction.GlobalWitness

noncomputable section

/-- Product under the square root in `H(x,2/3)`. -/
def demandProduct (x : ℝ) : ℝ := (2 / 3 + x) * (1 - x)

/-- Exact continuation slope on the slack part of the frozen witness. -/
def slackSlope (x : ℝ) : ℝ :=
  2 - witnessA * (25 / 18) / (Real.sqrt (demandProduct x))^3

/-- The square-root product is bounded below by its value at the floor boundary. -/
theorem demandProduct_ge_boundary {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3) :
    (4 / 9 : ℝ) ≤ demandProduct x := by
  have h1 : 0 ≤ (2 / 3 : ℝ) - x := by linarith
  have h2 : 0 ≤ x + 1 / 3 := by linarith
  have hp := mul_nonneg h1 h2
  simp only [demandProduct]
  nlinarith

/-- The square root itself is therefore at least `2/3`. -/
theorem sqrt_demandProduct_ge {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3) :
    (2 / 3 : ℝ) ≤ Real.sqrt (demandProduct x) := by
  have hp : (4 / 9 : ℝ) ≤ demandProduct x := demandProduct_ge_boundary hx0 hx1
  have hp0 : 0 ≤ demandProduct x := by linarith
  have hs0 : 0 ≤ Real.sqrt (demandProduct x) := Real.sqrt_nonneg _
  have hs2 : (Real.sqrt (demandProduct x))^2 = demandProduct x :=
    Real.sq_sqrt hp0
  nlinarith

/-- Cubing preserves the boundary lower bound. -/
theorem sqrt_demandProduct_cube_ge {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3) :
    (8 / 27 : ℝ) ≤ (Real.sqrt (demandProduct x))^3 := by
  let y : ℝ := Real.sqrt (demandProduct x)
  have hy : (2 / 3 : ℝ) ≤ y := by
    dsimp [y]
    exact sqrt_demandProduct_ge hx0 hx1
  have hy0 : 0 ≤ y := by linarith
  have hquad : 0 ≤ y^2 + (2 / 3) * y + 4 / 9 := by positivity
  have hfac : 0 ≤ (y - 2 / 3) * (y^2 + (2 / 3) * y + 4 / 9) :=
    mul_nonneg (sub_nonneg.mpr hy) hquad
  nlinarith

/-- The paper's exact boundary expression is the same normalized slope formula
    evaluated at the boundary denominator `(2/3)^3=8/27`. -/
theorem gBoundary_eq_normalized :
    gBoundary = 2 - witnessA * (25 / 18) / (8 / 27) := by
  simp only [gBoundary, witnessA, r]
  ring

/-- The continuation slope is minimized at the right slack boundary. -/
theorem slackSlope_ge_boundary {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3) :
    gBoundary ≤ slackSlope x := by
  have hcube : (8 / 27 : ℝ) ≤ (Real.sqrt (demandProduct x))^3 :=
    sqrt_demandProduct_cube_ge hx0 hx1
  have hden : 0 < (Real.sqrt (demandProduct x))^3 := by
    have hs : (2 / 3 : ℝ) ≤ Real.sqrt (demandProduct x) :=
      sqrt_demandProduct_ge hx0 hx1
    have hspos : 0 < Real.sqrt (demandProduct x) := by linarith
    positivity
  have hnum : 0 ≤ witnessA * (25 / 18) := by
    unfold witnessA r
    positivity
  have hdiv :
      witnessA * (25 / 18) / (Real.sqrt (demandProduct x))^3 ≤
        witnessA * (25 / 18) / (8 / 27) :=
    div_le_div_of_nonneg_left hnum (by norm_num) hcube
  rw [gBoundary_eq_normalized]
  unfold slackSlope
  linarith

/-- Global strict positivity of the slack continuation slope at the witness. -/
theorem slackSlope_pos {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3) :
    0 < slackSlope x := by
  have hge := slackSlope_ge_boundary hx0 hx1
  exact lt_of_lt_of_le gBoundary_pos hge

end

end DirectionalFriction.Continuation
