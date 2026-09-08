import DirectionalFriction.GlobalNash

/-!
# Exact inner support band for a nonbinding service floor

The manuscript reports witness-specific numerical support endpoints around
`0.324091` and `0.344228`.  Those decimal endpoints remain numerical
root-isolation output.  For a fully analytic Lean certificate of Proposition T2's
qualitative content, this module proves the strictly interior rational band

  `33/100 ≤ q ≤ 17/50`.

Throughout that band the frozen candidate remains on the unconstrained operator
branch and remains each retailer's unique global best response.  Thus a whole
nonempty interval of service obligations is slack on path but changes the
off-path deviation problem.
-/

namespace DirectionalFriction.SupportBand

open Set
open DirectionalFriction.Operator
open DirectionalFriction.Witness
open DirectionalFriction.GlobalWitness
open DirectionalFriction.GlobalSlack
open DirectionalFriction.GlobalNash

noncomputable section

/-- Exact inner endpoints used for the machine-checked support interval. -/
def qLo : ℝ := 33 / 100
def qHi : ℝ := 17 / 50

/-- Waiting/access difference once the R-side minimum share `q` binds. -/
def hFloorQ (q : ℝ) : ℝ := 1 / (1 - q) - 1 / q

/-- Positive magnitude of that negative waiting difference. -/
def floorMagnitude (q : ℝ) : ℝ := 1 / q - 1 / (1 - q)

/-- Normalized waiting contribution in the binding region. -/
def floorEffect (q : ℝ) : ℝ := witnessA * hFloorQ q

/-- Shopper-share threshold at which the unconstrained L service share reaches `1-q`. -/
def xBoundary (q : ℝ) : ℝ := xFromShare (1 - q)

/-- L profit after the R-side service floor binds. -/
def piLFloorQ (q x : ℝ) : ℝ :=
  x * (pRStar - (2 * x - 1) - floorEffect q)

/-- R profit after the R-side service floor binds. -/
def piRFloorQ (q x : ℝ) : ℝ :=
  (1 - x) * (pLStar + (2 * x - 1) + floorEffect q)

/-- Quadratic vertices of the two binding-floor deviation problems. -/
def vertexLQ (q : ℝ) : ℝ := (pRStar + 1 - floorEffect q) / 4
def vertexRQ (q : ℝ) : ℝ := (3 - pLStar - floorEffect q) / 4

/-- The actual q-dependent unilateral deviation problems at the frozen rival prices. -/
def piLDeviationQ (q x : ℝ) : ℝ :=
  if unconstrainedShare (2 / 3) x ≤ 1 - q
    then piLSlack (unconstrainedShare (2 / 3) x)
    else piLFloorQ q x

def piRDeviationQ (q x : ℝ) : ℝ :=
  if unconstrainedShare (2 / 3) x ≤ 1 - q
    then piRSlack (unconstrainedShare (2 / 3) x)
    else piRFloorQ q x

private theorem r_sq : r^2 = (7599 : ℝ) := by
  norm_num [r]

/-- The witness waiting scale has simple rational bounds. -/
theorem witnessA_bounds : (269 / 1000 : ℝ) < witnessA ∧ witnessA < 11 / 40 := by
  rcases r_bounds with ⟨hrlo, hrhi⟩
  unfold witnessA
  constructor <;> nlinarith

/-- The exact witness service share lies safely below `13/20`. -/
theorem sStar_lt : sStar < (13 / 20 : ℝ) := by
  have hr := r_bounds.1
  unfold sStar
  nlinarith

/-- The rational support band is a genuine subset of `(0,1/2)`. -/
theorem q_band_domain {q : ℝ} (hlo : qLo ≤ q) (hhi : q ≤ qHi) :
    0 < q ∧ q < 1 / 2 := by
  unfold qLo qHi at hlo hhi
  constructor <;> linarith

/-- Throughout the rational support band, the frozen candidate floor is strictly slack. -/
theorem candidate_floor_slack {q : ℝ} (hlo : qLo ≤ q) (hhi : q ≤ qHi) :
    q < sStar ∧ sStar < 1 - q := by
  unfold qLo qHi at hlo hhi
  have hslo := sStar_interval.1
  have hshi := sStar_lt
  constructor <;> linarith

