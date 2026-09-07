import DirectionalFriction.GlobalWitness

/-!
# Binding-floor deviation certificates for the exact witness
-/

namespace DirectionalFriction.GlobalFloor

open DirectionalFriction.Witness
open DirectionalFriction.GlobalWitness

noncomputable section

/-- L's profit once the R-side `q=1/3` floor binds (`h=-3/2`). -/
def piLFloor (x : ℝ) : ℝ :=
  x * (pRStar - (2*x - 1) - witnessA * (-3/2))

/-- R's profit in the same binding-floor region. -/
def piRFloor (x : ℝ) : ℝ :=
  (1-x) * (pLStar + (2*x - 1) + witnessA * (-3/2))

/-- Vertex of R's concave binding-floor quadratic. -/
def vertexR : ℝ :=
  8882329/14729360 + 68391*r/58917440

/-- Threshold appearing in L's boundary-minus-deviation factorization. -/
def lThreshold : ℝ :=
  1117627/22094040 + 68391*r/29458720

/-- R's floor-region vertex is strictly inside `(2/3,1)`. -/
theorem vertexR_bounds : (2/3 : ℝ) < vertexR ∧ vertexR < 1 := by
  rcases r_bounds with ⟨hrlo, hrhi⟩
  unfold vertexR
  constructor <;> nlinarith

/-- L's quadratic vertex is far to the left of the binding region, expressed
    through the factorization threshold needed below. -/
theorem lThreshold_lt_boundary : lThreshold < (2/3 : ℝ) := by
  rcases r_bounds with ⟨hrlo, hrhi⟩
  unfold lThreshold
  nlinarith

/-- Exact completion of the square for R's binding-region profit. -/
theorem r_floor_vertex_gap (x : ℝ) :
    piRFloor vertexR - piRFloor x = 2 * (x - vertexR)^2 := by
  unfold piRFloor vertexR pLStar xStar gStar witnessA
  ring

/-- Exact candidate-vs-vertex gap for R. -/
def rFloorGap : ℝ :=
  2601 * (-100745365751 + 1229940168*r) / 1735632368076800

/-- The exact R binding-floor maximum remains strictly below the candidate. -/
theorem rFloorGap_pos : 0 < rFloorGap := by
  rcases r_bounds with ⟨hrlo, hrhi⟩
  unfold rFloorGap
  have hnum : 0 < (-100745365751 : ℝ) + 1229940168*r := by
    nlinarith
  positivity

/-- The symbolic floor-gap expression is exactly the candidate profit minus
    R's quadratic maximum. -/
theorem r_floor_gap_exact :
    piRStar - piRFloor vertexR = rFloorGap := by
  have hr2 : r^2 = 7599 := by norm_num [r]
  unfold piRStar pRStar pLStar xStar gStar piRFloor vertexR rFloorGap witnessA
  field_simp
  ring_nf at hr2 ⊢
  nlinarith

/-- R has no profitable deviation anywhere in the binding-floor region (in fact,
    the statement is global in `x`). -/
theorem r_floor_global (x : ℝ) : piRFloor x < piRStar := by
  have hv := r_floor_vertex_gap x
  have hg := r_floor_gap_exact
  have hp := rFloorGap_pos
  have hs : 0 ≤ 2 * (x - vertexR)^2 := by positivity
  nlinarith

/-- Exact factorization showing that L's floor-region profit is decreasing from
    the boundary onward. -/
theorem l_floor_boundary_gap (x : ℝ) :
    piLFloor (2/3) - piLFloor x =
      2 * (x - 2/3) * (x - lThreshold) := by
  unfold piLFloor lThreshold pRStar xStar gStar witnessA
  ring

/-- The manuscript's exact L boundary gap is exactly the profit difference
    between the candidate and the floor boundary. -/
theorem l_boundary_gap_exact :
    piLStar - piLFloor (2/3) = lBoundaryGap := by
  unfold piLStar pLStar xStar gStar piLFloor pRStar witnessA lBoundaryGap
  ring

/-- L has no profitable deviation in the binding-floor region `x≥2/3`. -/
theorem l_floor_global {x : ℝ} (hx : (2/3 : ℝ) ≤ x) :
    piLFloor x < piLStar := by
  have ht := lThreshold_lt_boundary
  have hb := l_floor_boundary_gap x
  have hprod : 0 ≤ 2 * (x - 2/3) * (x - lThreshold) := by
    have h1 : 0 ≤ x - 2/3 := by linarith
    have h2 : 0 ≤ x - lThreshold := by linarith
    positivity
  have he := l_boundary_gap_exact
  have hp := lBoundaryGap_pos
  nlinarith

end

end DirectionalFriction.GlobalFloor
