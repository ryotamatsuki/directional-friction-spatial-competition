# Stage 11 — LSRS Robustness / Referee Attack Gate

Date: 2026-09-03
Target: *Letters in Spatial and Resource Sciences*
Starting Stage-10 HEAD: `4801354b5dffddf50ae4251144805f16e4a61878`
Theory authority: `theory/CANONICAL_THEORY_FREEZE_LSRS.md`

## Executive verdict

**REOPEN EARLIER STAGE / NO-GO FOR THE CURRENT LSRS MANUSCRIPT.**

The mathematical theorem survives the hostile re-audit, but the frozen novelty claim does not. Stage 11 identified a previously missed exact transformation and a decisive prior-art absorption result.

On the equilibrium-support branch `x<r`, define

\[
z=r+\frac{\theta}{2},\qquad s=\frac{\theta^2}{4}.
\]

Then

\[
(r-x)^2+\theta(r-x)=\left(z-x\right)^2-s.
\]

Thus the price subgame that generates the frozen equilibrium formulas is exactly a standard quadratic Hotelling price subgame with a virtual right-hand location `z` and a constant right-firm quality advantage `s`. Specializing Cohen and Heifetz (2024), Eqs. (8)-(9), to this transformation reproduces the frozen price formulas exactly.

More importantly, Lambertini (1994) already studies unconstrained quadratic Hotelling locations and gives price formulas that imply

\[
\frac{\partial p_1^*}{\partial z}>0,\qquad
\frac{\partial p_2^*}{\partial z}<0
\]

when the right firm is moved sufficiently far outside the city (`z>2`). The current reversal condition

\[
\theta>4-2r
\]

is exactly

\[
z=r+\theta/2>2.
\]

Therefore the manuscript's central claim — that the same one-firm displacement can raise the rival's price while lowering the moving firm's own price — is not novel as a price comparative static. The directional primitive implements that known unconstrained-Hotelling price pattern at an interior physical location, but that is a different and narrower possible contribution which has not passed a proposition-level novelty gate.

The current LSRS manuscript cannot be repaired by wording changes alone.

---

# Referee A — Novelty / Mechanism

## Recommendation

**REJECT / FATAL NOVELTY OBJECTION.**

### Attack A1 — The headline price reversal is prior-art / immediate-corollary material

**Attack**  
The paper claims that the same increase in one firm's separation can raise the rival's price while lowering the moving firm's own price. This sign pattern already follows from the standard unconstrained quadratic Hotelling price formulas in Lambertini (1994).

**Severity**  
`FATAL`

**Evidence**  
Lambertini explicitly allows firms to locate outside the city boundaries and writes the price-subgame equilibrium, in his notation,

\[
p_1^*=t(1-a-b)\left(1+\frac{a-b}{3}\right),
\qquad
p_2^*=t(1-a-b)\left(1+\frac{b-a}{3}\right).
\]

Set the left firm at zero (`a=0`) and the right firm at `z=1-b`. With `t=1`,

\[
p_1^*=\frac{z(z+2)}{3},
\qquad
p_2^*=\frac{z(4-z)}{3}.
\]

Hence

\[
\partial p_1^*/\partial z=(2z+2)/3>0,
\qquad
\partial p_2^*/\partial z=(4-2z)/3<0
\]

for `z>2`.

Primary source: Lambertini, L. (1994), *Equilibrium Locations in the Unconstrained Hotelling Game*, Economic Notes 23, 438–446; public working-paper version `http://amsacta.unibo.it/5202/1/155.pdf`, especially model and Eqs. (6)-(7).

**Can the current paper answer it?**  
No. The present literature section does not cite Lambertini (1994) and explicitly presents the one-firm rival-up/own-down derivative as the surviving distinction.

**Required fix**  
The existing contribution claim must be killed. A materially different contribution would need to be formulated and re-searched.

**Does the fix reopen theory?**  
Yes. Reopen Stage 6 at minimum; reopen Stage 3 if a genuinely different mechanism is desired.

### Attack A2 — The directional price formula is exactly a known quadratic-Hotelling + quality formula

**Attack**  
The equilibrium price formulas are not a distinct directional-pricing architecture on the branch that determines the equilibrium. They are an exact specialization of the fixed-location second-stage price formulas in Cohen and Heifetz (2024).

**Severity**  
`FATAL` for the current mechanism/novelty interpretation; not fatal to mathematical correctness.

**Evidence**  
For `x<r`,

\[
(r-x)^2+\theta(r-x)
=\left(x-r-\theta/2\right)^2-\theta^2/4.
\]

Let

\[
z=r+\theta/2,\qquad v=\theta^2/8.
\]

Cohen and Heifetz (2024), Eqs. (8)-(9), with `t=1`, `l_1=0`, `l_2=z`, and quality difference `2v=theta^2/4`, give exactly

