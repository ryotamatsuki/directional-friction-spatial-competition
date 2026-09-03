# Stage 11 — Post-Rejection Referee Attack Gate

Date: 2026-09-03

Object reviewed: predecessor Economics Bulletin paper, **A Hotelling Model with Directional Transport Costs: Closed-Form Equilibrium and Thresholds**.

Workflow basis: `ryotamatsuki/research-paper-workflow` v1.1, Stage 11 referee-attack logic.

## Executive verdict

**REOPEN EARLIER STAGE / NO-GO FOR THE OLD CORE MODEL**

The predecessor paper should not be repaired by exposition changes alone. The external referee identified a core conceptual failure: the additive wedge attached to one firm did not depend on direction of movement. This directly attacks the identifying primitive of the paper rather than a secondary interpretation.

The correct workflow response is to reopen mechanism search, not to patch the manuscript around the existing model.

## Referee A — Novelty / mechanism

### Attack A1 — Claimed directionality is not in the primitive

**Severity:** FATAL

The predecessor wedge was paid when buying from one designated firm, irrespective of whether the consumer approached from the left or the right. The claimed directional mechanism was therefore not represented by the payoff structure.

**Can the old paper answer now?** No.

**Required fix:** change the core primitive so the extra cost depends on movement direction itself.

**Reopens theory?** YES — Stage 3.

### Attack A2 — Firm-specific additive wedge is vulnerable to vertical-differentiation reinterpretation

**Severity:** FATAL for the old contribution route

A constant utility disadvantage attached to one firm is economically equivalent to a firm-specific quality/amenity disadvantage in the consumer comparison. Merely renaming it `access cost` does not restore a directional mechanism.

**Required fix:** use a direction-indexed cost and rerun the full novelty audit against horizontal × vertical differentiation and asymmetric spatial competition.

**Reopens theory?** YES.

### Attack A3 — No full-game-only mechanism established

**Severity:** FATAL

In the predecessor model, the endogenous-location result collapsed to an endpoint solution over the relevant duopoly region. The access wedge did not generate a new location feedback that then altered pricing and welfare. Thus the paper did not establish a strategic interaction that existed only in the full game.

## Referee B — assumptions / mathematics

### Attack B1 — Algebra is not the main failure

**Severity:** MINOR / NOT FATAL MATHEMATICALLY

The old pricing exercise can be internally coherent while still failing as a contribution. The decisive problem is interpretation and mechanism identification, not the mere existence of closed-form expressions.

### Attack B2 — Local FOC logic cannot be carried into the restarted model

**Severity:** MAJOR

The new primitive contains kinks. Any future price-equilibrium proof must check global unilateral deviations across allocation regimes. Regime-local concavity or a self-consistent indifferent consumer is insufficient.

## Referee C — welfare / institution

### Attack C1 — Old policy threshold is vulnerable to mechanical-welfare criticism

**Severity:** FATAL for the old policy contribution

Because the old location choice did not respond to the access wedge in the intended way, the policy stage did not deliver a new location-policy interaction. A threshold created by a chosen convex investment cost and a particular welfare curvature is insufficient as the headline contribution.

### Attack C2 — Institutional primitive mismatch

**Severity:** FATAL

The predecessor narrative concerned asymmetric access or directional travel, while the modeled wedge was destination-specific. Policy interpretation therefore exceeded what the primitive supported.

## Referee D — journal / exposition

### Attack D1 — Changing the title is not enough

**Severity:** FATAL

Rebranding the old paper as `asymmetric access costs` would remove the terminological error but would not establish a new theory result. The new project must be built around a genuinely different primitive and pass a fresh prior-art kill.

## Consolidated severity table

| Attack | Severity | Old paper can fix without theory change? |
|---|---|---:|
| Non-directional core wedge | FATAL | No |
| Vertical-differentiation equivalence threat | FATAL | No |
| No full-game-only location mechanism | FATAL | No |
| Welfare threshold potentially mechanical | FATAL for policy claim | No |
| New model requires global price-deviation proof | MAJOR | N/A — restart requirement |
| Old closed-form algebra | Not itself fatal | Yes |

## Killed old claims

Do not revive without new proofs under the new primitive:

1. `The old m is a directional transport cost.`
2. `The closed-form price response is evidence of a new directional mechanism.`
3. `The old access wedge generates a substantive endogenous-location channel.`
4. `The old policy threshold is itself a publication-grade new mechanism.`

## Restart contract

Use the candidate primitive

\[
\tau(x,y;\theta)=(x-y)^2+\theta\max\{y-x,0\}.
\]

The new project must first establish whether pure-strategy price equilibrium exists globally for given locations. Only then may it solve sequential location. Only after a new location/existence result survives prior-art re-kill may welfare and policy be added.

## Final workflow verdict

`REOPEN STAGE 3 — NEW THEORY BRANCH`