/-- The floor magnitude has a denominator-free representation. -/
theorem floorMagnitude_formula {q : ℝ} (hq0 : q ≠ 0) (hq1 : q ≠ 1) :
    floorMagnitude q = (1 - 2 * q) / (q * (1 - q)) := by
  unfold floorMagnitude
  field_simp [hq0, sub_ne_zero.mpr hq1]
  ring

/-- Uniform exact bounds on the floor waiting difference over the support band. -/
theorem floorMagnitude_bounds {q : ℝ} (hlo : qLo ≤ q) (hhi : q ≤ qHi) :
    (71 / 50 : ℝ) < floorMagnitude q ∧ floorMagnitude q < 31 / 20 := by
  rcases q_band_domain hlo hhi with ⟨hq0, hqhalf⟩
  have hq1 : q < 1 := lt_trans hqhalf (by norm_num)
  have hprod : 0 < q * (1 - q) := mul_pos hq0 (by linarith)
  have hform := floorMagnitude_formula (ne_of_gt hq0) (ne_of_lt hq1)
  rw [hform]
  constructor
  · apply (lt_div_iff₀ hprod).2
    unfold qHi at hhi
    have hfac1 : 50 * q - 17 ≤ 0 := by linarith
    have hfac2 : 3550 * q - 7343 < 0 := by linarith
    have hp : 0 ≤ (50 * q - 17) * (3550 * q - 7343) :=
      mul_nonneg_of_nonpos_of_nonpos hfac1 (le_of_lt hfac2)
    nlinarith
  · apply (div_lt_iff₀ hprod).2
    unfold qLo at hlo
    have hfac1 : 0 ≤ 100 * q - 33 := by linarith
    have hfac2 : 3100 * q - 6077 < 0 := by linarith
    have hp : 0 ≤ -(100 * q - 33) * (3100 * q - 6077) := by
      have hneg : 0 ≤ -(3100 * q - 6077) := by linarith
      nlinarith [mul_nonneg hfac1 hneg]
    nlinarith

/-- Consequently the binding waiting effect stays in a compact negative interval. -/
theorem floorEffect_bounds {q : ℝ} (hlo : qLo ≤ q) (hhi : q ≤ qHi) :
    (-1 / 2 : ℝ) < floorEffect q ∧ floorEffect q < -19 / 50 := by
  rcases witnessA_bounds with ⟨hAlo, hAhi⟩
  rcases floorMagnitude_bounds hlo hhi with ⟨hbLo, hbHi⟩
  have hA0 : 0 < witnessA := lt_trans (by norm_num) hAlo
  have hb0 : 0 < floorMagnitude q := lt_trans (by norm_num) hbLo
  have hupper1 : witnessA * floorMagnitude q < (11 / 40 : ℝ) * floorMagnitude q :=
    mul_lt_mul_of_pos_right hAhi hb0
  have hupper2 : (11 / 40 : ℝ) * floorMagnitude q < (11 / 40) * (31 / 20) :=
    mul_lt_mul_of_pos_left hbHi (by norm_num)
  have hlower1 : (269 / 1000 : ℝ) * floorMagnitude q < witnessA * floorMagnitude q :=
    mul_lt_mul_of_pos_right hAlo hb0
  have hlower2 : (269 / 1000 : ℝ) * (71 / 50) < (269 / 1000) * floorMagnitude q :=
    mul_lt_mul_of_pos_left hbLo (by norm_num)
  have heq : floorEffect q = -witnessA * floorMagnitude q := by
    unfold floorEffect hFloorQ floorMagnitude
    ring
  rw [heq]
  constructor <;> nlinarith