\[
p_1=\frac{r^2+\theta r+2r+\theta}{3},
\qquad
p_2=\frac{4r-r^2+2\theta-\theta r}{3}.
\]

Primary source: Cohen and Heifetz (2024), *Location, Location, Quality: The Fixed Differentiation Principle*, Review of Industrial Organization 65, 705–720, Eqs. (8)-(9).

**Can the current paper answer it?**  
Only partially. The full directional game is not globally identical because deviations that push the cutoff past the physical location `r` encounter a kink absent from the transformed quadratic model. That makes the global-deviation proof nontrivial. But it does not restore novelty to the headline equilibrium price derivative.

**Required fix**  
Do not describe the reversal as a new directional mechanism without first re-positioning the contribution around the virtual-location implementation/global-kink issue and rerunning novelty.

**Does the fix reopen theory?**  
Yes.

### Referee A overall

The exact theorem is mathematically interesting, but the manuscript's claimed novelty boundary is no longer defensible. The strongest surviving object is not the price reversal itself; it is, at most, the fact that an interior physical directional-friction model can globally sustain a price pattern corresponding locally to a virtual unconstrained Hotelling location. That is not the paper currently written.

---

# Referee B — Mathematics / Equilibrium

## Recommendation

**MATHEMATICS PASS; NO FATAL EQUILIBRIUM ERROR FOUND.**

The Stage-4R theorem was independently re-derived and the saved symbolic identities were inspected rather than accepted at face value.

### B1 Single crossing / cutoff mapping

`PASS`.

The utility difference is continuous and strictly decreasing on both branches. The inverse cutoff-price mapping is continuous at `x=r`.

### B2 Middle-regime FOCs / SOCs

`PASS`.

Both deviation-profit functions are strict quadratics on the middle branch with second derivative `-2(2r+theta)`.

### B3 Global deviation audit

`PASS` on the stated sufficient region.

- R's middle profit is decreasing by `x=r`; its derivative jumps downward by `theta(r-1)<0`; the outer branch is strictly concave.
- L's outer-branch derivative at `r+` is

\[
-\frac{10r^2+r\theta-4r-2\theta}{3},
\]

and the displayed upper bound on `theta` makes it strictly negative.
- zero-demand and full-capture endpoints are covered by the cutoff representation.

### B4 Uniqueness wording

`PASS`.

The manuscript correctly limits its claim to each equilibrium price being the unique global best response to the rival's displayed equilibrium price. It does not claim exhaustive Nash-equilibrium uniqueness across all regimes.

### B5 Reversal interval

`PASS`.

\[
4-2r<\frac{2r(5r-2)}{2-r}
\iff
2r^2+r-2>0,
\]

so the interval is nonempty for

\[
r>(\sqrt{17}-1)/4.
\]

### B6 Exact witness

`PASS` at `r=4/5`, `theta=5/2`.

### B7 New Stage-11 equivalence audit

`PASS`.

The new script `verification/symbolic/stage11_virtual_location_equivalence.py` verifies the virtual-location/quality transformation and exact price-formula match.

### Referee B overall

The manuscript is **not being rejected because the theorem is false**. The theorem is correct under the stated sufficient conditions. The fatal problem is interpretation/novelty.

---

# Referee C — Assumptions / Generality / Interpretation

## Recommendation

**MAJOR CONCEPTUAL LIMITATIONS; NOT THE PRIMARY KILL AFTER A1/A2.**

### C1 — Vertical-differentiation disguise

**Severity:** `MAJOR`, upgraded to part of the fatal novelty package because of the exact transformation.

Globally, the primitive is not a pure firm-specific vertical wedge: the directional term changes at `x=r`, so cross-kink deviations differ. However, on the equilibrium-support branch it is exactly equivalent to a virtual location plus a constant quality term. Therefore the current sentence that the primitive is “not a firm-specific additive quality disadvantage” is literally true but incomplete and potentially misleading. The economically relevant equilibrium branch has an exact vertical/horizontal reparameterization.

### C2 — Result built into the primitive

**Severity:** `MAJOR`.

The sign reversal is not merely “cost rises, therefore price falls,” because the transformed standard model contains both demand and competition effects. But the threshold is exactly the standard virtual-location threshold `z>2`. This greatly weakens the claim that a new directional strategic mechanism has been isolated.

### C3 — Fixed location

**Severity:** `MAJOR BUT FIXABLE` in isolation.

A conditional price subgame with exogenous spatial configuration is coherent. The manuscript states this clearly. This would not by itself force endogenous location. However, after the novelty absorption, fixed-location analysis no longer supplies an independent contribution large enough to rescue the paper.

### C4 — Functional-form specificity

**Severity:** `MAJOR BUT FIXABLE` in isolation.

