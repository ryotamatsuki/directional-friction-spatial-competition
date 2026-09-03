# Stage 3R — Price-Existence Gate

Date: 2026-09-03

## 1. Executive Verdict

**NO-GO — PRIOR-ART KILL**

The Stage 3R branch is terminated at `Kill Test -1 — Prior-Art Pre-Kill`.

The candidate one-sided primitive is genuinely directional and therefore fixes the conceptual defect in the rejected Economics Bulletin model. However, the proposed new mechanism was not merely the primitive. The proposed headline was that nonlinear/directional pricing incentives generate a location-pair-specific pure-price-equilibrium existence set and that endogenous location may be disciplined or pinned by the boundary of that set.

That mechanism is already structurally present in the spatial-competition equilibrium-existence literature. Hamoudi & Moral (2005), building on Anderson (1988), explicitly derive piecewise demands/profits, show that multiple local maxima and global deviations produce price-equilibrium nonexistence for some location pairs, characterize a feasible location region for Nash prices, and state that failure of the price subgame outside that region prevents the relevant location equilibrium. Hamoudi & Martín-Bustamante (2011) then computes exact price-equilibrium location regions for convex linear-quadratic transport costs.

Under the explicit Stage 3R stop rule, KT0 is therefore not authorized.

## 2. Canonical Model

Candidate primitive tested at the literature gate:

\[
\tau(x,y;\theta)=(x-y)^2+\theta(y-x)_+,\qquad \theta\ge0.
\]

Consumers are uniformly distributed on `[0,1]`; firms would be ordered at `0 <= l < r <= 1`; unit demand and common marginal cost were planned for the price subgame.

The primitive is direction-dependent because the additional term applies only when the destination firm lies to the consumer’s right.

No full price-game solution is canonically certified in this branch because the prior-art stop rule fired first.

## 3. Prior-Art Pre-Kill

### Decisive literature family: price-equilibrium existence regions

**Anderson (1988)** studies equilibrium existence in the linear model of spatial competition and establishes stringent conditions under which pure-strategy location-price equilibrium is supportable; linear-quadratic transport costs and undercutting/nonconcavity are central to the analysis.

**Hamoudi & Moral (2005)** is the decisive structural predecessor. It:

- uses a linear city with fixed firm locations at the price stage;
- derives piecewise demand under nonlinear transport costs;
- emphasizes that the profit function may have several local maxima across price regions;
- identifies global, not merely local, price incentives as the source of nonexistence;
- constructs the feasible region of firm locations supporting Nash prices;
- then explains that outside the price-equilibrium region the pure location-price game cannot be completed in the intended way.

**Hamoudi & Martín-Bustamante (2011)** explicitly computes exact location regions for Nash price equilibrium under convex linear-quadratic transport costs.

### Directional-location literature

**Cancian, Bills & Bergstrom (1995)** shows pure-equilibrium nonexistence under a hard directional constraint.

**Nilssen (1997)** studies sequential location with asymmetric transportation costs; the degree of directional cost asymmetry changes sequential location outcomes.

**Lai (2001)** studies a continuous directional market with sequential location and obtains nonexistence of subgame-perfect equilibrium in continuous space, while discrete directional location admits equilibria.

**Kharbach (2009), Colombo (2009/2011), Ebina & Shimizu (2012)** form a separate unidirectional Hotelling line in which consumers can purchase only from one direction.

**Sun (2012, 2014)** further develops directional spatial configurations and sequential directional competition.

### Recent-search check

Targeted searches through September 2026 did not locate a newer paper that is a closer direct predecessor than this equilibrium-existence and directional-location literature. This negative search result is not used as novelty evidence.

### Classification

Candidate headline:

> Increasing directional friction changes the set of location pairs that can support a pure-strategy price equilibrium, and firms’ endogenous locations may be pinned down by the boundary of that set.

Classification:

**STRUCTURALLY ABSORBED / STRUCTURALLY VERY CLOSE**.

The exact one-sided cost function is not identified as prior art, so this is not classified as `EXACT PRIOR ART`. The kill arises because the economic mechanism and proposed location implication are already part of an established equilibrium-existence program; the remaining difference is primarily the asymmetric/directional functional form.