/-- The service-to-shopper inverse is strictly increasing on positive interior shares. -/
theorem xFromShare_strictMonoOn : StrictMonoOn xFromShare (Ioo (0 : ℝ) 1) := by
  intro a ha b hb hab
  have hda : 0 < denCore a := denCore_pos a
  have hdb : 0 < denCore b := denCore_pos b
  have hcross : 2 * a * b - a - b < 0 := by
    have h1 : a * b < a := by nlinarith [mul_lt_mul_of_pos_left hb.2 ha.1]
    have h2 : a * b < b := by nlinarith [mul_lt_mul_of_pos_right ha.2 hb.1]
    linarith
  have hdiff : a - b < 0 := sub_neg.mpr hab
  have hnum : 0 < 5 * (a - b) * (2 * a * b - a - b) := by positivity
  have hden : 0 < 3 * denCore a * denCore b := by positivity
  have hid :
      xFromShare b - xFromShare a =
        5 * (a - b) * (2 * a * b - a - b) / (3 * denCore a * denCore b) := by
    unfold xFromShare denCore
    field_simp
    ring
  rw [hid]
  exact div_pos hnum hden

/-- The rational inverse map remains exact on the full physical interval below `x=1`. -/
theorem xFromShare_unconstrainedShare_full {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x < 1) :
    xFromShare (unconstrainedShare (2 / 3) x) = x := by
  have hL : 0 < demandL (2 / 3) x := by simp [demandL]; linarith
  have hR : 0 < demandR x := by simp [demandR]; linarith
  let a : ℝ := Real.sqrt (demandL (2 / 3) x)
  let b : ℝ := Real.sqrt (demandR x)
  have ha : 0 < a := by dsimp [a]; exact Real.sqrt_pos.2 hL
  have hb : 0 < b := by dsimp [b]; exact Real.sqrt_pos.2 hR
  have ha2 : a^2 = 2 / 3 + x := by
    dsimp [a, demandL]
    exact Real.sq_sqrt (by linarith)
  have hb2 : b^2 = 1 - x := by
    dsimp [b, demandR]
    exact Real.sq_sqrt (by linarith)
  have hd : a + b ≠ 0 := ne_of_gt (add_pos ha hb)
  rw [unconstrainedShare]
  change xFromShare (a / (a + b)) = x
  unfold xFromShare
  have hone : 1 - a / (a + b) = b / (a + b) := by
    field_simp [hd]
    ring
  rw [hone]
  have houter : (a / (a + b))^2 + (b / (a + b))^2 ≠ 0 := by positivity
  field_simp [hd, houter]
  nlinarith [ha2, hb2]

/-- Physical unconstrained service shares are interior below the `x=1` corner. -/
theorem unconstrainedShare_mem_Ioo {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x < 1) :
    unconstrainedShare (2 / 3) x ∈ Ioo (0 : ℝ) 1 := by
  have hL : 0 < demandL (2 / 3) x := by simp [demandL]; linarith
  have hR : 0 < demandR x := by simp [demandR]; linarith
  let a : ℝ := Real.sqrt (demandL (2 / 3) x)
  let b : ℝ := Real.sqrt (demandR x)
  have ha : 0 < a := by dsimp [a]; exact Real.sqrt_pos.2 hL
  have hb : 0 < b := by dsimp [b]; exact Real.sqrt_pos.2 hR
  have hsum : 0 < a + b := add_pos ha hb
  rw [unconstrainedShare]
  change 0 < a / (a + b) ∧ a / (a + b) < 1
  constructor
  · exact div_pos ha hsum
  · apply (div_lt_one hsum).2
    linarith

