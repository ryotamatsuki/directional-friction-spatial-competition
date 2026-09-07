import DirectionalFriction.GlobalWitness

/-!
# Slack-region global deviation proof

The Stage-11 root-count argument is replaced by direct factorization of the
candidate-profit gap. The factorization proves global optimality over a wider
service-share interval than the physical slack branch.
-/

namespace DirectionalFriction.GlobalSlack

open DirectionalFriction.Operator
open DirectionalFriction.Witness
open DirectionalFriction.GlobalWitness

noncomputable section

private theorem r_sq : r^2 = (7599 : ℝ) := by
  norm_num [r]

private theorem r_cube : r^3 = (7599 : ℝ) * r := by
  calc
    r^3 = r * r^2 := by ring
    _ = r * 7599 := by rw [r_sq]
    _ = 7599 * r := by ring

/-- Exact L profit-gap factorization. -/
theorem l_gap_factorization {s : ℝ} (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    piLStar - piLSlack s =
      819192388 * (s - sStar)^2 * lResidual (s - 1 / 2) /
        (1325642400 * s * (s - 1) * denCore s^2) := by
  have h1s : 1 - s ≠ 0 := sub_ne_zero.mpr (Ne.symm hs1)
  have hsm1 : s - 1 ≠ 0 := sub_ne_zero.mpr hs1
  have hd : denCore s ≠ 0 := ne_of_gt (denCore_pos s)
  have hsum : s^2 + (1 - s)^2 ≠ 0 := by
    have hp : 0 < s^2 + (1 - s)^2 := by nlinarith [sq_nonneg (s - 1 / 2)]
    exact ne_of_gt hp
  simp only [piLStar, piLSlack, pLStar, pRStar, xStar, gStar, xFromShare,
    hShare, witnessA, sStar, lResidual, lC3, lC2, lC1, lC0]
  field_simp [hs0, hs1, h1s, hsm1, hd, hsum]
  simp only [denCore]
  ring_nf at ⊢
  simp only [r_cube, r_sq]
  ring

/-- Exact R profit-gap factorization. -/
theorem r_gap_factorization {s : ℝ} (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    piRStar - piRSlack s =
      1327436068 * (s - sStar)^2 * rResidual (s - 1 / 2) /
        (1325642400 * s * denCore s^2) := by
  have h1s : 1 - s ≠ 0 := sub_ne_zero.mpr (Ne.symm hs1)
  have hsm1 : s - 1 ≠ 0 := sub_ne_zero.mpr hs1
  have hd : denCore s ≠ 0 := ne_of_gt (denCore_pos s)
  have hsum : s^2 + (1 - s)^2 ≠ 0 := by
    have hp : 0 < s^2 + (1 - s)^2 := by nlinarith [sq_nonneg (s - 1 / 2)]
    exact ne_of_gt hp
  simp only [piRStar, piRSlack, pRStar, pLStar, xStar, gStar, xFromShare,
    hShare, witnessA, sStar, rResidual, rC2, rC1, rC0]
  field_simp [hs0, hs1, h1s, hsm1, hd, hsum]
  simp only [denCore]
  ring_nf at ⊢
  simp only [r_cube, r_sq]
  ring

/-- L's exact candidate weakly dominates every slack deviation on the wider
    interval `s∈[2/5,2/3]`. -/
theorem l_slack_global {s : ℝ} (hlo : (2 / 5 : ℝ) ≤ s) (hhi : s ≤ 2 / 3) :
    piLSlack s ≤ piLStar := by
  have hs0 : 0 < s := by linarith
  have hs1 : s < 1 := by linarith
  have hu0 : (-1 / 10 : ℝ) ≤ s - 1 / 2 := by linarith
  have hu1 : s - 1 / 2 ≤ (1 / 6 : ℝ) := by linarith
  have hres : lResidual (s - 1 / 2) < 0 := lResidual_neg hu0 hu1
  have hsq : 0 ≤ (s - sStar)^2 := sq_nonneg _
  have hnum :
      819192388 * (s - sStar)^2 * lResidual (s - 1 / 2) ≤ 0 := by
    have hp : 0 ≤ (819192388 : ℝ) * (s - sStar)^2 := mul_nonneg (by norm_num) hsq
    exact mul_nonpos_of_nonneg_of_nonpos hp (le_of_lt hres)
  have hcore : 0 < denCore s := denCore_pos s
  have hden : 1325642400 * s * (s - 1) * denCore s^2 < 0 := by
    have hpref : 0 < (1325642400 : ℝ) * s := mul_pos (by norm_num) hs0
    have hmid : (1325642400 : ℝ) * s * (s - 1) < 0 :=
      mul_neg_of_pos_of_neg hpref (by linarith)
    have hcore2 : 0 < denCore s^2 := sq_pos_of_pos hcore
    exact mul_neg_of_neg_of_pos hmid hcore2
  have hfact := l_gap_factorization (ne_of_gt hs0) (ne_of_lt hs1)
  have hquot :
      0 ≤ 819192388 * (s - sStar)^2 * lResidual (s - 1 / 2) /
        (1325642400 * s * (s - 1) * denCore s^2) := by
    rw [div_nonneg_iff]
    exact Or.inr ⟨hnum, le_of_lt hden⟩
  linarith

/-- R's exact candidate weakly dominates every slack deviation on the same interval. -/
theorem r_slack_global {s : ℝ} (hlo : (2 / 5 : ℝ) ≤ s) (hhi : s ≤ 2 / 3) :
    piRSlack s ≤ piRStar := by
  have hs0 : 0 < s := by linarith
  have hs1 : s < 1 := by linarith
  have hu0 : (-1 / 10 : ℝ) ≤ s - 1 / 2 := by linarith
  have hu1 : s - 1 / 2 ≤ (1 / 6 : ℝ) := by linarith
  have hres : 0 < rResidual (s - 1 / 2) := rResidual_pos hu0 hu1
  have hnum :
      0 ≤ 1327436068 * (s - sStar)^2 * rResidual (s - 1 / 2) := by positivity
  have hcore : 0 < denCore s := denCore_pos s
  have hden : 0 < 1325642400 * s * denCore s^2 := by positivity
  have hfact := r_gap_factorization (ne_of_gt hs0) (ne_of_lt hs1)
  have hquot :
      0 ≤ 1327436068 * (s - sStar)^2 * rResidual (s - 1 / 2) /
        (1325642400 * s * denCore s^2) := div_nonneg hnum (le_of_lt hden)
  linarith

/-- Away from the exact candidate share, L is strictly worse on the certified slack interval. -/
theorem l_slack_strict {s : ℝ} (hlo : (2 / 5 : ℝ) ≤ s) (hhi : s ≤ 2 / 3)
    (hne : s ≠ sStar) : piLSlack s < piLStar := by
  have hs0 : 0 < s := by linarith
  have hs1 : s < 1 := by linarith
  have hu0 : (-1 / 10 : ℝ) ≤ s - 1 / 2 := by linarith
  have hu1 : s - 1 / 2 ≤ (1 / 6 : ℝ) := by linarith
  have hres : lResidual (s - 1 / 2) < 0 := lResidual_neg hu0 hu1
  have hsq : 0 < (s - sStar)^2 := sq_pos_of_ne_zero (sub_ne_zero.mpr hne)
  have hnum :
      819192388 * (s - sStar)^2 * lResidual (s - 1 / 2) < 0 :=
    mul_neg_of_pos_of_neg (mul_pos (by norm_num) hsq) hres
  have hcore : 0 < denCore s := denCore_pos s
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

/-- Away from the exact candidate share, R is strictly worse on the certified slack interval. -/
theorem r_slack_strict {s : ℝ} (hlo : (2 / 5 : ℝ) ≤ s) (hhi : s ≤ 2 / 3)
    (hne : s ≠ sStar) : piRSlack s < piRStar := by
  have hs0 : 0 < s := by linarith
  have hs1 : s < 1 := by linarith
  have hu0 : (-1 / 10 : ℝ) ≤ s - 1 / 2 := by linarith
  have hu1 : s - 1 / 2 ≤ (1 / 6 : ℝ) := by linarith
  have hres : 0 < rResidual (s - 1 / 2) := rResidual_pos hu0 hu1
  have hsq : 0 < (s - sStar)^2 := sq_pos_of_ne_zero (sub_ne_zero.mpr hne)
  have hnum :
      0 < 1327436068 * (s - sStar)^2 * rResidual (s - 1 / 2) :=
    mul_pos (mul_pos (by norm_num) hsq) hres
  have hcore : 0 < denCore s := denCore_pos s
  have hden : 0 < 1325642400 * s * denCore s^2 := by positivity
  have hfact := r_gap_factorization (ne_of_gt hs0) (ne_of_lt hs1)
  have hquot :
      0 < 1327436068 * (s - sStar)^2 * rResidual (s - 1 / 2) /
        (1325642400 * s * denCore s^2) := div_pos hnum hden
  nlinarith

/-- The exact candidate service share lies strictly inside the certified slack interval. -/
theorem sStar_interval : (2 / 5 : ℝ) < sStar ∧ sStar < 2 / 3 := by
  rcases r_bounds with ⟨hrlo, hrhi⟩
  unfold sStar
  constructor <;> nlinarith

/-- The inverse service-share map sends the exact service candidate back to `x*=23/40`. -/
theorem xFromShare_sStar : xFromShare sStar = xStar := by
  rcases sStar_interval with ⟨hslo, hshi⟩
  have hs0 : 0 < sStar := by linarith
  have hs1 : 0 < 1 - sStar := by linarith
  have hden : sStar^2 + (1 - sStar)^2 ≠ 0 := by positivity
  unfold xFromShare xStar
  field_simp [hden]
  unfold sStar
  ring_nf at ⊢
  simp only [r_sq]
  ring

/-- The service share induced by every physical slack shopper share lies in the
    wider interval certified above. -/
theorem physical_share_bounds {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3) :
    (2 / 5 : ℝ) ≤ unconstrainedShare (2 / 3) x ∧
      unconstrainedShare (2 / 3) x ≤ 2 / 3 := by
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
  have hupper : a ≤ 2 * b := by
    by_contra h
    have hlt : 2 * b < a := lt_of_not_ge h
    have hp : 0 < (a - 2 * b) * (a + 2 * b) := by
      apply mul_pos
      · linarith
      · positivity
    ring_nf at hp
    nlinarith
  change (2 / 5 : ℝ) ≤ a / (a + b) ∧ a / (a + b) ≤ 2 / 3
  constructor
  · apply (le_div_iff₀ hsum).2
    nlinarith
  · apply (div_le_iff₀ hsum).2
    nlinarith

/-- On the physical slack interval, the square-root service rule and the
    rational inverse map are exact inverses. -/
theorem xFromShare_unconstrainedShare {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3) :
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

/-- Every physical slack deviation is weakly dominated by the exact L candidate. -/
theorem l_physical_slack_global {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3) :
    piLSlack (unconstrainedShare (2 / 3) x) ≤ piLStar := by
  rcases physical_share_bounds hx0 hx1 with ⟨hlo, hhi⟩
  exact l_slack_global hlo hhi

/-- Every physical slack deviation is weakly dominated by the exact R candidate. -/
theorem r_physical_slack_global {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3) :
    piRSlack (unconstrainedShare (2 / 3) x) ≤ piRStar := by
  rcases physical_share_bounds hx0 hx1 with ⟨hlo, hhi⟩
  exact r_slack_global hlo hhi

/-- Every noncandidate physical slack share gives L strictly lower profit. -/
theorem l_physical_slack_strict {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3)
    (hne : x ≠ xStar) : piLSlack (unconstrainedShare (2 / 3) x) < piLStar := by
  rcases physical_share_bounds hx0 hx1 with ⟨hlo, hhi⟩
  have hsne : unconstrainedShare (2 / 3) x ≠ sStar := by
    intro hs
    apply hne
    calc
      x = xFromShare (unconstrainedShare (2 / 3) x) :=
        (xFromShare_unconstrainedShare hx0 hx1).symm
      _ = xFromShare sStar := by rw [hs]
      _ = xStar := xFromShare_sStar
  exact l_slack_strict hlo hhi hsne

/-- Every noncandidate physical slack share gives R strictly lower profit. -/
theorem r_physical_slack_strict {x : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 2 / 3)
    (hne : x ≠ xStar) : piRSlack (unconstrainedShare (2 / 3) x) < piRStar := by
  rcases physical_share_bounds hx0 hx1 with ⟨hlo, hhi⟩
  have hsne : unconstrainedShare (2 / 3) x ≠ sStar := by
    intro hs
    apply hne
    calc
      x = xFromShare (unconstrainedShare (2 / 3) x) :=
        (xFromShare_unconstrainedShare hx0 hx1).symm
      _ = xFromShare sStar := by rw [hs]
      _ = xStar := xFromShare_sStar
  exact r_slack_strict hlo hhi hsne

end

end DirectionalFriction.GlobalSlack
