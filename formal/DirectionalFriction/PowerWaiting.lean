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

def powerExponent (ρ : ℝ) : ℝ := 1 / (ρ + 1)

def powerShare (ρ D_L D_R : ℝ) : ℝ :=
  D_L ^ powerExponent ρ /
    (D_L ^ powerExponent ρ + D_R ^ powerExponent ρ)

def powerCost (ρ D_L D_R s : ℝ) : ℝ :=
  D_L * s ^ (-ρ) + D_R * (1 - s) ^ (-ρ)

def powerMarginal (ρ D_L D_R s : ℝ) : ℝ :=
  ρ * (D_R * (1 - s) ^ (-ρ - 1) - D_L * s ^ (-ρ - 1))

def powerCurvature (ρ D_L D_R s : ℝ) : ℝ :=
  ρ * (ρ + 1) *
    (D_R * (1 - s) ^ (-ρ - 2) + D_L * s ^ (-ρ - 2))

theorem powerExponent_pos {ρ : ℝ} (hρ : 0 < ρ) : 0 < powerExponent ρ := by
  unfold powerExponent
  positivity

theorem powerShare_interior {ρ D_L D_R : ℝ}
    (_hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R) :
    0 < powerShare ρ D_L D_R ∧ powerShare ρ D_L D_R < 1 := by
  have hu : 0 < D_L ^ powerExponent ρ := Real.rpow_pos_of_pos hL _
  have hv : 0 < D_R ^ powerExponent ρ := Real.rpow_pos_of_pos hR _
  unfold powerShare
  constructor
  · exact div_pos hu (add_pos hu hv)
  · exact (div_lt_one (add_pos hu hv)).2 (by linarith)

private theorem hasDerivAt_one_sub (s : ℝ) :
    HasDerivAt (fun z : ℝ => 1 - z) (-1) s := by
  have h := (hasDerivAt_const s (1 : ℝ)).sub (hasDerivAt_id s)
  simpa only [Pi.sub_apply, id_eq, zero_sub] using h

theorem hasDerivAt_powerCost {ρ D_L D_R s : ℝ}
    (hs0 : 0 < s) (hs1 : s < 1) :
    HasDerivAt (powerCost ρ D_L D_R) (powerMarginal ρ D_L D_R s) s := by
  have hsne : s ≠ 0 := ne_of_gt hs0
  have h1sne : 1 - s ≠ 0 := by linarith
  have hleft :=
    (Real.hasDerivAt_rpow_const (x := s) (p := -ρ) (Or.inl hsne)).const_mul D_L
  have hright :=
    ((hasDerivAt_one_sub s).rpow_const (p := -ρ) (Or.inl h1sne)).const_mul D_R
  have hsum := hleft.add hright
  have hsum' : HasDerivAt (powerCost ρ D_L D_R)
      (D_L * (-ρ * s ^ (-ρ - 1)) +
        D_R * (-1 * -ρ * (1 - s) ^ (-ρ - 1))) s := by
    simpa only [powerCost, Pi.add_apply] using hsum
  apply hsum'.congr_deriv
  unfold powerMarginal
  ring

theorem hasDerivAt_powerMarginal {ρ D_L D_R s : ℝ}
    (hs0 : 0 < s) (hs1 : s < 1) :
    HasDerivAt (powerMarginal ρ D_L D_R)
      (powerCurvature ρ D_L D_R s) s := by
  have hsne : s ≠ 0 := ne_of_gt hs0
  have h1sne : 1 - s ≠ 0 := by linarith
  let p : ℝ := -ρ - 1
  have hRpow : HasDerivAt (fun z : ℝ => (1 - z) ^ p)
      ((-1) * p * (1 - s) ^ (p - 1)) s :=
    (hasDerivAt_one_sub s).rpow_const (Or.inl h1sne)
  have hLpow : HasDerivAt (fun z : ℝ => z ^ p)
      (1 * p * s ^ (p - 1)) s := by
    simpa using Real.hasDerivAt_rpow_const (x := s) (p := p) (Or.inl hsne)
  have hR := hRpow.const_mul D_R
  have hL := hLpow.const_mul D_L
  have htot := (hR.sub hL).const_mul ρ
  have htot' : HasDerivAt (powerMarginal ρ D_L D_R)
      (ρ * (D_R * (-1 * (-ρ - 1) * (1 - s) ^ ((-ρ - 1) - 1)) -
        D_L * (1 * (-ρ - 1) * s ^ ((-ρ - 1) - 1)))) s := by
    simpa only [powerMarginal, Pi.sub_apply, p] using htot
  apply htot'.congr_deriv
  unfold powerCurvature
  ring

theorem powerCurvature_pos {ρ D_L D_R s : ℝ}
    (hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R)
    (hs0 : 0 < s) (hs1 : s < 1) :
    0 < powerCurvature ρ D_L D_R s := by
  have hρ1 : 0 < ρ + 1 := by linarith
  have hsp : 0 < s ^ (-ρ - 2) := Real.rpow_pos_of_pos hs0 _
  have h1sp : 0 < (1 - s) ^ (-ρ - 2) := Real.rpow_pos_of_pos (by linarith) _
  unfold powerCurvature
  positivity

theorem powerMarginal_strictMonoOn {ρ D_L D_R : ℝ}
    (hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R) :
    StrictMonoOn (powerMarginal ρ D_L D_R) (Ioo (0 : ℝ) 1) := by
  apply strictMonoOn_of_deriv_pos (convex_Ioo (0 : ℝ) 1)
  · intro s hs
    exact (hasDerivAt_powerMarginal (ρ := ρ) (D_L := D_L) (D_R := D_R)
      hs.1 hs.2).continuousAt.continuousWithinAt
  · intro s hs
    rw [interior_Ioo] at hs
    have hd := hasDerivAt_powerMarginal (ρ := ρ) (D_L := D_L) (D_R := D_R)
      hs.1 hs.2
    rw [hd.deriv]
    exact powerCurvature_pos hρ hL hR hs.1 hs.2

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
  have hderiv' : StrictMonoOn (deriv (powerCost ρ D_L D_R))
      (interior (Ioo (0 : ℝ) 1)) := by
    simpa only [interior_Ioo] using hderiv
  exact hderiv'.strictConvexOn_of_deriv (convex_Ioo (0 : ℝ) 1) hcont

end

end DirectionalFriction.PowerWaiting