/-- A simple global lower bound for the unconstrained L service share. -/
theorem unconstrainedShare_lower {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x < 1) :
    (2 / 5 : ℝ) ≤ unconstrainedShare (2 / 3) x := by
  have hL : 0 < demandL (2 / 3) x := by simp [demandL]; linarith
  have hR : 0 < demandR x := by simp [demandR]; linarith
  let a : ℝ := Real.sqrt (demandL (2 / 3) x)
  let b : ℝ := Real.sqrt (demandR x)
  have ha : 0 < a := by dsimp [a]; exact Real.sqrt_pos.2 hL
  have hb : 0 < b := by dsimp [b]; exact Real.sqrt_pos.2 hR
  have ha2 : a^2 = 2 / 3 + x := by
    dsimp [a, demandL]
    exact Real.sq_sqrt (by linarith)
  have hb2 : b^2 = 1 - x := by
    dsimp [b, demandR]
    exact Real.sq_sqrt (by linarith)
  have hsum : 0 < a + b := add_pos ha hb
  have hlower : 2 * b ≤ 3 * a := by
    by_contra h
    have hlt : 3 * a < 2 * b := lt_of_not_ge h
    have hp : 0 < (2 * b - 3 * a) * (2 * b + 3 * a) := by
      apply mul_pos
      · linarith
      · positivity
    ring_nf at hp
    nlinarith
  rw [unconstrainedShare]
  change (2 / 5 : ℝ) ≤ a / (a + b)
  apply (le_div_iff₀ hsum).2
  nlinarith

/-- At the right physical corner the unconstrained operator gives all service to L. -/
theorem unconstrainedShare_one : unconstrainedShare (2 / 3) (1 : ℝ) = 1 := by
  have hL : 0 < demandL (2 / 3) (1 : ℝ) := by norm_num [demandL]
  have hs : 0 < Real.sqrt (demandL (2 / 3) (1 : ℝ)) := Real.sqrt_pos.2 hL
  rw [unconstrainedShare]
  simp only [demandR, sub_self, Real.sqrt_zero, add_zero]
  exact div_self (ne_of_gt hs)

/-- Extended exact L slack dominance through service share `67/100`. -/
theorem l_slack_support {s : ℝ} (hlo : (2 / 5 : ℝ) ≤ s) (hhi : s ≤ 67 / 100) :
    piLSlack s ≤ piLStar := by
  have hs0 : 0 < s := by linarith
  have hs1 : s < 1 := by linarith
  have hu0 : (-1 / 10 : ℝ) ≤ s - 1 / 2 := by linarith
  have hu1 : s - 1 / 2 ≤ (17 / 100 : ℝ) := by linarith
  have hres : lResidual (s - 1 / 2) < 0 := lResidual_neg_support hu0 hu1
  have hsq : 0 ≤ (s - sStar)^2 := sq_nonneg _
  have hnum : 819192388 * (s - sStar)^2 * lResidual (s - 1 / 2) ≤ 0 := by
    exact mul_nonpos_of_nonneg_of_nonpos (mul_nonneg (by norm_num) hsq) (le_of_lt hres)
  have hcore : 0 < denCore s := denCore_pos s
  have hden : 1325642400 * s * (s - 1) * denCore s^2 < 0 := by
    have hpref : 0 < (1325642400 : ℝ) * s := mul_pos (by norm_num) hs0
    have hmid : (1325642400 : ℝ) * s * (s - 1) < 0 :=
      mul_neg_of_pos_of_neg hpref (by linarith)
    exact mul_neg_of_neg_of_pos hmid (sq_pos_of_pos hcore)
  have hfact := l_gap_factorization (ne_of_gt hs0) (ne_of_lt hs1)
  have hquot :
      0 ≤ 819192388 * (s - sStar)^2 * lResidual (s - 1 / 2) /
        (1325642400 * s * (s - 1) * denCore s^2) := by
    rw [div_nonneg_iff]
    exact Or.inr ⟨hnum, le_of_lt hden⟩
  linarith

