# Stage 3R — Revalidation after User-Requested Execution

Date: 2026-09-04

Canonical workflow: `ryotamatsuki/research-paper-workflow` v1.1

## Executive verdict

**NO-GO — PRIOR-ART KILL CONFIRMED**

The user-requested Stage 3R execution was re-run at the mandatory prior-art pre-kill gate before additional algebra. The one-sided primitive

\[
\tau(x,y;\theta)=(x-y)^2+\theta(y-x)_+,\qquad \theta\ge0
\]

is genuinely direction-dependent and fixes the fatal conceptual defect of the rejected Economics Bulletin model. However, the proposed headline route

> directional friction → piecewise/global price incentives → location-pair-specific pure-price-equilibrium existence set → endogenous location constrained by that set

is not sufficiently novel to authorize Kill Test 0.

## Directly revalidated decisive evidence

### Hamoudi & Moral (2005)

Full text was re-opened and checked on 2026-09-04.

The paper explicitly:

1. studies a two-stage linear-city model in which firms choose locations and then prices;
2. derives piecewise demand under nonlinear linear-quadratic transport costs;
3. states that the induced profit function is piecewise and can have several local maxima;
4. explains that the global maximum can lie in different price regions and that this is why a Nash price equilibrium fails for some location pairs;
5. defines and derives the feasible equilibrium region as the set of firm-location pairs for which a Nash price equilibrium exists;
6. states that outside the relevant price-equilibrium conditions, no location equilibrium can exist in the sequential game;
7. studies firms' location tendencies inside the feasible equilibrium region.

Relevant public full-text source:
`https://mjmoral.webs.uvigo.es/arquivos/pirs_13.pdf`

This is decisive structural overlap with the Stage 3R existence-frontier mechanism even though the exact one-sided directional primitive differs.

### Hamoudi & Martín-Bustamante (2011)

The published abstract was rechecked. It explicitly studies a two-stage linear-city game with convex linear-quadratic transport costs and computes the exact region of location pairs for which price equilibrium exists.

DOI: `10.1111/j.1435-5957.2010.00308.x`

This makes an exact `E(theta)`-style location-region characterization insufficient as a headline contribution by itself.

### Anderson (1988)

The bibliographic/abstract evidence was rechecked. Anderson studies the two-stage location-price Hotelling game and shows that pure-strategy perfect equilibrium exists only under stringent conditions tied to price-profit concavity for given location pairs.

Citation: Simon P. Anderson (1988), *Equilibrium Existence in the Linear Model of Spatial Competition*, Economica 55, 479–491.

### Nilssen (1997)

The published abstract was rechecked. Nilssen studies sequential location when transportation costs differ by movement direction and shows that the degree of asymmetry changes location/entry outcomes.

DOI: `10.1016/S0165-1765(97)00017-7`

This remains a close threat to any claim that direction-dependent costs newly generate asymmetric sequential-location responses.

### van der Weijde, Verhoef & van den Berg (2014)

This additional threat was rechecked and should be retained in future novelty audits. The paper studies asymmetric distance costs with two competitors choosing locations/departure times before prices/fares and derives strategic-location and regulatory implications.

Citation: *A Hotelling Model with Price-sensitive Demand and Asymmetric Distance Costs: The Case of Strategic Transport Scheduling*, Journal of Transport Economics and Policy 48(2), 261–277.

DOI: `10.3828/jtep.2014.48.2.261`

It is not an exact absorption of the present primitive, but it further weakens any broad novelty claim based on `asymmetric distance costs + endogenous location + price competition`.

## Kill classification

### Killed headline

> One-sided directional friction creates a new asymmetric price-equilibrium existence frontier, and that frontier disciplines endogenous firm locations.

Classification: **STRUCTURALLY ABSORBED / INSUFFICIENT NOVELTY**.

The exact algebraic frontier under `theta(y-x)_+` could still be new. That would be a new functional-form result, not yet a publication-grade economic mechanism under the workflow standard.

## Why KT0 is not run

The Stage 3 mechanism-search template requires killing a candidate when a close paper already contains the same strategic loop and result, and prohibits continuing merely because the functional form differs. Therefore the literature stop rule fires before the expensive global price-game derivation.

Accordingly:

- Kill Test 0 — global pure price-equilibrium classification: **NOT AUTHORIZED**
- Kill Test 1 — exact theta=0 recovery: **NOT RUN**
- Kill Test 2 — comparative statics of E(theta): **NOT RUN**
- Kill Test 3 — sequential location conditional on E(theta): **NOT RUN**
- policy/welfare extension: **BLOCKED**

Earlier exploratory local-FOC formulas, including candidate location thresholds, remain noncanonical and cannot be reported as established equilibrium results.

## What survives

The primitive itself survives as a legitimate representation of genuine directional friction:

\[
\tau(x,y;\theta)=(x-y)^2+\theta(y-x)_+.
\]

The broader research topic also survives. What fails is only the `existence frontier as headline contribution` route.

## Required next action

Return to Stage 3 mechanism search and look for a full-game result that is not generated by the existing equilibrium-existence literature or the directional-location literature.

A viable pivot must target something like a directionality-specific ranking reversal, cross-side strategic feedback, endogenous asymmetry, or welfare/competition interaction that disappears at `theta=0` and cannot be obtained merely from restricting the feasible price-equilibrium region.

## Canonical verdict

`NO-GO — STAGE 3R TERMINATED AT PRIOR-ART PRE-KILL`

Route: `RETURN TO STAGE 3 MECHANISM SEARCH`.
