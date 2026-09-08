import Mathlib.Analysis.Convex.Deriv
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv

/-!
# Power waiting technology

Analytic layer for the robustness technology `a(f)=w f^{-ρ}`, `ρ>0`.
The module proves the calculus facts that make the operator problem well behaved:
interiority of the closed-form share, the exact first derivative of aggregate
waiting cost, strict positivity of its curvature, strict monotonicity of the
marginal condition, and strict convexity of the operator objective on `(0,1)`.

The manuscript's finite interval `0.95 ≤ ρ ≤ 1.01` remains a deterministic
numerical audit; it is not promoted here to an analytic threshold.
-/

namespace DirectionalFriction.PowerWaiting

open Set

noncomputable section

/-- Demand exponent in the optimal power-waiting allocation. -/
def powerExponent (ρ : ℝ) : ℝ := 1 / (ρ + 1)

/-- Closed-form L service share for positive directional demands. -/
def powerShare (ρ D_L D_R : ℝ) : ℝ :=
  D_L ^ powerExponent ρ /
    (D_L ^ powerExponent ρ + D_R ^ powerExponent ρ)

/-- Aggregate waiting cost after normalizing the common factor `w/F^ρ`. -/
def powerCost (ρ D_L D_R s : ℝ) : ℝ :=
  D_L * s ^ (-ρ) + D_R * (1 - s) ^ (-ρ)

/-- First-order condition for the normalized operator problem. -/
def powerMarginal (ρ D_L D_R s : ℝ) : ℝ :=
  ρ * (D_R * (1 - s) ^ (-ρ - 1) - D_L * s ^ (-ρ - 1))

/-- Positive second derivative on the physical interior. -/
def powerCurvature (ρ D_L D_R s : ℝ) : ℝ :=
  ρ * (ρ + 1) *
    (D_R * (1 - s) ^ (-ρ - 2) + D_L * s ^ (-ρ - 2))

/-- The demand exponent is strictly positive for every `ρ>0`. -/
theorem powerExponent_pos {ρ : ℝ} (hρ : 0 < ρ) : 0 < powerExponent ρ := by
  unfold powerExponent
  positivity

/-- Positive demands imply a strictly interior closed-form service share. -/
theorem powerShare_interior {ρ D_L D_R : ℝ}
    (hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R) :
    0 < powerShare ρ D_L D_R ∧ powerShare ρ D_L D_R < 1 := by
  have hα : 0 < powerExponent ρ := powerExponent_pos hρ
  have hu : 0 < D_L ^ powerExponent ρ := Real.rpow_pos_of_pos hL _
  have hv : 0 < D_R ^ powerExponent ρ := Real.rpow_pos_of_pos hR _
  unfold powerShare
  constructor
  · exact div_pos hu (add_pos hu hv)
  · exact (div_lt_one (add_pos hu hv)).2 (by linarith)

/-- Exact derivative of the power-waiting operator objective. -/
theorem hasDerivAt_powerCost {ρ D_L D_R s : ℝ}
    (hs0 : 0 < s) (hs1 : s < 1) :
    HasDerivAt (powerCost ρ D_L D_R) (powerMarginal ρ D_L D_R s) s := by
  have hsne : s ≠ 0 := ne_of_gt hs0
  have h1sne : 1 - s ≠ 0 := by linarith
  have hleft :=
    (Real.hasDerivAt_rpow_const (x := s) (p := -ρ) (Or.inl hsne)).const_mul D_L
  have hbase : HasDerivAt (fun z : ℝ => 1 - z) (-1) s := by
    simpa using (hasDerivAt_const s (1 : ℝ)).sub (hasDerivAt_id s)
  have hright := (hbase.rpow_const (Or.inl h1sne)).const_mul D_R
  unfold powerCost powerMarginal
  convert hleft.add hright using 1 <;> ring

