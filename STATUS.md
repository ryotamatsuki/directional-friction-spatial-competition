# Project Status

Last updated: 2026-09-04

## Current state

**Stage 8U — Canonical Theory Freeze**

Scientific verdict: `THEORY FROZEN — GO TO REPRODUCIBILITY SETUP`

Freeze ID: `DFSC-THEORY-2026-09-04-v1`

Canonical theory specification:

- `model/CANONICAL_THEORY_FREEZE.md`
- specification commit: `9a1d42510e97513828637de75a939ec893d5c928`
- machine-readable manifest: `theory/FREEZE_MANIFEST.yaml`

The theory approved at Stage 7.5 is now frozen. Manuscript construction may clarify notation and exposition but may not change the model, proposition set, welfare claims, robustness classification, or literature positioning without formal theory change control.

## Working title

**When Retail Demand Moves Transit Supply: Spatial Price Competition with a Fixed Fleet**

## Frozen positioning

**Transport economics / spatial competition theory.**

Primary target: **Economics of Transportation**.

Backup: **Journal of Transport Economics and Policy**.

Stretch: **Transportation Research Part B: Methodological**.

Do not position the paper as a general IO novelty claim about strategic asymmetry or network effects.

## Frozen model

- two endpoint retail destinations L and R;
- unit mass of uniform shoppers;
- simultaneous retail price competition with common marginal cost;
- quadratic spatial mismatch;
- exogenous background demand `M` toward L;
- third-party operator with fixed total service `F`;
- operator reallocates service across directions in response to total directional demand;
- canonical waiting cost `w/f`;
- minimum service share `q in (0,1/2)`;
- retailers anticipate the operator/shopper continuation.

No retailer location stage is present.

## Frozen headline results

### T1 — Global network-mediated strategic asymmetry

A nonempty open set of primitives admits a **global pure-strategy price Nash equilibrium** with

`BR_L' < 0 < BR_R'`.

Status: `PROVED`.

### T2 — Slack service obligation supports global equilibrium

A minimum service obligation can be strictly slack at equilibrium while changing only sufficiently extreme off-equilibrium service reallocations and supporting the global price equilibrium.

Status: `PROVED` for exact witness and open neighborhood.

At the witness, the same equilibrium is globally supported over approximately

`0.324091 < q < 0.344228`,

with the floor slack on path. The interval is witness-specific, not a universal theorem threshold.

### T3 — Nested interaction identification

The T1 sign pattern disappears under fixed frequency, no directional background demand, or retail-unresponsive frequency.

Status: `PROVED`.

### T4 — Operator-envelope welfare identity

On the slack branch, the individual directional waiting-cost difference equals the derivative of minimized aggregate waiting cost.

Status: `PROVED symbolically`.

### T5 — Private/social share wedge

On a stable interior equilibrium,

`C'(x_NE)=-(2x_NE-1)C''(x_NE)`.

At the exact witness:

- `x_NE=0.575`;
- same-floor `x_SB≈0.702378`;
- real-cost improvement `≈0.011378`, around 1.22% of decentralized real cost under the normalization.

Status: analytic wedge `PROVED`; witness comparison `PROVED`.

## Exact witness retained as proof device

` t=F=1, c=0, M=2/3, q=1/3, x*=23/40 `

and

` w/(Ft)=22797*sqrt(7599)/7364680 `.

The witness is not the contribution and must not be presented as a universal parameter restriction.

## Approved robustness

Waiting cost may be generalized to

`w f^(-rho)`.

- envelope structure / local robustness around `rho=1`: `PROVED`;
- conservative witness range approximately `rho in [0.95,1.01]`: `NUMERICALLY SUPPORTED ONLY`.

Do not promote the numerical interval to an analytic theorem.

## Frozen institutional interpretation

Preferred settings:

- large retail destinations / commercial clusters / destination zones;
- directional transit/shuttle operations with deadheading or short-turning;
- DRT/shared-mobility fleet repositioning.

Not established:

- an ordinary individual retailer materially moving transit frequency;
- Umeda-Minami-Kusatsu as a literal empirical application.

## Permanent killed claims

Do not claim novelty for:

- direction-dependent transport costs alone;
- strategic asymmetry as a concept;
- network effects in Hotelling;
- competition intensification or tipping from network effects;
- Mohring demand-frequency feedback;
- minimum transit service frequency;
- generic curvature conditions for opposite best-response slopes;
- generic equilibrium restoration by a stabilizing constraint.

## Explicitly excluded from this paper

- endogenous retailer locations;
- subsidies or subsidy design;
- retailer-funded transport service;
- congestion;
- online/delivery channels;
- endogenous fleet size;
- additional consumer heterogeneity;
- equity/coverage welfare weights;
- endogenous minimum-service choice;
- empirical calibration to Umeda-Minami-Kusatsu;
- revival of the old additive-wedge or `theta(y-x)_+` routes.

## Theory change control

Any substantive theoretical change must record the affected primitive/equation/proposition, verification, welfare and novelty claims and reopen the earliest affected workflow stage. Notation-only cleanup is allowed only with an explicit one-to-one mapping.

No silent theory drift is permitted.

## Gate status

- [x] Stage 3U mechanism search
- [x] Stage 4U minimal model gate
- [x] Stage 5U mechanism hardening
- [x] Stage 6U proposition-level novelty re-kill
- [x] Stage 7U welfare / generality / institutional validation
- [x] Stage 7.5U full-paper freeze decision
- [x] Stage 8U canonical theory freeze — `THEORY FROZEN`
- [ ] Stage 9 reproducibility setup
- [ ] Stage 10 paper construction
- [ ] Stage 11 referee gate

## Canonical Stage-8 files

- `model/CANONICAL_THEORY_FREEZE.md`
- `theory/FREEZE_MANIFEST.yaml`
- `reviews/STAGE_08U_THEORY_FREEZE_2026-09-04.md`

## Next action

Proceed to **Stage 9 — Reproducibility Setup**.

Stage 9 may reorganize and harden symbolic/numerical verification, but may not alter frozen theory.