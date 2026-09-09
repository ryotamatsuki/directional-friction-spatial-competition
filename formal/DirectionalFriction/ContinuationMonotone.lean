import DirectionalFriction.Continuation

/-!
# Strict monotonicity and uniqueness of the frozen continuation

This file upgrades the positive-slope certificate to the actual piecewise
shopper-indifference residual.  The slack residual is proved strictly increasing
by differentiation; the binding-floor residual is affine with slope two.  The
two pieces agree at `x=2/3`, so the full residual is strictly increasing on the
physical consumer interval `[0,1]` and therefore has at most one zero.
-/

namespace DirectionalFriction.ContinuationMonotone

open Set
open DirectionalFriction.Witness
open DirectionalFriction.GlobalWitness
open DirectionalFriction.Continuation

noncomputable section

/-- Numerator of `H(x,2/3)`. -/
def slackNumerator (x : ℝ) : ℝ := 1 / 3 - 2 * x

/-- Waiting/access difference on the slack branch at `M=2/3`. -/
def slackH (x : ℝ) : ℝ :=
  slackNumerator x / Real.sqrt (demandProduct x)

/-- Shopper-indifference residual on the slack branch, with `delta=p_L-p_R`. -/
def slackResidual (delta x : ℝ) : ℝ :=
  delta + (2 * x - 1) + witnessA * slackH x

/-- Shopper-indifference residual after the R-side floor binds. -/
def bindingResidual (delta x : ℝ) : ℝ :=
  delta + (2 * x - 1) + witnessA * (-3 / 2)

/-- Piecewise continuation residual on the full consumer interval. -/
def continuationResidual (delta x : ℝ) : ℝ :=
  if x ≤ 2 / 3 then slackResidual delta x else bindingResidual delta x

/-- Derivative of the product under the square root. -/
theorem hasDerivAt_demandProduct (x : ℝ) :
    HasDerivAt demandProduct (slackNumerator x) x := by
  have hL : HasDerivAt (fun y : ℝ => 2 / 3 + y) 1 x := by
    simpa using (hasDerivAt_id x).const_add (2 / 3 : ℝ)
  have hR : HasDerivAt (fun y : ℝ => 1 - y) (-1) x := by
    simpa using (hasDerivAt_id x).const_sub (1 : ℝ)
  have h := hL.mul hR
  have hc : 1 * (1 - x) + (2 / 3 + x) * (-1) = slackNumerator x := by
    unfold slackNumerator
    ring
  change HasDerivAt (fun y : ℝ => (2 / 3 + y) * (1 - y)) (slackNumerator x) x
  exact h.congr_deriv hc

/-- Derivative of the numerator of the slack waiting difference. -/
theorem hasDerivAt_slackNumerator (x : ℝ) :
    HasDerivAt slackNumerator (-2) x := by
  change HasDerivAt (fun y : ℝ => 1 / 3 - 2 * y) (-2) x
  simpa using
    ((hasDerivAt_id x).const_mul (2 : ℝ)).const_sub (1 / 3 : ℝ)

/-- Exact derivative `H_x(x,2/3)=-25/(18 sqrt(P)^3)` on the physical slack interval. -/
theorem hasDerivAt_slackH {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3) :
    HasDerivAt slackH (-(25 / 18) / (Real.sqrt (demandProduct x))^3) x := by
  have hp : 0 < demandProduct x := by
    have h := demandProduct_ge_boundary hx0 hx1
    linarith
  have hs : 0 < Real.sqrt (demandProduct x) := Real.sqrt_pos.2 hp
  have hs2 : (Real.sqrt (demandProduct x))^2 = demandProduct x :=
    Real.sq_sqrt (le_of_lt hp)
  have hP := hasDerivAt_demandProduct x
  have hS := hP.sqrt (ne_of_gt hp)
  have hN := hasDerivAt_slackNumerator x
  have hraw := hN.div hS (ne_of_gt hs)
  have hcoef :
      ((-2) * Real.sqrt (demandProduct x) -
          slackNumerator x *
            (slackNumerator x / (2 * Real.sqrt (demandProduct x)))) /
          (Real.sqrt (demandProduct x))^2 =
        -(25 / 18) / (Real.sqrt (demandProduct x))^3 := by
    field_simp [ne_of_gt hs]
    simp only [demandProduct, slackNumerator] at hs2 ⊢
    ring_nf at hs2 ⊢
    nlinarith [hs2]
  change HasDerivAt
    (fun y : ℝ => slackNumerator y / Real.sqrt (demandProduct y))
    (-(25 / 18) / (Real.sqrt (demandProduct x))^3) x
  exact hraw.congr_deriv (by simpa using hcoef)