/-- Strict L slack dominance away from `s*` on the extended interval. -/
theorem l_slack_support_strict {s : ℝ} (hlo : (2 / 5 : ℝ) ≤ s) (hhi : s ≤ 67 / 100)
    (hne : s ≠ sStar) : piLSlack s < piLStar := by
  have hs0 : 0 < s := by linarith
  have hs1 : s < 1 := by linarith
  have hu0 : (-1 / 10 : ℝ) ≤ s - 1 / 2 := by linarith
  have hu1 : s - 1 / 2 ≤ (17 / 100 : ℝ) := by linarith
  have hres := lResidual_neg_support hu0 hu1
  have hsq : 0 < (s - sStar)^2 := sq_pos_of_ne_zero (sub_ne_zero.mpr hne)
  have hnum : 819192388 * (s - sStar)^2 * lResidual (s - 1 / 2) < 0 :=
    mul_neg_of_pos_of_neg (mul_pos (by norm_num) hsq) hres
  have hcore := denCore_pos s
  have hden : 1325642400 * s * (s - 1) * denCore s^2 < 0 := by
    have hpref : 0 < (1325642400 : ℝ) * s := mul_pos (by norm_num) hs0
    have hmid : (1325642400 : ℝ) * s * (s - 1) < 0 :=
      mul_neg_of_pos_of_neg hpref (by linarith)
    exact mul_neg_of_neg_of_pos hmid (sq_pos_of_pos hcore)
  have hfact := l_gap_factorization (ne_of_gt hs0) (ne_of_lt hs1)
  have hquot :
      0 < 819192388 * (s - sStar)^2 * lResidual (s - 1 / 2) /
        (1325642400 * s * (s - 1) * denCore s^2) := by
    rw [div_pos_iff]
    exact Or.inr ⟨hnum, hden⟩
  nlinarith

/-- Extended exact R slack dominance through service share `67/100`. -/
theorem r_slack_support {s : ℝ} (hlo : (2 / 5 : ℝ) ≤ s) (hhi : s ≤ 67 / 100) :
    piRSlack s ≤ piRStar := by
  have hs0 : 0 < s := by linarith
  have hs1 : s < 1 := by linarith
  have hu0 : (-1 / 10 : ℝ) ≤ s - 1 / 2 := by linarith
  have hu1 : s - 1 / 2 ≤ (17 / 100 : ℝ) := by linarith
  have hres := rResidual_pos_support hu0 hu1
  have hnum : 0 ≤ 1327436068 * (s - sStar)^2 * rResidual (s - 1 / 2) := by positivity
  have hden : 0 < 1325642400 * s * denCore s^2 := by positivity
  have hfact := r_gap_factorization (ne_of_gt hs0) (ne_of_lt hs1)
  have hquot :
      0 ≤ 1327436068 * (s - sStar)^2 * rResidual (s - 1 / 2) /
        (1325642400 * s * denCore s^2) := div_nonneg hnum (le_of_lt hden)
  linarith

/-- Strict R slack dominance away from `s*` on the extended interval. -/
theorem r_slack_support_strict {s : ℝ} (hlo : (2 / 5 : ℝ) ≤ s) (hhi : s ≤ 67 / 100)
    (hne : s ≠ sStar) : piRSlack s < piRStar := by
  have hs0 : 0 < s := by linarith
  have hs1 : s < 1 := by linarith
  have hu0 : (-1 / 10 : ℝ) ≤ s - 1 / 2 := by linarith
  have hu1 : s - 1 / 2 ≤ (17 / 100 : ℝ) := by linarith
  have hres := rResidual_pos_support hu0 hu1
  have hsq : 0 < (s - sStar)^2 := sq_pos_of_ne_zero (sub_ne_zero.mpr hne)
  have hnum : 0 < 1327436068 * (s - sStar)^2 * rResidual (s - 1 / 2) :=
    mul_pos (mul_pos (by norm_num) hsq) hres
  have hden : 0 < 1325642400 * s * denCore s^2 := by positivity
  have hfact := r_gap_factorization (ne_of_gt hs0) (ne_of_lt hs1)
  have hquot :
      0 < 1327436068 * (s - sStar)^2 * rResidual (s - 1 / 2) /
        (1325642400 * s * denCore s^2) := div_pos hnum hden
  nlinarith

/-- Closed formula for the q-dependent floor threshold. -/
theorem xBoundary_formula {q : ℝ} :
    xBoundary q = (q^2 - 6 * q + 3) / (3 * (2 * q^2 - 2 * q + 1)) := by
  have hd : 2 * q^2 - 2 * q + 1 ≠ 0 := by
    nlinarith [sq_nonneg (q - 1 / 2)]
  unfold xBoundary xFromShare
  field_simp [hd]
  ring