/-- Exact derivative of the first-order condition. -/
theorem hasDerivAt_powerMarginal {ρ D_L D_R s : ℝ}
    (hs0 : 0 < s) (hs1 : s < 1) :
    HasDerivAt (powerMarginal ρ D_L D_R)
      (powerCurvature ρ D_L D_R s) s := by
  have hsne : s ≠ 0 := ne_of_gt hs0
  have h1sne : 1 - s ≠ 0 := by linarith
  have hp : ℝ := -ρ - 1
  have hbase : HasDerivAt (fun z : ℝ => 1 - z) (-1) s := by
    simpa using (hasDerivAt_const s (1 : ℝ)).sub (hasDerivAt_id s)
  have hRpow : HasDerivAt (fun z : ℝ => (1 - z) ^ hp)
      ((-1) * hp * (1 - s) ^ (hp - 1)) s :=
    hbase.rpow_const (Or.inl h1sne)
  have hLpow : HasDerivAt (fun z : ℝ => z ^ hp)
      (1 * hp * s ^ (hp - 1)) s := by
    simpa using Real.hasDerivAt_rpow_const (x := s) (p := hp) (Or.inl hsne)
  have hR := hRpow.const_mul D_R
  have hL := hLpow.const_mul D_L
  have hdiff := hR.sub hL
  have htot := hdiff.const_mul ρ
  unfold powerMarginal powerCurvature
  dsimp [hp] at htot
  convert htot using 1 <;> ring

/-- Curvature is strictly positive whenever `ρ` and both directional demands
    are strictly positive. -/
theorem powerCurvature_pos {ρ D_L D_R s : ℝ}
    (hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R)
    (hs0 : 0 < s) (hs1 : s < 1) :
    0 < powerCurvature ρ D_L D_R s := by
  have hρ1 : 0 < ρ + 1 := by linarith
  have hsp : 0 < s ^ (-ρ - 2) := Real.rpow_pos_of_pos hs0 _
  have h1sp : 0 < (1 - s) ^ (-ρ - 2) := Real.rpow_pos_of_pos (by linarith) _
  unfold powerCurvature
  positivity

/-- The power-waiting marginal condition is strictly increasing on the physical
    service-share interior. -/
theorem powerMarginal_strictMonoOn {ρ D_L D_R : ℝ}
    (hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R) :
    StrictMonoOn (powerMarginal ρ D_L D_R) (Ioo (0 : ℝ) 1) := by
  apply strictMonoOn_of_deriv_pos convex_Ioo
  · intro s hs
    exact (hasDerivAt_powerMarginal (ρ := ρ) (D_L := D_L) (D_R := D_R)
      hs.1 hs.2).continuousAt.continuousWithinAt
  · intro s hs
    rw [interior_Ioo] at hs
    have hd := hasDerivAt_powerMarginal (ρ := ρ) (D_L := D_L) (D_R := D_R)
      hs.1 hs.2
    rw [hd.deriv]
    exact powerCurvature_pos hρ hL hR hs.1 hs.2

/-- The normalized operator objective is strictly convex on `(0,1)` for every
    positive power exponent and positive directional demands. -/
theorem powerCost_strictConvexOn {ρ D_L D_R : ℝ}
    (hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R) :
    StrictConvexOn ℝ (Ioo (0 : ℝ) 1) (powerCost ρ D_L D_R) := by
  have hcont : ContinuousOn (powerCost ρ D_L D_R) (Ioo (0 : ℝ) 1) := by
    intro s hs
    exact (hasDerivAt_powerCost (ρ := ρ) (D_L := D_L) (D_R := D_R)
      hs.1 hs.2).continuousAt.continuousWithinAt
  have hm := powerMarginal_strictMonoOn hρ hL hR
  have hderiv : StrictMonoOn (deriv (powerCost ρ D_L D_R)) (Ioo (0 : ℝ) 1) := by
    intro a ha b hb hab
    have hda := hasDerivAt_powerCost (ρ := ρ) (D_L := D_L) (D_R := D_R)
      ha.1 ha.2
    have hdb := hasDerivAt_powerCost (ρ := ρ) (D_L := D_L) (D_R := D_R)
      hb.1 hb.2
    rw [hda.deriv, hdb.deriv]
    exact hm ha hb hab
  simpa using hderiv.strictConvexOn_of_deriv convex_Ioo hcont

end

end DirectionalFriction.PowerWaiting