/-- The derivative of the slack shopper residual is exactly `slackSlope`. -/
theorem hasDerivAt_slackResidual (delta : ℝ) {x : ℝ}
    (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3) :
    HasDerivAt (slackResidual delta) (slackSlope x) x := by
  have hlinear : HasDerivAt (fun y : ℝ => delta + (2 * y - 1)) 2 x := by
    simpa using
      (((hasDerivAt_id x).const_mul (2 : ℝ)).sub_const (1 : ℝ)).const_add delta
  have hwait := HasDerivAt.const_mul witnessA (hasDerivAt_slackH hx0 hx1)
  have hsum := hlinear.add hwait
  have hcoef :
      2 + witnessA * (-(25 / 18) / (Real.sqrt (demandProduct x))^3) =
        slackSlope x := by
    unfold slackSlope
    ring
  change HasDerivAt
    (fun y : ℝ => delta + (2 * y - 1) + witnessA * slackH y)
    (slackSlope x) x
  exact hsum.congr_deriv hcoef

/-- The slack residual is strictly increasing over `[0,2/3]`. -/
theorem slackResidual_strictMonoOn (delta : ℝ) :
    StrictMonoOn (slackResidual delta) (Icc 0 (2 / 3)) := by
  apply strictMonoOn_of_deriv_pos (convex_Icc 0 (2 / 3))
  · intro x hx
    exact (hasDerivAt_slackResidual delta hx.1 hx.2).continuousAt.continuousWithinAt
  · intro x hx
    simp only [interior_Icc, mem_Ioo] at hx
    have hd := hasDerivAt_slackResidual delta (le_of_lt hx.1) (le_of_lt hx.2)
    rw [hd.deriv]
    exact slackSlope_pos (le_of_lt hx.1) (le_of_lt hx.2)

/-- The binding-floor residual is globally strictly increasing because its slope is two. -/
theorem bindingResidual_strictMono (delta : ℝ) : StrictMono (bindingResidual delta) := by
  intro x y hxy
  unfold bindingResidual
  linarith

/-- The slack and binding formulas coincide at the clipping boundary. -/
theorem residual_boundary (delta : ℝ) :
    slackResidual delta (2 / 3) = bindingResidual delta (2 / 3) := by
  have hsqrt : Real.sqrt (demandProduct (2 / 3)) = (2 / 3 : ℝ) := by
    rw [show demandProduct (2 / 3) = (2 / 3 : ℝ)^2 by norm_num [demandProduct]]
    exact Real.sqrt_sq (by norm_num)
  unfold slackResidual bindingResidual slackH slackNumerator
  rw [hsqrt]
  ring

/-- The full physical continuation residual is strictly increasing on `[0,1]`. -/
theorem continuationResidual_strictMonoOn (delta : ℝ) :
    StrictMonoOn (continuationResidual delta) (Icc 0 1) := by
  intro x hx y hy hxy
  by_cases hyb : y ≤ 2 / 3
  · have hxb : x ≤ 2 / 3 := le_trans (le_of_lt hxy) hyb
    rw [continuationResidual, if_pos hxb, continuationResidual, if_pos hyb]
    exact slackResidual_strictMonoOn delta ⟨hx.1, hxb⟩ ⟨hy.1, hyb⟩ hxy
  · have hygt : (2 / 3 : ℝ) < y := lt_of_not_ge hyb
    by_cases hxb : x ≤ 2 / 3
    · have hleft : slackResidual delta x ≤ slackResidual delta (2 / 3) := by
        by_cases hxeq : x = 2 / 3
        · subst x
          exact le_rfl
        · have hxlt : x < 2 / 3 := lt_of_le_of_ne hxb hxeq
          exact (slackResidual_strictMonoOn delta
            ⟨hx.1, hxb⟩ ⟨by norm_num, le_rfl⟩ hxlt).le
      have hright : bindingResidual delta (2 / 3) < bindingResidual delta y :=
        bindingResidual_strictMono delta hygt
      simp only [continuationResidual, hxb, hyb, ↓reduceIte]
      rw [residual_boundary delta] at hleft
      exact lt_of_le_of_lt hleft hright
    · simp only [continuationResidual, hxb, hyb, ↓reduceIte]
      exact bindingResidual_strictMono delta hxy

/-- Thus, for any fixed price difference, there is at most one interior fulfilled-expectations
    shopper share on the physical interval. -/
theorem continuationResidual_injOn (delta : ℝ) :
    InjOn (continuationResidual delta) (Icc 0 1) :=
  (continuationResidual_strictMonoOn delta).injOn

/-- In particular, two physical zeros of the same continuation residual must coincide. -/
theorem continuation_zero_unique {delta x y : ℝ}
    (hx : x ∈ Icc (0 : ℝ) 1) (hy : y ∈ Icc (0 : ℝ) 1)
    (hzx : continuationResidual delta x = 0)
    (hzy : continuationResidual delta y = 0) : x = y := by
  apply continuationResidual_injOn delta hx hy
  rw [hzx, hzy]

end

end DirectionalFriction.ContinuationMonotone