/-- The floor starts strictly to the right of `13/20` throughout the band. -/
theorem xBoundary_gt {q : ℝ} (hlo : qLo ≤ q) (hhi : q ≤ qHi) :
    (13 / 20 : ℝ) < xBoundary q := by
  rw [xBoundary_formula]
  have hd : 0 < 2 * q^2 - 2 * q + 1 := by
    nlinarith [sq_nonneg (q - 1 / 2)]
  apply (lt_div_iff₀ (mul_pos (by norm_num) hd)).2
  unfold qHi at hhi
  have h1 : 50 * q - 17 ≤ 0 := by linarith
  have h2 : 0 < 1450 * q + 1543 := by
    unfold qLo at hlo
    linarith
  have hp : (50 * q - 17) * (1450 * q + 1543) ≤ 0 :=
    mul_nonpos_of_nonpos_of_nonneg h1 (le_of_lt h2)
  nlinarith

/-- The L binding quadratic vertex is well left of the floor threshold. -/
theorem vertexLQ_lt_half {q : ℝ} (hlo : qLo ≤ q) (hhi : q ≤ qHi) :
    vertexLQ q < (1 / 2 : ℝ) := by
  have he := (floorEffect_bounds hlo hhi).1
  unfold vertexLQ pRStar
  nlinarith

/-- Exact concave-quadratic boundary comparison for L. -/
theorem l_floor_boundary_difference (q x : ℝ) :
    piLFloorQ q (xBoundary q) - piLFloorQ q x =
      2 * (x - xBoundary q) * (x + xBoundary q - 2 * vertexLQ q) := by
  unfold piLFloorQ vertexLQ
  ring

/-- Exact completion of the square for R's q-dependent binding problem. -/
theorem r_floor_vertex_completion (q x : ℝ) :
    piRFloorQ q (vertexRQ q) - piRFloorQ q x = 2 * (x - vertexRQ q)^2 := by
  unfold piRFloorQ vertexRQ
  ring

/-- Binding-floor profit at the threshold is exactly the slack formula at service share `1-q`. -/
theorem l_floor_boundary_eq_slack (q : ℝ) :
    piLFloorQ q (xBoundary q) = piLSlack (1 - q) := by
  unfold piLFloorQ xBoundary piLSlack floorEffect hFloorQ hShare
  ring

/-- R's candidate stays strictly above the global binding-floor vertex throughout the band. -/
theorem r_candidate_above_floor_vertex {q : ℝ} (hlo : qLo ≤ q) (hhi : q ≤ qHi) :
    piRFloorQ q (vertexRQ q) < piRStar := by
  rcases floorEffect_bounds hlo hhi with ⟨hylo, hyhi⟩
  let y : ℝ := floorEffect q
  have hylo' : (-1 / 2 : ℝ) < y := by exact hylo
  have hyhi' : y < (-19 / 50 : ℝ) := by exact hyhi
  have hfirst : 50 * y + 19 ≤ 0 := by linarith
  have hsecond : 0 < 4602925 * y + 12868466 := by linarith
  have hp : (50 * y + 19) * (4602925 * y + 12868466) ≤ 0 :=
    mul_nonpos_of_nonpos_of_nonneg hfirst (le_of_lt hsecond)
  have hQ :
      13559627875600 * y^2 + 43061512265080 * y + 14155979634477 < 0 := by
    have hid :
        (-6234619025419 / 25 : ℝ) -
          (13559627875600 * y^2 + 43061512265080 * y + 14155979634477) =
          -1472936 * (50 * y + 19) * (4602925 * y + 12868466) / 25 := by
      ring
    have hright :
        0 ≤ -1472936 * (50 * y + 19) * (4602925 * y + 12868466) / 25 := by
      have hp' : 0 ≤ -(50 * y + 19) * (4602925 * y + 12868466) := by
        nlinarith [hp]
      positivity
    nlinarith
  have hgap :
      piRStar - piRFloorQ q (vertexRQ q) =
        -(13559627875600 * y^2 + 43061512265080 * y + 14155979634477) /
          108477023004800 := by
    dsimp [y]
    unfold piRStar piRFloorQ vertexRQ pLStar
    ring
  rw [hgap]
  positivity

