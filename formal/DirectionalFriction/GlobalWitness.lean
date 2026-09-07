import DirectionalFriction.Operator
import DirectionalFriction.Witness

/-!
# Exact global-witness deviation certificates

Phase 3 replaces the Stage-11 Sturm/root-count route by a stronger direct
profit-gap factorization.  On the physical slack service-share interval, the
gap from the candidate profit factors into `(s-s*)^2` times a residual
polynomial whose sign is fixed on the whole interval.  The binding-floor
region is handled by exact quadratic comparisons.
-/

namespace DirectionalFriction.GlobalWitness

open DirectionalFriction.Operator
open DirectionalFriction.Witness

noncomputable section

/-- The radical appearing in the frozen witness. -/
def r : ℝ := Real.sqrt 7599

/-- The normalized waiting-cost scale `A=w/(Ft)` at the witness. -/
def witnessA : ℝ := (22797 / 7364680 : ℝ) * r

/-- Exact equilibrium service share in the linear-in-`sqrt(7599)` form used by
    the algebraic certificates. -/
def sStar : ℝ := 149 / 98 - r / 98

/-- Inverse slack-branch map from service share to shopper share for `M=2/3`. -/
def xFromShare (s : ℝ) : ℝ :=
  (s^2 - (2/3 : ℝ) * (1-s)^2) / (s^2 + (1-s)^2)

/-- Directional waiting/access difference in service-share coordinates. -/
def hShare (s : ℝ) : ℝ := 1/s - 1/(1-s)

/-- L's unilateral slack-branch profit, parameterized by the induced service share. -/
def piLSlack (s : ℝ) : ℝ :=
  xFromShare s * (pRStar - (2*xFromShare s - 1) - witnessA * hShare s)

/-- R's unilateral slack-branch profit, parameterized by the induced service share. -/
def piRSlack (s : ℝ) : ℝ :=
  (1-xFromShare s) * (pLStar + (2*xFromShare s - 1) + witnessA * hShare s)

/-- Positive denominator core appearing in both rational deviation problems. -/
def denCore (s : ℝ) : ℝ := 2*s^2 - 2*s + 1

/-- Shifted quartic residual in L's exact profit-gap factorization. -/
def lResidual (u : ℝ) : ℝ :=
  u^4
  + (-430275400/204798097 - 2811733*r/204798097) * u^3
  + (2150038263/409596194 + 14146850*r/204798097) * u^2
  + (343517800/204798097 + 15231733*r/819192388) * u
  - 17599/38416 - 25*r/4802

/-- Shifted cubic residual in R's exact profit-gap factorization. -/
def rResidual (u : ℝ) : ℝ :=
  u^3
  + (-2170075783/663718034 - 13611733*r/331859017) * u^2
  + (1325722583/1327436068 + 9389967*r/663718034) * u
  + 17599/19208 + 25*r/2401

/-- Exact elementary bounds sufficient for every Phase-3 radical sign check. -/
theorem r_bounds : (87 : ℝ) < r ∧ r < 88 := by
  have hr0 : 0 ≤ r := by simp [r]
  have hr2 : r^2 = 7599 := by norm_num [r]
  constructor <;> nlinarith

/-- The common rational denominator core is strictly positive for every real `s`. -/
theorem denCore_pos (s : ℝ) : 0 < denCore s := by
  rw [denCore]
  nlinarith [sq_nonneg (s - 1/2)]

private theorem l_coeff_bounds :
    (-10/3 : ℝ) < (-430275400/204798097 - 2811733*r/204798097) ∧
    (-430275400/204798097 - 2811733*r/204798097) < 0 ∧
    0 < (2150038263/409596194 + 14146850*r/204798097) ∧
    (2150038263/409596194 + 14146850*r/204798097) < 23/2 ∧
    0 < (343517800/204798097 + 15231733*r/819192388) ∧
    (343517800/204798097 + 15231733*r/819192388) < 10/3 ∧
    (-17599/38416 - 25*r/4802) < (-9/10 : ℝ) := by
  rcases r_bounds with ⟨hrlo, hrhi⟩
  constructor
  · nlinarith
  constructor
  · nlinarith
  constructor
  · nlinarith
  constructor
  · nlinarith
  constructor
  · nlinarith
  constructor <;> nlinarith

