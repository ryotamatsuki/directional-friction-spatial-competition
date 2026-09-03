# Stage 3P — Economics Bulletin Salvage Gate

Date: 2026-09-03

## Executive verdict

**CONDITIONAL GO — ECONOMICS BULLETIN SALVAGE ROUTE SURVIVES**

The upper-field standalone route remains dead. However, the minimal short-note route centered on Candidate E survives a direct global-equilibrium test.

## What was tested

Only the following claim:

> In a quadratic Hotelling price game with a one-sided soft directional friction, moving the right-hand firm farther from the left-hand firm can raise the left firm's equilibrium price while lowering the right firm's equilibrium price.

The test intentionally excludes endogenous location, welfare, policy, and the killed price-equilibrium-existence-frontier route.

## Mathematical result

With the left firm at `0`, the right firm at `r`, and

\[
\tau(x,y;\theta)=(x-y)^2+\theta(y-x)_+,
\]

there is an open parameter region

\[
r\in\left(\frac{\sqrt{17}-1}{4},1\right),
\]

\[
4-2r<\theta<\frac{2r(5r-2)}{2-r},
\]

on which the candidate interior price pair is a strict global pure-strategy Nash equilibrium and

\[
\frac{\partial p_L^*}{\partial r}>0,
\qquad
\frac{\partial p_R^*}{\partial r}<0.
\]

The global proof uses the induced-cutoff representation and checks the only relevant cross-regime deviation directly. The result is therefore not a regime-local FOC artifact.

## Exact witness

At

\[
r=4/5,\qquad \theta=5/2,
\]

the equilibrium has

\[
x^*=337/615,
\]

\[
p_L^*-c=337/150,
\qquad
p_R^*-c=139/75,
\]

with

\[
\partial p_L^*/\partial r=61/30>0,
\qquad
\partial p_R^*/\partial r=-1/30<0.
\]

The left firm's outer-regime profit derivative at the kink is `-1/15`, so the cross-regime deviation is strictly unprofitable.

## Nested benchmark

At `theta=0`, both equilibrium-price derivatives with respect to `r` are positive. The reversal is therefore genuinely tied to the one-sided directional term.

## Publication-floor fit

Economics Bulletin's stated standard is that a manuscript be original, correct, and of interest to a specialist; it publishes short Notes, Comments, and Preliminary Results. The journal has a history of publishing compact Hotelling modifications and corrections, including unidirectional Hotelling papers and short mechanism notes.

On that standard:

- **Correctness:** PASS at the current theorem gate.
- **Specialist interest:** PASS / plausible.
- **Originality:** CONDITIONAL PASS; exact proposition-level prior-art audit still required.
- **Seven-page tractability:** PASS. The result can be presented in 5–7 pages without adding location or policy stages.

## What remains killed

Do not revive:

- the old Economics Bulletin additive wedge;
- the price-equilibrium-existence-frontier contribution;
- generic asymmetric location;
- generic regime switching;
- policy thresholds;
- claims of a new general location principle.

## Remaining blocker

One blocker only:

**Direct proposition-level novelty re-kill against the strongest asymmetric-price/location papers.**

In particular, directly compare the theorem with Nilssen (1997), van der Weijde–Verhoef–van den Berg (2014 / 2012 WP), the hard unidirectional Hotelling line, and nearby asymmetric-transport price models. If no exact theorem or immediate corollary is found, the note may proceed to manuscript construction.

## Journal-level interpretation

- RIO / JICT standalone theory: still NO-GO.
- Economics Bulletin / comparable short-note outlet: **credible route**.
- A higher mid-tier spatial journal would require at least one additional substantive result, most likely endogenous-location content, and is not justified by this salvage test alone.

## Final Stage 3P verdict

**CONDITIONAL GO TO EB-LEVEL PROPOSITION NOVELTY RE-KILL.**
