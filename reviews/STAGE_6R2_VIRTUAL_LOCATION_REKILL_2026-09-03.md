# Stage 6R2 — Virtual-Location Equivalence Novelty Re-Kill

Date: 2026-09-03

## Executive verdict

**NO-GO — TECHNICAL RESIDUAL SURVIVES SEARCH, BUT FAILS PUBLICATION-LEVEL CONTRIBUTION FLOOR.**

The Stage-11 salvage candidate is not supported as a sufficiently distinct theorem for a new LSRS or Economics Bulletin submission. The exact combination “equilibrium-branch virtual-location equivalence + global non-equivalence at a directional kink + sufficient condition implementing the branch price pair as a strict global Nash equilibrium” was not found stated verbatim in the audited literature. However, each economically substantive component is already strongly represented in prior work, and the remaining novelty is an implementation detail around a one-line completion-of-the-square transformation and a global-deviation check.

The current primitive should therefore be terminated as a publication route rather than rebuilt around the virtual-location interpretation.

## Candidate tested

Candidate claim after Stage 11:

> One-sided directional access friction can make a firm physically located inside the consumer city behave on the equilibrium-support pricing branch as if it occupied a virtual location outside the city, while the full directional price game remains globally non-equivalent because the directional term disappears after the marginal consumer crosses the physical location. Under an additional global-deviation condition, the virtual-location price outcome is implemented as a strict global Nash equilibrium.

## Exact transformation

For consumers left of firm R, `x<r`,

\[
(r-x)^2+\theta(r-x)
=\left(x-r-\frac{\theta}{2}\right)^2-\frac{\theta^2}{4}.
\]

Define

\[
z=r+\frac{\theta}{2}.
\]

On this branch, the directional primitive is therefore equivalent to a standard quadratic spatial term centered at the virtual location `z` plus a constant vertical shift.

This is exact algebra, not an approximation.

For consumers with `x>=r`, however,

\[
\tau(x,r;\theta)=(x-r)^2,
\]

so the virtual-location representation ceases to hold. Hence the original directional game is only branch-locally equivalent, not globally isomorphic.

## Prior-art kill matrix

### Lambertini (1994)

Lambertini allows firms to locate anywhere on the real line while consumers remain on the unit city. For fixed locations, the standard quadratic-Hotelling price stage is explicitly solved. Setting the left firm at zero and the right firm at location `z` yields

\[
p_1^*=\frac{z(z+2)}{3},\qquad
p_2^*=\frac{z(4-z)}{3}
\]

(normalizing the quadratic coefficient to one).

Thus the rival-up / own-down price response for a sufficiently distant right firm is already an immediate consequence of standard unconstrained Hotelling. The Stage-11 mapping shows that the former directional reversal threshold is exactly the threshold at which the virtual location enters this known exterior-location region.

Classification: **ABSORBS PRICE-OUTCOME CONTENT.**

### Lambertini (1997)

The later unconstrained-Hotelling paper studies the real-line location domain, endogenous timing, differentiation and uniqueness of the extended game. This reinforces that exterior locations are a mature part of the spatial-competition literature rather than a new conceptual object created by the directional primitive.

Classification: **STRONG ARCHITECTURAL PRIOR ART.**

### Cohen & Heifetz (2024)

For fixed locations `ell_1<ell_2`, quadratic travel costs and vertical quality difference `v`, their Eqs. (8)-(9) give

\[
p_1=\frac{2}{3}\left[t(\ell_2-\ell_1)\left(1+\frac{\ell_1+\ell_2}{2}\right)-v\right],
\]

\[
p_2=\frac{2}{3}\left[t(\ell_2-\ell_1)\left(2-\frac{\ell_1+\ell_2}{2}\right)+v\right].
\]

With `t=1`, `ell_1=0`, `ell_2=z=r+theta/2`, and `v=theta^2/8`, these reproduce the frozen Stage-4R prices exactly.

Classification: **ABSORBS VIRTUAL-LOCATION + VERTICAL-SHIFT PRICE REPRESENTATION.**

### Cremer & Thisse (1991)

Their general result establishes that a very large class of Hotelling-type horizontal-differentiation models are equivalent, in a well-defined equilibrium sense, to vertical-differentiation models.

Therefore the broad message that a spatial primitive can be translated into an equivalent vertical representation is not new.

Classification: **KILLS BROAD HORIZONTAL/VERTICAL EQUIVALENCE CLAIM.**

### Gabszewicz & Thisse (1986); Gabszewicz & Wauthy (2012)