private theorem r_coeff_bounds :
    (-7 : ℝ) < (-2170075783/663718034 - 13611733*r/331859017) ∧
    (-2170075783/663718034 - 13611733*r/331859017) < 0 ∧
    0 < (1325722583/1327436068 + 9389967*r/663718034) ∧
    (1325722583/1327436068 + 9389967*r/663718034) < 5/2 ∧
    (9/5 : ℝ) < (17599/19208 + 25*r/2401) := by
  rcases r_bounds with ⟨hrlo, hrhi⟩
  constructor
  · nlinarith
  constructor
  · nlinarith
  constructor
  · nlinarith
  constructor <;> nlinarith

/-- L's residual is strictly negative on a deliberately wider interval than the
    physical slack region: `s∈[2/5,2/3]` means `u=s-1/2∈[-1/10,1/6]`. -/
theorem lResidual_neg {u : ℝ} (hlo : (-1/10 : ℝ) ≤ u) (hhi : u ≤ 1/6) :
    lResidual u < 0 := by
  rcases l_coeff_bounds with ⟨hc3lo, hc3hi, hc2lo, hc2hi, hc1lo, hc1hi, hc0⟩
  let c3 : ℝ := -430275400/204798097 - 2811733*r/204798097
  let c2 : ℝ := 2150038263/409596194 + 14146850*r/204798097
  let c1 : ℝ := 343517800/204798097 + 15231733*r/819192388
  let c0 : ℝ := -17599/38416 - 25*r/4802
  rw [lResidual]
  change u^4 + c3*u^3 + c2*u^2 + c1*u + c0 < 0
  change (-10/3 : ℝ) < c3 at hc3lo
  change c3 < 0 at hc3hi
  change 0 < c2 at hc2lo
  change c2 < 23/2 at hc2hi
  change 0 < c1 at hc1lo
  change c1 < 10/3 at hc1hi
  change c0 < (-9/10 : ℝ) at hc0
  by_cases hu : 0 ≤ u
  · have hu2n : 0 ≤ u^2 := sq_nonneg u
    have hu2le : u^2 ≤ (1/36 : ℝ) := by
      have hp := mul_nonneg hu (sub_nonneg.mpr hhi)
      nlinarith
    have hu3n : 0 ≤ u^3 := by positivity
    have hu4le : u^4 ≤ (1/1296 : ℝ) := by
      have hp := mul_nonneg (sub_nonneg.mpr hu2le) (by nlinarith [hu2n] : 0 ≤ (1/36 : ℝ) + u^2)
      nlinarith
    have hc3term : c3*u^3 ≤ 0 := mul_nonpos_of_nonpos_of_nonneg (le_of_lt hc3hi) hu3n
    have hc2term : c2*u^2 ≤ (23/2 : ℝ)*(1/36) :=
      mul_le_mul (le_of_lt hc2hi) hu2le hu2n (by norm_num)
    have hc1term : c1*u ≤ (10/3 : ℝ)*(1/6) :=
      mul_le_mul (le_of_lt hc1hi) hhi hu (by norm_num)
    nlinarith
  · have huneg : u < 0 := lt_of_not_ge hu
    let v : ℝ := -u
    have hv0 : 0 ≤ v := by dsimp [v]; linarith
    have hvhi : v ≤ 1/10 := by dsimp [v]; linarith
    have hv2n : 0 ≤ v^2 := sq_nonneg v
    have hv2le : v^2 ≤ (1/100 : ℝ) := by
      have hp := mul_nonneg hv0 (sub_nonneg.mpr hvhi)
      nlinarith
    have hv3n : 0 ≤ v^3 := by positivity
    have hv3le : v^3 ≤ (1/1000 : ℝ) := by
      have hp := mul_le_mul hv2le hvhi hv0 (by norm_num : 0 ≤ (1/100 : ℝ))
      nlinarith
    have hv4le : v^4 ≤ (1/10000 : ℝ) := by
      have hp := mul_nonneg (sub_nonneg.mpr hv2le) (by nlinarith [hv2n] : 0 ≤ (1/100 : ℝ) + v^2)
      nlinarith
    have hmc3n : 0 ≤ -c3 := by linarith
    have hmc3hi : -c3 ≤ 10/3 := by linarith
    have hc3term : (-c3)*v^3 ≤ (10/3 : ℝ)*(1/1000) :=
      mul_le_mul hmc3hi hv3le hv3n (by norm_num)
    have hc2term : c2*v^2 ≤ (23/2 : ℝ)*(1/100) :=
      mul_le_mul (le_of_lt hc2hi) hv2le hv2n (by norm_num)
    have hc1term : -c1*v ≤ 0 := by nlinarith [mul_nonneg (le_of_lt hc1lo) hv0]
    have hre :
        u^4 + c3*u^3 + c2*u^2 + c1*u + c0 =
        v^4 + (-c3)*v^3 + c2*v^2 - c1*v + c0 := by
      dsimp [v]
      ring
    rw [hre]
    nlinarith

