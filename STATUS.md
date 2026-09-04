# Project Status

Last updated: 2026-09-04

## Current state

**Stage 7.5U — Full-Theory Freeze Decision**

Scientific verdict: `GO TO FULL PAPER`

The project has cleared the mechanism, global-equilibrium, hardening, novelty re-kill, welfare, generality, and institutional-validation gates. It is now approved for full-paper construction as a **transport / spatial-competition theory paper**.

Primary current journal target: **Economics of Transportation**.

Strong backup: **Journal of Transport Economics and Policy**.

Stretch target: **Transportation Research Part B: Methodological**.

The paper must not be positioned as a general IO theorem about strategic asymmetry or network effects.

## Working title

**When Retail Demand Moves Transit Supply: Spatial Price Competition with a Fixed Fleet**

## Frozen mechanism

Two endpoint retail destinations compete in prices. A third-party transport operator reallocates a fixed total service frequency/fleet across directions in response to passenger demand. One direction has exogenous background demand. Retail demand therefore changes transport supply, which changes both own and rival access and feeds back into retail demand.

A minimum service obligation prevents extreme off-equilibrium service collapse. In the surviving equilibrium region it is strictly slack on path.

## Frozen headline results

1. **Global network-mediated strategic asymmetry.** A nonempty open set of global pure Hotelling-Bertrand price equilibria satisfies `BR_L' < 0 < BR_R'`.
2. **Nested interaction identification.** The sign asymmetry disappears under fixed frequency, no directional background demand, or retail-unresponsive frequency.
3. **Slack off-equilibrium support.** A minimum service obligation can be nonbinding at equilibrium yet essential for global equilibrium support because it truncates only extreme off-equilibrium reallocation.
4. **Intermediate support band.** At the exact witness the same equilibrium is globally supported for approximately `0.324091 < q < 0.344228`, while the floor remains slack on path.
5. **Operator-envelope welfare identity.** On the slack branch, the individual directional waiting-cost difference equals the derivative of minimized aggregate waiting cost.
6. **Private/social allocation wedge.** At the exact witness, `x_NE=0.575` while the same-floor second-best is `x_SB≈0.702378`; the second-best lowers real cost by about `0.011378`, roughly 1.22% of decentralized real cost under the normalization.

## Essential assumptions

- shared scarce fixed service resource;
- demand-responsive third-party allocation;
- directional background demand;
- downstream price competition anticipating service response;
- positive minimum service floor for the currently verified global-equilibrium theorem.

## Tractability assumptions

- endpoint retail locations;
- two firms / two directions;
- uniform shoppers;
- common marginal cost;
- quadratic spatial mismatch;
- canonical waiting cost `w/f`.

The `w/f` technology is not essential: Stage 7 verified robustness to `w f^{-rho}` around `rho=1`.

## Permanent killed claims

Do not claim novelty for:

- direction-dependent transport costs alone;
- strategic asymmetry as a concept;
- network effects in Hotelling;
- network effects intensifying price competition;
- tipping/multiple equilibria from network effects;
- Mohring demand-frequency feedback;
- minimum transit service frequency;
- generic curvature conditions for opposite best-response slopes;
- generic equilibrium restoration through a stabilizing friction/constraint.

## Institutional interpretation

Preferred settings:

- large retail destinations / commercial clusters whose trip demand can affect service planning;
- directional transit/shuttle systems using deadheading or short-turning;
- demand-responsive transit or shared-mobility fleet repositioning across zones.

Do not present an ordinary individual retailer or Umeda–Minami-Kusatsu as an established empirical mapping without separate evidence.

## Frozen welfare scope

Retail prices cancel as transfers. Welfare is evaluated through real spatial and waiting costs. The minimum service obligation is treated as an exogenous coverage/service-availability constraint; equity value is not in the welfare function.

Permitted policy statement: a minimum-service obligation may support a downstream price equilibrium by truncating extreme off-equilibrium service reallocation while remaining nonbinding in normal equilibrium operation.

Do not claim optimal subsidies, optimal fleet expansion, optimal land use, equity effects, or endogenous retailer location.

## Explicitly excluded from this paper

- endogenous retailer locations;
- subsidies or subsidy design;
- retailer-funded transport service;
- congestion;
- online/delivery channels;
- endogenous fleet size;
- additional consumer heterogeneity;
- equity/coverage welfare weights;
- empirical calibration to Umeda–Minami-Kusatsu;
- revival of the old `theta(y-x)_+` route.

## Main remaining referee risks

1. reduced-form absorption into generic nonlinear network-effect Hotelling models;
2. physical interpretation of independently reallocable directional frequency on conventional two-way routes;
3. whether retail demand is large enough to move transit supply in the intended application;
4. the service-floor coverage objective is exogenous to the utilitarian welfare function.

These are positioning/exposition risks, not unresolved theorem blockers.

## Gate status

- [x] Stage 3U mechanism search
- [x] Stage 4U minimal model gate
- [x] Stage 5U mechanism hardening
- [x] Stage 6U proposition-level novelty re-kill
- [x] Stage 7U welfare / generality / institutional validation
- [x] Stage 7.5U full-theory freeze decision — `GO TO FULL PAPER`
- [ ] Stage 8 theory freeze
- [ ] Stage 9 reproducibility setup
- [ ] Stage 10 paper construction
- [ ] Stage 11 referee gate

## Canonical Stage-7.5 file

- `reviews/STAGE_075U_FULL_THEORY_FREEZE_DECISION_2026-09-04.md`

## Next action

Proceed to **Stage 8 — Theory Freeze**.

No model extension is permitted before or during Stage 8.