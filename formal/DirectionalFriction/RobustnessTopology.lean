import DirectionalFriction.SupportBand

/-!
# Open-neighborhood persistence

This module separates two logically different robustness statements.

* For the service-floor primitive `q`, the exact closed support band from
  `SupportBand` immediately yields a genuine open neighborhood of `q=1/3` on
  which the frozen equilibrium is globally supported.
* More generally, any finite collection of strict scalar certificates persists
  on an open parameter neighborhood whenever the certificate maps are
  continuous. This is the topological step used for SOC, reaction-sign and
  strict-margin conditions in the manuscript's local-robustness argument.

The second result is deliberately generic: applying it to a full vector of
model primitives still requires proving continuity of the corresponding
model-specific certificate maps.
-/

namespace DirectionalFriction.RobustnessTopology

open Set
open DirectionalFriction.Witness
open DirectionalFriction.GlobalWitness
open DirectionalFriction.SupportBand

noncomputable section

/-- The exact analytic support band contains a genuine open neighborhood of
    `q=1/3`, and every floor in that neighborhood globally supports the frozen
    candidate. -/
theorem q_open_support_neighborhood :
    ∃ U : Set ℝ,
      IsOpen U ∧
      (1 / 3 : ℝ) ∈ U ∧
      ∀ q ∈ U,
        (q < sStar ∧ sStar < 1 - q) ∧
        piLDeviationQ q xStar = piLStar ∧
        piRDeviationQ q xStar = piRStar ∧
        (∀ x : ℝ, 0 ≤ x → x ≤ 1 → piLDeviationQ q x ≤ piLStar) ∧
        (∀ x : ℝ, 0 ≤ x → x ≤ 1 → piRDeviationQ q x ≤ piRStar) := by
  refine ⟨Ioo qLo qHi, isOpen_Ioo, ?_, ?_⟩
  · exact ⟨exact_inner_support_band.1, exact_inner_support_band.2.1⟩
  · intro q hq
    exact exact_inner_support_band.2.2 q (le_of_lt hq.1) (le_of_lt hq.2)

/-- Six strict scalar certificates define an open subset of any topological
    parameter space when each certificate map is continuous. -/
theorem strict_certificate_set_isOpen
    {P : Type*} [TopologicalSpace P]
    (c₁ c₂ c₃ c₄ c₅ c₆ : P → ℝ)
    (hc₁ : Continuous c₁) (hc₂ : Continuous c₂)
    (hc₃ : Continuous c₃) (hc₄ : Continuous c₄)
    (hc₅ : Continuous c₅) (hc₆ : Continuous c₆) :
    IsOpen {p : P | 0 < c₁ p ∧ 0 < c₂ p ∧ 0 < c₃ p ∧
      0 < c₄ p ∧ 0 < c₅ p ∧ 0 < c₆ p} := by
  have h₁ : IsOpen {p : P | 0 < c₁ p} := by
    simpa [Set.preimage] using isOpen_Ioi.preimage hc₁
  have h₂ : IsOpen {p : P | 0 < c₂ p} := by
    simpa [Set.preimage] using isOpen_Ioi.preimage hc₂
  have h₃ : IsOpen {p : P | 0 < c₃ p} := by
    simpa [Set.preimage] using isOpen_Ioi.preimage hc₃
  have h₄ : IsOpen {p : P | 0 < c₄ p} := by
    simpa [Set.preimage] using isOpen_Ioi.preimage hc₄
  have h₅ : IsOpen {p : P | 0 < c₅ p} := by
    simpa [Set.preimage] using isOpen_Ioi.preimage hc₅
  have h₆ : IsOpen {p : P | 0 < c₆ p} := by
    simpa [Set.preimage] using isOpen_Ioi.preimage hc₆
  change IsOpen
    ({p : P | 0 < c₁ p} ∩
      ({p : P | 0 < c₂ p} ∩
        ({p : P | 0 < c₃ p} ∩
          ({p : P | 0 < c₄ p} ∩
            ({p : P | 0 < c₅ p} ∩ {p : P | 0 < c₆ p})))))
  exact h₁.inter (h₂.inter (h₃.inter (h₄.inter (h₅.inter h₆))))

/-- If all six continuous certificates are strict at a witness, there is a
    nonempty open parameter set containing that witness on which every strict
    certificate remains valid. -/
theorem exists_open_strict_certificate_neighborhood
    {P : Type*} [TopologicalSpace P]
    (p₀ : P) (c₁ c₂ c₃ c₄ c₅ c₆ : P → ℝ)
    (hc₁ : Continuous c₁) (hc₂ : Continuous c₂)
    (hc₃ : Continuous c₃) (hc₄ : Continuous c₄)
    (hc₅ : Continuous c₅) (hc₆ : Continuous c₆)
    (h₀ : 0 < c₁ p₀ ∧ 0 < c₂ p₀ ∧ 0 < c₃ p₀ ∧
      0 < c₄ p₀ ∧ 0 < c₅ p₀ ∧ 0 < c₆ p₀) :
    ∃ U : Set P, IsOpen U ∧ p₀ ∈ U ∧
      ∀ p ∈ U, 0 < c₁ p ∧ 0 < c₂ p ∧ 0 < c₃ p ∧
        0 < c₄ p ∧ 0 < c₅ p ∧ 0 < c₆ p := by
  let U : Set P := {p : P | 0 < c₁ p ∧ 0 < c₂ p ∧ 0 < c₃ p ∧
    0 < c₄ p ∧ 0 < c₅ p ∧ 0 < c₆ p}
  refine ⟨U, ?_, h₀, ?_⟩
  · exact strict_certificate_set_isOpen c₁ c₂ c₃ c₄ c₅ c₆ hc₁ hc₂ hc₃ hc₄ hc₅ hc₆
  · intro p hp
    exact hp

end

end DirectionalFriction.RobustnessTopology