/-- R's residual is strictly positive on the same wider service-share interval. -/
theorem rResidual_pos {u : ℝ} (hlo : (-1/10 : ℝ) ≤ u) (hhi : u ≤ 1/6) :
    0 < rResidual u := by
  rcases r_coeff_bounds with ⟨hc2lo, hc2hi, hc1lo, hc1hi, hc0⟩
  let c2 : ℝ := -2170075783/663718034 - 13611733*r/331859017
  let c1 : ℝ := 1325722583/1327436068 + 9389967*r/663718034
  let c0 : ℝ := 17599/19208 + 25*r/2401
  rw [rResidual]
  change 0 < u^3 + c2*u^2 + c1*u + c0
  change (-7 : ℝ) < c2 at hc2lo
  change c2 < 0 at hc2hi
  change 0 < c1 at hc1lo
  change c1 < 5/2 at hc1hi
  change (9/5 : ℝ) < c0 at hc0
  by_cases hu : 0 ≤ u
  · have hu2n : 0 ≤ u^2 := sq_nonneg u
    have hu2le : u^2 ≤ (1/36 : ℝ) := by
      have hp := mul_nonneg hu (sub_nonneg.mpr hhi)
      nlinarith
    have hu3n : 0 ≤ u^3 := by positivity
    have hc2a : (-7 : ℝ)*u^2 ≤ c2*u^2 :=
      mul_le_mul_of_nonneg_right (le_of_lt hc2lo) hu2n
    have hc2b : (-7/36 : ℝ) ≤ (-7)*u^2 := by nlinarith
    have hc1term : 0 ≤ c1*u := mul_nonneg (le_of_lt hc1lo) hu
    nlinarith
  · have huneg : u < 0 := lt_of_not_ge hu
    let v : ℝ := -u
    have hv0 : 0 ≤ v := by dsimp [v]; linarith
    have hvhi : v ≤ 1/10 := by dsimp [v]; linarith
    have hv2n : 0 ≤ v^2 := sq_nonneg v
    have hv2le : v^2 ≤ (1/100 : ℝ) := by
      have hp := mul_nonneg hv0 (sub_nonneg.mpr hvhi)
      nlinarith
    have hv3n : 0 ≤ v^3 := by positivity
    have hv3le : v^3 ≤ (1/1000 : ℝ) := by
      have hp := mul_le_mul hv2le hvhi hv0 (by norm_num : 0 ≤ (1/100 : ℝ))
      nlinarith
    have hc2a : (-7 : ℝ)*v^2 ≤ c2*v^2 :=
      mul_le_mul_of_nonneg_right (le_of_lt hc2lo) hv2n
    have hc2b : (-7/100 : ℝ) ≤ (-7)*v^2 := by nlinarith
    have hc1prod : c1*v ≤ (5/2 : ℝ)*(1/10) :=
      mul_le_mul (le_of_lt hc1hi) hvhi hv0 (by norm_num)
    have hre :
        u^3 + c2*u^2 + c1*u + c0 = -v^3 + c2*v^2 - c1*v + c0 := by
      dsimp [v]
      ring
    rw [hre]
    nlinarith

end

end DirectionalFriction.GlobalWitness