## 4. Consumer Allocation

**NOT RUN.**

The Pre-Kill stop rule fired before KT0. No complete allocation structure is promoted to canonical theory.

## 5. Price Candidate Equilibria

**NOT RUN.**

Earlier exploratory L/M/R formulas remain explicitly noncanonical. Regime-local FOCs were not reused as Nash equilibria.

## 6. Global Deviation Audit

**NOT RUN.**

This was the core of KT0, but KT0 is blocked by the prior-art stop rule.

The literature audit nevertheless confirms why such an audit would have been essential: Hamoudi & Moral (2005) explicitly show that multiple local profit maxima across piecewise demand regions can make local stationary candidates globally unstable.

## 7. Price-Equilibrium Existence Set

\[
\mathcal E(\theta)
\]

**NOT CLASSIFIED.**

No analytical or numerical result about the candidate model’s `E(theta)` is claimed.

## 8. Existence Frontier

\[
\partial\mathcal E(\theta)
\]

**NOT CLASSIFIED.**

The planned “existence frontier” is not pursued because an existence-region-to-location mechanism is already structurally established in prior work.

## 9. Nested Benchmark

The primitive satisfies the identity

\[
\tau(x,y;0)=(x-y)^2.
\]

Thus the intended `theta=0` nested model is the standard quadratic Hotelling benchmark. Formal benchmark recovery was not run because KT1 is downstream of the failed Pre-Kill.

## 10. Numerical Verification

**NOT APPLICABLE / NOT RUN.**

The workflow requires numerical work to validate algebra and find counterexamples after a mechanism survives the prior-art gate. It would be wasteful and misleading to generate a dense existence map for a contribution route that is already killed at the mechanism level.

## 11. Kill-Test Assessment

### Kill A — `E(theta)=E(0)`

NOT TESTED.

### Kill B — existence-set result is a reparameterization / known equilibrium-region mechanism

**TRIGGERED AT THE MECHANISM LEVEL.**

Even before solving the exact one-sided model, the proposed contribution is structurally contained in the existing nonlinear-transport equilibrium-existence research program. The exact asymmetric frontier might differ algebraically, but algebraic difference alone does not satisfy the novelty standard.

### Kill C — existence frontier has no strategic role

NOT TESTED.

### Kill D — pure equilibrium fails too broadly

NOT TESTED.

### Kill E — only posted-price comparative statics remain

NOT TESTED.

### Survival S1–S4

NOT REACHED.

The branch cannot earn survival credit from downstream mathematical properties after failing the mandatory pre-kill.

## 12. Surviving Mechanism

No publication-grade mechanism survives **for this Stage 3R route**.

The following statement is killed as a main contribution:

> One-sided directional friction creates an asymmetric price-equilibrium existence frontier that disciplines endogenous location.

The broader topic of genuine direction-dependent spatial competition remains open to a different mechanism search.

## 13. Strongest Remaining Threat

The strongest threat is not Nilssen alone. It is the combination of two mature literatures:

1. **equilibrium-existence-region literature** already links nonlinear/piecewise transport costs, global price deviations, feasible location regions, and location-stage viability; and
2. **directional-location literature** already shows that directionality/asymmetric movement changes equilibrium existence and sequential locations.

A future paper must generate an interaction theorem that neither family can reproduce. Merely making the equilibrium region asymmetric with `theta(y-x)_+` is not enough.

## 14. Final Verdict

**NO-GO**

### Route

Do **not** proceed to `Kill Test 2 — Directional Comparative Statics` under the current existence-frontier contribution route.

Do **not** run sequential location or policy on this killed architecture.

A new Stage 3 pivot is permitted only if it defines a genuinely different economic result before new algebra is undertaken.

## Repository contract after verdict

- Old Economics Bulletin manuscript remains archived only.
- Candidate one-sided primitive may remain in `model/primitives.md` as an exploratory object, but it has no frozen contribution claim.
- `PRICE_EXISTENCE_FULL_CLASSIFICATION.md` and `NESTED_BENCHMARK_THETA0.md` record that downstream gates were not run.
- Verification scripts are intentionally absent because the pre-kill stop rule fired.
- Next action is a **new mechanism search**, not a refinement of `E(theta)`.