The manuscript appropriately disclaims arbitrary functional-form robustness. But the exact square-completion identity shows that the chosen linear directional add-on is especially structured. The result therefore looks more functional-form driven than the Stage-7/7.5 assessment recognized.

### C5 — Covered market / no outside option

**Severity:** `MINOR / PASS`.

The model is internally coherent as a covered unit-demand primitive. No gross-valuation lower bound is required because no outside option is part of the frozen model.

### Referee C overall

The research question is coherent, but the economic interpretation must be reconsidered from the virtual-location perspective before any resubmission strategy is chosen.

---

# Referee D — LSRS Journal Fit / Exposition

## Recommendation

**REJECT CURRENT LSRS VERSION.**

Before the Stage-11 discovery, one exact global theorem plus a sharp benchmark plausibly cleared the LSRS Letter floor. After the discovery, the manuscript's one memorable result is an immediate consequence of a standard unconstrained-Hotelling price formula under an exact reparameterization.

### D1 — One theorem / contribution floor

**Severity:** `FATAL FOR LSRS CURRENT VERSION`.

The remaining non-absorbed content is mainly the global cross-kink incentive-compatibility verification for the directional implementation. That is not the contribution the Introduction, title, abstract and literature section are written around. On the current framing, the 7-page paper no longer gives an LSRS reader a sufficiently distinct theoretical result.

### D2 — Standard benchmark is incomplete

**Severity:** `MAJOR`.

The paper contrasts the directional case with `theta=0`, `r in (0,1)`, where both price derivatives are positive. But standard quadratic Hotelling with unconstrained locations already generates the same opposite-sign price response for a right location beyond `2`. The benchmark therefore attributes too much of the qualitative reversal to directionality by restricting the standard comparison to physical interior locations.

### D3 — Introduction/literature overclaim after new evidence

**Severity:** `FATAL / CLAIM INVALIDATION`.

The Introduction states that the paper “isolates a different comparative static” in which the same one-firm displacement raises the rival price and lowers own price. Lambertini (1994) defeats that distinction. The literature section must not merely add one citation; the contribution architecture itself must change.

### D4 — Length/readability

**Severity:** `PASS`.

Seven pages, 171-word abstract, five keywords and the current mathematical exposition are suitable for the Letter format. Presentation quality is not the reason for NO-GO.

---

# Canonical attack classes

| Attack | Severity | Stage-11 result |
|---|---|---|
| classic-result / prior-art | FATAL | Lambertini (1994) implies the same one-firm rival-up/own-down derivative in standard unconstrained quadratic Hotelling |
| ad-hoc assumption | MAJOR | the linear directional add-on admits an exact square-completion transformation |
| result-built-into-assumption | MAJOR/FATAL package | reversal threshold is exactly virtual location `z>2` |
| no-new-mechanism | FATAL for current claim | local equilibrium price mechanism is inherited from known quadratic-Hotelling + quality formulas |
| alternative demand | MINOR / OUT OF SCOPE | no robustness is claimed; not needed to kill current manuscript |
| alternative contract/information | NOT APPLICABLE | no contracting/information mechanism in the model |
| participation/corner/boundary | PASS | global cutoff audit covers endpoints under stated region |
| welfare-is-mechanical | NOT APPLICABLE | welfare is not a manuscript contribution |
| institution-too-specific | MINOR | conceptual directional-access interpretation is broad enough, but not a novelty rescue |
| external validity/generality | MAJOR | functional-form specificity stronger than previously recognized |
| numerical-not-proof | PASS | result is analytical and symbolically checked |
| proof/notation inconsistency | PASS | no theorem-breaking inconsistency found |
| wrong-journal / insufficient contribution | FATAL for LSRS current version | headline theorem absorbed; residual kink implementation is not yet a validated LSRS contribution |
| exposition / claim inflation | FATAL claim issue | “different comparative static” language is no longer supportable |

---

# Consolidated severity table

| Attack | Referee | Severity | Evidence | Current manuscript answer | Required fix | Implemented? | Theory reopened? | Residual risk |
|---|---|---|---|---|---|---|---|---|
| Same-displacement price reversal already in standard unconstrained quadratic Hotelling | A | FATAL | Lambertini (1994) price formulas | No | Kill current novelty claim; rerun novelty on a different claim | Audit recorded | Required | High |
| Exact virtual-location + quality equivalence of frozen price formulas | A/C | FATAL | square completion + Cohen-Heifetz Eqs. (8)-(9) | No | Reframe or abandon directional-mechanism novelty | Audit/script recorded | Required | High |
| LSRS contribution floor after absorption | D | FATAL | remaining content is global kink implementation, not current headline | No | New Stage-6/7.5 investment decision | No manuscript patch attempted | Required | High |
| Standard benchmark artificially excludes unconstrained reversal region | D | MAJOR | `theta=0`, `r<1` vs standard `z>2` | No | Replace benchmark only after contribution is re-frozen | No | Yes | High |
| Fixed locations | C | MAJOR BUT FIXABLE | conditional price question is coherent but narrow | Yes | clearer framing if project survives | Not needed before reopening | No by itself | Medium |
| Functional-form specificity | C | MAJOR BUT FIXABLE | square-completion structure | Partly | explicit virtual-location interpretation | Not implemented | Would alter framing | Medium-high |
| Global equilibrium proof | B | PASS | independent algebra + scripts | Yes | none | n/a | No | Low |

