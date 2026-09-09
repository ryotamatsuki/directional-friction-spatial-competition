import Mathlib.Analysis.Convex.Deriv
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv

/-!
# Power waiting technology

Analytic layer for the robustness technology `a(f)=w f^{-ρ}`, `ρ>0`.
The module proves the calculus facts that make the operator problem well behaved:
interiority of the closed-form share, the exact first derivative of aggregate
waiting cost, strict positivity of its curvature, strict monotonicity of the
marginal condition, strict convexity of the operator objective on `(0,1)`, and
that the closed-form share is its unique interior global minimizer.

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

/-- Raising the positive demand root back to `ρ+1` recovers demand. -/
theorem powerRoot_pow {ρ D : ℝ} (hρ : 0 < ρ) (hD : 0 < D) :
    (D ^ powerExponent ρ) ^ (ρ + 1) = D := by
  rw [← Real.rpow_mul hD.le (powerExponent ρ) (ρ + 1)]
  have hden : ρ + 1 ≠ 0 := ne_of_gt (by linarith)
  have hexp : powerExponent ρ * (ρ + 1) = 1 := by
    unfold powerExponent
    field_simp
  rw [hexp, Real.rpow_one]

/-- Complementary service share in the closed-form allocation. -/
theorem one_sub_powerShare {ρ D_L D_R : ℝ}
    (hL : 0 < D_L) (hR : 0 < D_R) :
    1 - powerShare ρ D_L D_R =
      D_R ^ powerExponent ρ /
        (D_L ^ powerExponent ρ + D_R ^ powerExponent ρ) := by
  have hu : 0 < D_L ^ powerExponent ρ := Real.rpow_pos_of_pos hL _
  have hv : 0 < D_R ^ powerExponent ρ := Real.rpow_pos_of_pos hR _
  have hsum : D_L ^ powerExponent ρ + D_R ^ powerExponent ρ ≠ 0 :=
    ne_of_gt (add_pos hu hv)
  unfold powerShare
  field_simp
  ring

/-- The positive power of the L service share has a simple demand-ratio form. -/
theorem powerShare_rpow {ρ D_L D_R : ℝ}
    (hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R) :
    (powerShare ρ D_L D_R) ^ (ρ + 1) =
      D_L /
        (D_L ^ powerExponent ρ + D_R ^ powerExponent ρ) ^ (ρ + 1) := by
  have hu : 0 < D_L ^ powerExponent ρ := Real.rpow_pos_of_pos hL _
  have hv : 0 < D_R ^ powerExponent ρ := Real.rpow_pos_of_pos hR _
  unfold powerShare
  rw [Real.div_rpow hu.le (add_nonneg hu.le hv.le) (ρ + 1)]
  rw [powerRoot_pow hρ hL]

/-- The positive power of the R service share has the symmetric demand-ratio form. -/
theorem one_sub_powerShare_rpow {ρ D_L D_R : ℝ}
    (hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R) :
    (1 - powerShare ρ D_L D_R) ^ (ρ + 1) =
      D_R /
        (D_L ^ powerExponent ρ + D_R ^ powerExponent ρ) ^ (ρ + 1) := by
  rw [one_sub_powerShare hL hR]
  have hu : 0 < D_L ^ powerExponent ρ := Real.rpow_pos_of_pos hL _
  have hv : 0 < D_R ^ powerExponent ρ := Real.rpow_pos_of_pos hR _
  rw [Real.div_rpow hv.le (add_nonneg hu.le hv.le) (ρ + 1)]
  rw [powerRoot_pow hρ hR]

private theorem hasDerivAt_one_sub (s : ℝ) :
    HasDerivAt (fun z : ℝ => 1 - z) (-1) s := by
  apply HasDerivAt.const_sub
  exact hasDerivAt_id s

