import DirectionalFriction.Core

/-!
# Exact frozen witness certificates

Machine-checked rational identities and strict radical sign certificates for the
exact witness used by the global-equilibrium proof in the frozen manuscript.
-/

namespace DirectionalFriction.Witness

noncomputable section

/-- Exact shopper share in the frozen global-Nash witness. -/
def xStar : ℝ := 23 / 40

/-- Exact continuation slope `g*` in the frozen witness. -/
def gStar : ℝ := 188234 / 184117

/-- Exact curvature `g'*` in the frozen witness. -/
def gpStar : ℝ := -(1058400000 / 466368361)

/-- Exact equilibrium prices under `c = 0`. -/
def pLStar : ℝ := xStar * gStar

def pRStar : ℝ := (1 - xStar) * gStar

/-- Exact equilibrium profits under `c = 0`. -/
def piLStar : ℝ := pLStar * xStar

def piRStar : ℝ := pRStar * (1 - xStar)

/-- Exact left own-price SOC term from the appendix. -/
theorem socL_exact :
    2 * gStar + xStar * gpStar = (345013444 / 466368361 : ℝ) := by
  norm_num [gStar, gpStar, xStar]

/-- Exact right own-price SOC term from the appendix. -/
theorem socR_exact :
    2 * gStar - (1 - xStar) * gpStar = (82553732 / 27433433 : ℝ) := by
  norm_num [gStar, gpStar, xStar]

/-- Both own-price second-order-condition terms are strictly positive. -/
theorem witness_soc :
    0 < 2 * gStar + xStar * gpStar ∧
    0 < 2 * gStar - (1 - xStar) * gpStar := by
  constructor <;> norm_num [gStar, gpStar, xStar]

/-- Exact negative best-response slope for L. -/
theorem brL_exact :
    DirectionalFriction.brL gStar gpStar xStar =
      -(65891639 / 172506722 : ℝ) := by
  norm_num [DirectionalFriction.brL, gStar, gpStar, xStar]

/-- Exact positive best-response slope for R. -/
theorem brR_exact :
    DirectionalFriction.brR gStar gpStar xStar =
      (27253433 / 41276866 : ℝ) := by
  norm_num [DirectionalFriction.brR, gStar, gpStar, xStar]

/-- Machine-checked local strategic asymmetry at the exact witness. -/
theorem witness_local_strategic_asymmetry :
    DirectionalFriction.brL gStar gpStar xStar < 0 ∧
    0 < DirectionalFriction.brR gStar gpStar xStar := by
  constructor <;> norm_num [DirectionalFriction.brL, DirectionalFriction.brR,
    gStar, gpStar, xStar]

/-- Exact prices quoted in the theory freeze. -/
theorem prices_exact :
    pLStar = (2164691 / 3682340 : ℝ) ∧
    pRStar = (1599989 / 3682340 : ℝ) := by
  constructor <;> norm_num [pLStar, pRStar, xStar, gStar]

/-- Exact profits quoted in the theory freeze. -/
theorem profits_exact :
    piLStar = (49787893 / 147293600 : ℝ) ∧
    piRStar = (27199813 / 147293600 : ℝ) := by
  constructor <;> norm_num [piLStar, piRStar, pLStar, pRStar, xStar, gStar]

/-- Boundary continuation slope used in the global-monotonicity certificate. -/
def gBoundary : ℝ :=
  (47133952 - 341955 * Real.sqrt 7599) / 23566976

/-- Lean verification of the strict positivity asserted in paper equation (22).
    The proof reduces the radical comparison to the exact integer square certificate. -/
theorem gBoundary_pos : 0 < gBoundary := by
  have hsqrt_sq : (Real.sqrt (7599 : ℝ)) ^ 2 = 7599 := by
    norm_num
  have hsquare :
      ((341955 : ℝ) * Real.sqrt 7599) ^ 2 < (47133952 : ℝ) ^ 2 := by
    nlinarith [hsqrt_sq]
  have hleft : 0 ≤ (341955 : ℝ) * Real.sqrt 7599 := by
    positivity
  have hright : 0 < (47133952 : ℝ) := by
    norm_num
  have hlt : (341955 : ℝ) * Real.sqrt 7599 < 47133952 := by
    nlinarith
  have hnum : 0 < (47133952 : ℝ) - 341955 * Real.sqrt 7599 := by
    linarith
  exact div_pos hnum (by norm_num)

/-- Exact L boundary-deviation profit gap from paper equation (23). -/
def lBoundaryGap : ℝ :=
  (358680877 - 4103460 * Real.sqrt 7599) / 1325642400

/-- Lean verification that the exact L boundary-deviation profit gap is strict. -/
theorem lBoundaryGap_pos : 0 < lBoundaryGap := by
  have hsqrt_sq : (Real.sqrt (7599 : ℝ)) ^ 2 = 7599 := by
    norm_num
  have hsquare :
      ((4103460 : ℝ) * Real.sqrt 7599) ^ 2 < (358680877 : ℝ) ^ 2 := by
    nlinarith [hsqrt_sq]
  have hleft : 0 ≤ (4103460 : ℝ) * Real.sqrt 7599 := by
    positivity
  have hright : 0 < (358680877 : ℝ) := by
    norm_num
  have hlt : (4103460 : ℝ) * Real.sqrt 7599 < 358680877 := by
    nlinarith
  have hnum : 0 < (358680877 : ℝ) - 4103460 * Real.sqrt 7599 := by
    linarith
  exact div_pos hnum (by norm_num)

end

end DirectionalFriction.Witness