---

# Handling editor decision

## Single strongest reason to reject

The paper's only claimed new comparative static is an immediate consequence of a known standard quadratic-Hotelling price formula once the directional cost is square-completed into a virtual location; Lambertini (1994) already permits unconstrained locations and yields the same rival-up/own-down response when the right location exceeds 2.

## Single strongest reason to publish

The directional game is globally piecewise rather than globally identical to the unconstrained standard model, and the manuscript correctly proves that the local virtual-location price candidate survives cross-kink deviations on a nonempty open region. This is mathematically clean and could potentially support a narrower equivalence/implementation note.

## Twelve required editorial answers

1. **Strongest rejection reason:** prior-art absorption of the headline comparative static.
2. **Strongest publication reason:** globally verified implementation of a virtual outside-city pricing configuration through an interior physical directional-friction model.
3. **Theorem mathematically correct?** Yes, on the stated sufficient region.
4. **Global enough for the claim made?** Yes mathematically; globality does not rescue novelty.
5. **Novelty still apparently open?** No for the frozen Stage-8 claim.
6. **More than a functional-form curiosity?** Not demonstrated under the current contribution framing.
7. **Fixed-location comparative static defensible?** Yes as a research design, but insufficient to overcome the novelty kill.
8. **Sufficiently spatial for LSRS?** Spatially relevant, but contribution no longer clears the LSRS floor as currently framed.
9. **One theorem enough?** Potentially yes in principle; not when that theorem's headline sign pattern is prior-art/immediate-corollary material.
10. **Current manuscript overclaim?** Yes: Introduction/literature claim a distinct same-displacement comparative static that Lambertini defeats.
11. **Can all major attacks be answered without theory drift?** No. The contribution claim itself must change.
12. **Is LSRS still the correct first-choice target?** Not for the current manuscript. A new Stage-6/7.5 assessment is required before selecting any journal.

---

# Verification record

- Existing Stage-4R algebra: independently rechecked — `PASS`.
- `verification/symbolic/eb_price_reversal.py`: formulas inspected/re-executed in Stage-11 equivalent environment — `PASS`.
- `verification/symbolic/stage4r_lsrs_verify.py`: formulas inspected/re-executed in Stage-11 equivalent environment — `PASS`.
- New `verification/symbolic/stage11_virtual_location_equivalence.py`: `PASS`.
- Stage-10 manuscript build remains 7 pages and had passed LaTeX/BibTeX/visual inspection; no manuscript edits were made after the fatal novelty finding, so a new formatting build is not scientifically decision-relevant.

The inability of the analysis container to resolve GitHub directly during one local clone attempt is an environment/network issue, not a repository or scientific failure. GitHub source files were inspected through the authenticated repository connector.

---

# Theory-change implications

No silent Stage-11 patch is authorized.

### Minimum reopening path

**Reopen Stage 6 — proposition-level novelty re-kill** with a different candidate contribution:

> directional access friction can make an interior physical location implement the price incentives of a virtual unconstrained Hotelling location outside the consumer city, while the piecewise directional game still requires a distinct global-deviation condition.

This is only a candidate. It must be killed aggressively against Lambertini (1994/1997), Cohen-Heifetz (2024), horizontal/vertical equivalence literature, and directional-friction papers.

If this candidate fails or is too thin for a publishable note, reopen Stage 3 mechanism search or stop the project.

Stage 8 theory freeze is no longer valid as a **novelty/contribution freeze**, although the model/theorem formulas remain valid historical artifacts.

---

# Final canonical verdict

\[
\boxed{\textbf{REOPEN EARLIER STAGE / NO-GO}}
\]

Reason: **scientific theorem survives; frozen novelty claim fails.**

This is not `SCIENTIFIC RESULT SURVIVES / LSRS FIT FAILS` alone. The result survives mathematically, but its previously asserted novelty interpretation is itself invalidated.

## Next-stage contract

Do not proceed to Stage 12 journal positioning on the current manuscript.

Next action: **Stage 6R2 — Virtual-Location Equivalence Novelty Re-Kill** (or equivalent formal reopened novelty stage), using Lambertini (1994) as a mandatory closest prior and treating the current LSRS draft as non-submittable until that gate is passed.