theorem hasDerivAt_powerCost {ρ D_L D_R s : ℝ}
    (hs0 : 0 < s) (hs1 : s < 1) :
    HasDerivAt (powerCost ρ D_L D_R) (powerMarginal ρ D_L D_R s) s := by
  have hsne : s ≠ 0 := ne_of_gt hs0
  have h1sne : 1 - s ≠ 0 := by linarith
  have hleft :=
    (Real.hasDerivAt_rpow_const (x := s) (p := -ρ) (Or.inl hsne)).const_mul D_L
  have hright :=
    ((hasDerivAt_one_sub s).rpow_const (p := -ρ) (Or.inl h1sne)).const_mul D_R
  unfold powerCost powerMarginal
  convert! hleft.add hright using 1 <;> ring

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
  have htot := ((hRpow.const_mul D_R).sub (hLpow.const_mul D_L)).const_mul ρ
  unfold powerMarginal powerCurvature
  dsimp [p] at htot
  ring_nf at htot ⊢
  convert! htot using 1 <;> ring

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

/-- The closed-form share satisfies the operator first-order condition. -/
theorem powerMarginal_powerShare {ρ D_L D_R : ℝ}
    (hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R) :
    powerMarginal ρ D_L D_R (powerShare ρ D_L D_R) = 0 := by
  have hs := powerShare_interior hρ hL hR
  have h1s : 0 < 1 - powerShare ρ D_L D_R := sub_pos.mpr hs.2
  have hsPow := powerShare_rpow hρ hL hR
  have h1sPow := one_sub_powerShare_rpow hρ hL hR
  have hu : 0 < D_L ^ powerExponent ρ := Real.rpow_pos_of_pos hL _
  have hv : 0 < D_R ^ powerExponent ρ := Real.rpow_pos_of_pos hR _
  have hsumPow :
      0 < (D_L ^ powerExponent ρ + D_R ^ powerExponent ρ) ^ (ρ + 1) :=
    Real.rpow_pos_of_pos (add_pos hu hv) _
  unfold powerMarginal
  rw [show (-ρ - 1 : ℝ) = -(ρ + 1) by ring]
  rw [Real.rpow_neg hs.1.le (ρ + 1), Real.rpow_neg h1s.le (ρ + 1)]
  rw [hsPow, h1sPow]
  field_simp [ne_of_gt hL, ne_of_gt hR, ne_of_gt hsumPow]
  ring

/-- The closed-form allocation is a global minimum of normalized waiting cost
    over the physical service-share interior. -/
theorem powerShare_isMinOn {ρ D_L D_R : ℝ}
    (hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R) :
    IsMinOn (powerCost ρ D_L D_R) (Ioo (0 : ℝ) 1)
      (powerShare ρ D_L D_R) := by
  have hs := powerShare_interior hρ hL hR
  have hd : HasDerivAt (powerCost ρ D_L D_R) 0 (powerShare ρ D_L D_R) :=
    (hasDerivAt_powerCost hs.1 hs.2).congr_deriv (powerMarginal_powerShare hρ hL hR)
  have hrd : derivWithin (powerCost ρ D_L D_R)
      (Ioi (powerShare ρ D_L D_R)) (powerShare ρ D_L D_R) = 0 :=
    hd.hasDerivWithinAt.derivWithin (uniqueDiffWithinAt_Ioi _)
  have hconv := (powerCost_strictConvexOn hρ hL hR).convexOn
  apply hconv.isMinOn_of_rightDeriv_eq_zero
  · simpa only [interior_Ioo] using hs
  · exact hrd

/-- Strict convexity makes the closed-form allocation the unique interior
    global minimizer. -/
theorem powerShare_unique_minimizer {ρ D_L D_R s : ℝ}
    (hρ : 0 < ρ) (hL : 0 < D_L) (hR : 0 < D_R)
    (hs : s ∈ Ioo (0 : ℝ) 1)
    (hmin : IsMinOn (powerCost ρ D_L D_R) (Ioo (0 : ℝ) 1) s) :
    s = powerShare ρ D_L D_R := by
  have hcand : powerShare ρ D_L D_R ∈ Ioo (0 : ℝ) 1 :=
    powerShare_interior hρ hL hR
  exact (powerCost_strictConvexOn hρ hL hR).eq_of_isMinOn
    hmin (powerShare_isMinOn hρ hL hR) hs hcand

end

end DirectionalFriction.PowerWaiting