/-- If the service cap is exceeded below the right corner, the induced shopper
    share lies strictly beyond the exact floor threshold. -/
theorem x_gt_boundary_of_floor {q x : ℝ}
    (hq0 : 0 < q) (hq1 : q < 1)
    (hx0 : 0 ≤ x) (hx1 : x < 1)
    (hfloor : 1 - q < unconstrainedShare (2 / 3) x) :
    xBoundary q < x := by
  have hcap : 1 - q ∈ Ioo (0 : ℝ) 1 := ⟨by linarith, by linarith⟩
  have hsu := unconstrainedShare_mem_Ioo hx0 hx1
  have hm := xFromShare_strictMonoOn hcap hsu hfloor
  rw [xFromShare_unconstrainedShare_full hx0 hx1] at hm
  exact hm

/-- L's candidate is a global best response for every q in the exact inner support band. -/
theorem l_support_global {q x : ℝ}
    (hqlo : qLo ≤ q) (hqhi : q ≤ qHi) (hx0 : 0 ≤ x) (hx1 : x ≤ 1) :
    piLDeviationQ q x ≤ piLStar := by
  rcases q_band_domain hqlo hqhi with ⟨hq0, hqhalf⟩
  have hq1 : q < 1 := lt_trans hqhalf (by norm_num)
  by_cases hslack : unconstrainedShare (2 / 3) x ≤ 1 - q
  · rw [piLDeviationQ, if_pos hslack]
    by_cases hxeq : x = 1
    · subst x
      rw [unconstrainedShare_one] at hslack
      exfalso
      linarith
    · have hxlt : x < 1 := lt_of_le_of_ne hx1 hxeq
      have hlo := unconstrainedShare_lower hx0 hxlt
      have hhi : unconstrainedShare (2 / 3) x ≤ (67 / 100 : ℝ) := by
        unfold qLo at hqlo
        linarith
      exact l_slack_support hlo hhi
  · rw [piLDeviationQ, if_neg hslack]
    have hfloor : 1 - q < unconstrainedShare (2 / 3) x := lt_of_not_ge hslack
    have hxb : (13 / 20 : ℝ) < xBoundary q := xBoundary_gt hqlo hqhi
    have hv : vertexLQ q < (1 / 2 : ℝ) := vertexLQ_lt_half hqlo hqhi
    have hboundary_gap : piLFloorQ q (xBoundary q) < piLStar := by
      rw [l_floor_boundary_eq_slack]
      have hslo : (2 / 5 : ℝ) ≤ 1 - q := by
        unfold qHi at hqhi
        linarith
      have hshi : 1 - q ≤ (67 / 100 : ℝ) := by
        unfold qLo at hqlo
        linarith
      have hsne : 1 - q ≠ sStar := by
        have hs := sStar_lt
        intro heq
        rw [heq] at hslo hshi
        linarith
      exact l_slack_support_strict hslo hshi hsne
    by_cases hxeq : x = 1
    · subst x
      have hdiff := l_floor_boundary_difference q 1
      have hfac1 : 0 ≤ (1 : ℝ) - xBoundary q := by
        have hxb1 : xBoundary q < 1 := by
          have hcap : 1 - q ∈ Ioo (0 : ℝ) 1 := ⟨by linarith, by linarith⟩
          have hxone : xFromShare (1 - q) < xFromShare 1 := by
            unfold xFromShare
            have hd : (1 : ℝ)^2 + (1 - 1)^2 ≠ 0 := by norm_num
            have hc : (1 - q)^2 + (1 - (1 - q))^2 ≠ 0 := by positivity
            field_simp [hd, hc]
            nlinarith
          unfold xBoundary
          unfold xFromShare at hxone
          norm_num at hxone ⊢
          exact hxone
        linarith
      have hfac2 : 0 < (1 : ℝ) + xBoundary q - 2 * vertexLQ q := by linarith
      have hcomp : 0 ≤ piLFloorQ q (xBoundary q) - piLFloorQ q 1 := by
        rw [hdiff]
        positivity
      linarith
    · have hxlt : x < 1 := lt_of_le_of_ne hx1 hxeq
      have hxbx : xBoundary q < x :=
        x_gt_boundary_of_floor hq0 hq1 hx0 hxlt hfloor
      have hdiff := l_floor_boundary_difference q x
      have hfac2 : 0 < x + xBoundary q - 2 * vertexLQ q := by linarith
      have hcomp : 0 < piLFloorQ q (xBoundary q) - piLFloorQ q x := by
        rw [hdiff]
        positivity
      linarith