The literature explicitly links exterior Hotelling locations with vertical differentiation. Gabszewicz & Wauthy summarize that Gabszewicz & Thisse introduce vertical differentiation into Hotelling by locating firms outside the unit interval.

Classification: **KILLS “EXTERIOR LOCATION AS VERTICAL DIFFERENTIATION” INTERPRETATION AS NOVELTY.**

### Dos Santos Ferreira & Thisse (1996)

The Launhardt model uses asymmetric transportation technologies to combine horizontal and vertical differentiation in a spatial duopoly.

Classification: **STRONG THREAT TO “ASYMMETRIC TRANSPORT TECHNOLOGY CREATES VERTICAL/SPATIAL REINTERPRETATION” CLAIM.**

### Hamoudi & Moral (2005)

They study general linear-quadratic transportation costs in the linear Hotelling model and explicitly characterize feasible price-equilibrium regions in a setting with piecewise demand and potentially non-quasiconcave profit functions.

Their model is not the same one-sided directional primitive, so it does not state the present branch-local virtual-location mapping. But it substantially weakens the novelty of claiming that a linear-plus-quadratic spatial cost requires a global price-equilibrium existence/deviation audit.

Classification: **STRUCTURALLY VERY CLOSE TO GLOBAL-IMPLEMENTATION RESIDUAL.**

### Kharbach (2009), Ebina & Shimizu (2012), Colombo (2009/2011)

These papers establish a mature hard-unidirectional Hotelling line in which purchasing possibilities and pricing/location incentives depend on direction. The present soft friction is different, but direction-dependent piecewise spatial geometry is not a new architecture.

Classification: **KILLS GENERIC DIRECTIONAL/PIECEWISE-GEOMETRY CLAIM.**

### Chakravorty & Sappington (2026)

They take sellers’ default locations as exogenous and allow consumer-side frictions that effectively change a seller’s perceived location. This is not the same algebraic mapping, but it is a particularly close conceptual predecessor for language based on “effective” or “perceived” location.

Classification: **KILLS BROAD “FRICTION CREATES PERCEIVED LOCATION” STORY AS A STANDALONE CONTRIBUTION.**

## What is not found exactly

The targeted search did not locate a paper that states the exact combined theorem:

1. physical right location `r` lies inside `[0,1]`;
2. on the equilibrium-support branch the directional cost completes the square to an exterior virtual location `z=r+theta/2` plus a vertical shift;
3. deviations with cutoff `x>=r` break that equivalence because the directional term switches off;
4. a sufficient condition nevertheless makes the virtual-branch price pair a strict global equilibrium of the true piecewise game.

Therefore the residual is not labelled “exact prior art found.”

## Why the residual still fails the contribution floor

The economically memorable outcome is no longer new: exterior quadratic Hotelling already generates the same price-response pattern.

The virtual-location representation itself is a direct completion of the square and falls inside mature horizontal/vertical differentiation equivalence traditions.

The only remaining distinctive content is that the true game is piecewise and a cross-kink deviation condition is needed to implement the known branch outcome globally. This is mathematically legitimate, but the result is best described as an implementation/existence detail for a particular soft-directional primitive.

Given the existing literature on:

- unconstrained exterior locations;
- horizontal/vertical equivalence;
- asymmetric transportation technologies;
- linear-quadratic transport costs and feasible price-equilibrium regions;
- hard directional Hotelling;
- perceived/effective locations;

the Stage 6R2 residual is too incremental to justify rebuilding the seven-page LSRS paper, and is not a sufficiently robust basis for a fresh Economics Bulletin submission either.

## Journal-floor judgment

- **LSRS:** NO-GO.
- **Economics Bulletin:** NO-GO as a new standalone paper on the current primitive. A narrow technical note would be possible to write, but its originality/interest margin is too thin after the above absorption.
- **Higher journals:** NO-GO.

## Scientific record retained

The following remain correct and useful as research record:

- the exact directional cost primitive;
- single crossing;
- piecewise cutoff representation;
- strict global-equilibrium sufficient region;
- exact virtual-location/quality mapping on the active branch;
- the demonstration that branch equivalence does not imply full-game equivalence;
- the global cross-kink deviation proof.

These may inform a future distinct project, but they should not be presented as the surviving contribution of this paper.

## Canonical verdict

`NO-GO — TERMINATE CURRENT PRIMITIVE AS A PUBLICATION ROUTE.`

Do not proceed to Stage 12 and do not revise the existing LSRS manuscript around virtual-location language.

The project may either be archived as a completed negative research path or reopened at Stage 3 only if a genuinely different mechanism/primitive is proposed. Re-running the already exhausted E/H/location routes is not authorized.