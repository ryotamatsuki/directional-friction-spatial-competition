# Project Status

Last updated: 2026-09-04

## Current state

**Stage 11U — Multi-Referee Hostile Review / Referee Gate**

Scientific/editorial verdict: `GO TO JOURNAL POSITIONING`

Theory freeze remains authoritative:

- Freeze ID: `DFSC-THEORY-2026-09-04-v1`
- canonical specification: `model/CANONICAL_THEORY_FREEZE.md`
- canonical specification commit: `9a1d42510e97513828637de75a939ec893d5c928`

Stage 11 found no unresolved fatal attack on the narrow frozen contribution. Bounded manuscript/proof/literature fixes were applied without theory change.

## Working title

**When Retail Demand Moves Transit Supply: Spatial Price Competition with a Fixed Fleet**

Positioning after referee gate: **transport economics / spatial competition theory**.

Do not position the paper as a general IO theorem about strategic asymmetry or network effects.

## Referee-gate outcome

### Core theorem

The global price-Nash theorem survived an independent exact Stage-11 re-audit.

- shopper/operator continuation is globally single-valued at the exact witness;
- exact algebraic root counting gives two physical L stationary points and one physical R stationary point on the slack-service region;
- the common root is the frozen equilibrium `x*=23/40` and is a local maximum for both firms;
- the second L root is a local minimum;
- floor-boundary, binding-region, and corner deviations do not dominate the candidate;
- strict inequalities preserve the open-set result.

New referee-stage verification:

`verification/symbolic/stage11u_global_deviation_reaudit.py`

is included in `make verify`.

### Stage-11 fixes completed

1. Fulfilled-expectations shopper/operator continuation is stated explicitly as a fixed point rather than literal circular timing.
2. Full coverage is formalized as inelastic unit demand over L/R with no outside option.
3. The global-deviation root count and stationary-point classification are asserted exactly in verification and stated in the Appendix.
4. Welfare language is narrowed: the envelope identity is a welfare mapping, not a general novelty claim; `x_SB` is a same-floor constrained-efficient allocation benchmark rather than an implemented policy.
5. The operator is explicitly a service-planning/allocation layer, not a profit-maximizing platform; `F` is an effective service resource.
6. Related Literature now confronts vertical transport-market and scarce upstream-capacity predecessors directly.

No fix changes a frozen primitive or proposition.

## Strongest residual risks

### 1. Reduced-form absorption

A referee can represent the local retail game as a nonlinear share-dependent externality. The paper's defensible novelty is therefore the complete transport-specific strategic chain, off-path service-floor role, and operator welfare mapping—not a general network-effect theorem.

### 2. Institutional specificity

The strongest interpretations are large destination zones/commercial clusters with deadheading, short-turning, shuttles, DRT, or shared-mobility repositioning. The model is not a literal generic balanced two-way bus timetable and does not establish that an ordinary small retailer changes service frequency.

### 3. Unproved alternative-architecture robustness

The paper does not claim robustness to elastic participation, non-uniform shopper density, a profit-maximizing operator, endogenous fleet size, or literal vehicle-circulation technology. Adding such claims requires theory change control.

### 4. Journal-level contribution threshold

The theorem is a constructive nonempty-open-set existence result, not a complete parameter classification. Whether this is sufficient for a given pure-theory transport outlet is a Stage-12 positioning question rather than a Stage-11 validity failure.

## Frozen headline results remain

1. **T1 — Global network-mediated strategic asymmetry:** a nonempty open set of global pure price equilibria has `BR_L' < 0 < BR_R'`.
2. **T2 — Slack service obligation:** the minimum service rule can be slack on path yet support the global equilibrium through off-path continuation restrictions.
3. **T3 — Nested interaction:** the sign asymmetry disappears under fixed frequency, no directional background demand, or retail-unresponsive frequency.
4. **T4 — Operator-envelope welfare identity:** the individual waiting-cost difference equals the derivative of minimized aggregate waiting cost on the slack branch.
5. **T5 — Private/social share wedge:** decentralized pricing generally does not minimize real spatial-plus-waiting cost; the witness comparison is against the same-floor constrained-efficient allocation.

Proof-status qualifiers for the witness-specific `q` support band and numerical `rho` range remain unchanged.

## Verification / build

Primary commands:

```bash
make verify
make paper
make all
```

Stage-11 GitHub Actions run `33868498255` passed both required jobs:

- `verify`: **SUCCESS**, including `stage11u_global_deviation_reaudit.py`;
- `paper`: **SUCCESS**, including generated tables, the expanded bibliography, and the hardened full manuscript.

## Canonical Stage-11 records

- `reviews/STAGE_11U_REFEREE_GATE_2026-09-04.md`
- `reviews/STAGE_11U_ATTACK_MATRIX.yaml`
- `reviews/STAGE_11U_FIX_LOG.md`
- `verification/symbolic/stage11u_global_deviation_reaudit.py`

## Gate status

- [x] Stage 3U mechanism search
- [x] Stage 4U minimal model gate
- [x] Stage 5U mechanism hardening
- [x] Stage 6U proposition-level novelty re-kill
- [x] Stage 7U welfare / generality / institutional validation
- [x] Stage 7.5U full-paper freeze decision
- [x] Stage 8U canonical theory freeze
- [x] Stage 9U reproducibility setup
- [x] Stage 10U paper construction
- [x] Stage 11U hostile referee gate — `GO TO JOURNAL POSITIONING`
- [ ] Stage 12 journal positioning

## Next action

Proceed to **Stage 12 — Journal Positioning**.

Stage 12 must select the journal for the surviving contribution and may not add theory merely to fit a preferred outlet.