/-- R's candidate is a global best response for every q in the exact inner support band. -/
theorem r_support_global {q x : ℝ}
    (hqlo : qLo ≤ q) (hqhi : q ≤ qHi) (hx0 : 0 ≤ x) (hx1 : x ≤ 1) :
    piRDeviationQ q x ≤ piRStar := by
  rcases q_band_domain hqlo hqhi with ⟨hq0, hqhalf⟩
  by_cases hslack : unconstrainedShare (2 / 3) x ≤ 1 - q
  · rw [piRDeviationQ, if_pos hslack]
    by_cases hxeq : x = 1
    · subst x
      rw [unconstrainedShare_one] at hslack
      exfalso
      linarith
    · have hxlt : x < 1 := lt_of_le_of_ne hx1 hxeq
      have hlo := unconstrainedShare_lower hx0 hxlt
      have hhi : unconstrainedShare (2 / 3) x ≤ (67 / 100 : ℝ) := by
        unfold qLo at hqlo
        linarith
      exact r_slack_support hlo hhi
  · rw [piRDeviationQ, if_neg hslack]
    have hv : piRFloorQ q (vertexRQ q) < piRStar :=
      r_candidate_above_floor_vertex hqlo hqhi
    have hcomp := r_floor_vertex_completion q x
    have hsquare : 0 ≤ 2 * (x - vertexRQ q)^2 := by positivity
    linarith

/-- At the frozen candidate, every q in the band is slack and gives the original candidate profit. -/
theorem candidate_attains_support {q : ℝ} (hqlo : qLo ≤ q) (hqhi : q ≤ qHi) :
    piLDeviationQ q xStar = piLStar ∧ piRDeviationQ q xStar = piRStar := by
  rcases candidate_floor_slack hqlo hqhi with ⟨hql, hqu⟩
  have hs : unconstrainedShare (2 / 3) xStar ≤ 1 - q := by
    rw [unconstrainedShare_xStar]
    exact le_of_lt hqu
  constructor
  · rw [piLDeviationQ, if_pos hs, unconstrainedShare_xStar, piLSlack_sStar]
  · rw [piRDeviationQ, if_pos hs, unconstrainedShare_xStar, piRSlack_sStar]

/-- Exact machine-checked nonempty support interval around `q=1/3`. -/
theorem exact_inner_support_band :
    qLo < (1 / 3 : ℝ) ∧ (1 / 3 : ℝ) < qHi ∧
    ∀ q : ℝ, qLo ≤ q → q ≤ qHi →
      (q < sStar ∧ sStar < 1 - q) ∧
      piLDeviationQ q xStar = piLStar ∧
      piRDeviationQ q xStar = piRStar ∧
      (∀ x : ℝ, 0 ≤ x → x ≤ 1 → piLDeviationQ q x ≤ piLStar) ∧
      (∀ x : ℝ, 0 ≤ x → x ≤ 1 → piRDeviationQ q x ≤ piRStar) := by
  constructor
  · norm_num [qLo]
  constructor
  · norm_num [qHi]
  · intro q hqlo hqhi
    rcases candidate_attains_support hqlo hqhi with ⟨hLatt, hRatt⟩
    exact ⟨candidate_floor_slack hqlo hqhi, hLatt, hRatt,
      fun x hx0 hx1 => l_support_global hqlo hqhi hx0 hx1,
      fun x hx0 hx1 => r_support_global hqlo hqhi hx0 hx1⟩

end

end DirectionalFriction.SupportBand
