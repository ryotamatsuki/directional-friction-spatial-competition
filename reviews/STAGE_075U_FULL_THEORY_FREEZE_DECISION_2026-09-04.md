# Stage 7.5U — Full-Theory Freeze Decision

Date: 2026-09-04
Workflow: `research-paper-workflow` v1.1 / `templates/STAGE_075_FREEZE_DECISION.md`

## Executive verdict

# `GO TO FULL PAPER`

The project now contains a coherent full-paper contribution in **transport / spatial competition theory**. It should not be positioned as a general IO theorem about network effects or strategic asymmetry.

The model has survived the required gates:

- the old firm-specific additive-wedge route was rejected and permanently closed;
- the exogenous one-sided directional-friction route was killed at Stage 3R/3S;
- a new network-mediated mechanism was found at Stage 3U;
- Stage 4 exposed a genuine global-equilibrium failure rather than accepting local FOCs;
- Stage 5 repaired exactly that failure with one institutionally motivated service-floor primitive;
- Stage 6 killed broad novelty claims and retained a narrow full-game interaction theorem;
- Stage 7 derived exact welfare, a private/social allocation wedge, a transport-specific envelope identity, institutional mapping, and functional-form robustness.

No unresolved theorem or robustness blocker remains that warrants reopening model development before writing the paper.

## Working title

**When Retail Demand Moves Transit Supply: Spatial Price Competition with a Fixed Fleet**

Alternative paper-build title if a more conventional field-journal style is preferred:

**Demand-Responsive Transit and Spatial Price Competition**

The title should emphasize the transport-supply feedback rather than claim that strategic asymmetry itself is new.

## Core research question

How does downstream spatial price competition change when a third-party transport operator reallocates a scarce fixed service resource across directions in response to passenger demand, while one direction also has exogenous background travel demand?

A secondary question is how a minimum service obligation can affect the existence and welfare properties of the downstream price equilibrium even when that obligation is slack at equilibrium.

## Canonical frozen model

- Two endpoint retail destinations, L at 0 and R at 1.
- Unit mass of shoppers uniformly distributed on `[0,1]`.
- Simultaneous retail prices `p_L,p_R` and common marginal cost `c`.
- Quadratic spatial mismatch/travel term with coefficient `t>0`.
- Exogenous background passenger demand `M>=0` toward the L/urban direction.
- A third-party operator with fixed total service frequency/fleet `F`.
- If L has retail share `x`, directional passenger demands are `M+x` and `1-x`.
- The operator allocates service to minimize aggregate waiting cost subject to `f_L+f_R=F` and `f_i>=f_bar`.
- Waiting disutility is `w/f` in the canonical closed-form model; Stage 7 verifies local robustness to `w f^{-rho}` around `rho=1`.
- Retail firms anticipate the operator response when choosing prices.

No retailer location choice, subsidy, retailer-funded transport, congestion, online channel, extra consumer heterogeneity, or additional strategic variable belongs in the frozen paper.

## 1. Can the mechanism be explained without notation?

Yes.

A retailer's price cut attracts shoppers. Because the transport operator reallocates a fixed vehicle/service pool toward directions with more passengers, the price cut also improves access to that retailer and withdraws service from the rival direction. Background commuting demand makes this amplification stronger on one side than the other. As a result, the two retailers need not respond symmetrically to each other's prices: over a verified open set, one retailer optimally lowers its price when the rival raises price, while the other still raises its price in the conventional way.

Without a minimum service obligation, a sufficiently large price change can cause service in the losing direction to collapse and generate tipping/multiple continuation equilibria. A minimum service requirement can prevent these extreme off-equilibrium reallocations while remaining completely slack in the equilibrium itself.

## 2. Minimal causal / strategic chain

`retail price`

`-> shopping demand`

`-> third-party fixed-fleet reallocation`

`-> direction-specific waiting/access cost`

`-> shopping demand and rival access`

`-> downstream price best responses`

Directional background demand makes this feedback asymmetric.

The minimum service obligation affects only sufficiently extreme off-equilibrium continuation paths in the surviving equilibrium region.

## 3. Mechanism card

| Element | Frozen interpretation |
|---|---|
| Phenomenon | Retail destinations face asymmetric transit access because transport service is demand-responsive and baseline travel demand differs by direction. |
| Friction | A fixed transport fleet/service capacity must be allocated across directions; gaining service in one direction withdraws service from the other. |
| Strategic response | Retailers internalize that price-induced demand changes cause a third-party operator to reallocate service. |
| Equilibrium effect | A nonempty open set of global pure Hotelling-Bertrand equilibria has `BR_L' < 0 < BR_R'`. |
| Off-path support | A minimum service obligation can be slack at equilibrium yet eliminate profitable deviations that work by collapsing rival-direction service. |
| Welfare effect | Decentralized price competition generally understates the socially valuable concentration toward the larger-demand direction; the operator-envelope identity maps access differences into real marginal waiting costs. |
| Empirical implication | Retail-demand shocks should alter service allocation and rival-direction waits when service is demand-responsive and total fleet is fixed; the effect should weaken with larger fleets or fixed schedules. |

## 4. Essential assumptions versus tractability devices

### Essential for the core mechanism

1. **A shared scarce service resource.** If service can expand independently in both directions, the cross-rival access effect disappears.
2. **Demand-responsive third-party allocation.** If transport frequency is fixed with respect to retail demand, the nonlinear strategic feedback disappears.
3. **Directional background demand.** This breaks the symmetry needed for one-sided strategic substitutability.
4. **Downstream price competition with firms anticipating service response.** This is the strategic channel that converts service reallocation into the price-game result.
5. **A lower service bound for the current global-equilibrium theorem.** The floor is not the source of the local sign asymmetry, but in the currently verified model it is required to rule out extreme off-equilibrium service collapse and certify global price Nash support.

### Tractability / normalization assumptions

- endpoint retailer locations;
- two retailers and two directions;
- uniform shopper density;
- common marginal cost;
- quadratic spatial mismatch;
- normalization of `t`, `F`, or `c` in exact witnesses;
- `w/f` waiting disutility as the canonical closed-form technology.

The last item is not essential: Stage 7 verified that the mechanism and envelope structure extend to `w f^{-rho}`, and the global equilibrium survives in a neighborhood of `rho=1`.

## 5. Core propositions and proof status

### C1 — Global network-mediated strategic asymmetry

There exists a nonempty open set of primitives for which the hardened model has a **global pure-strategy retail price Nash equilibrium** satisfying

`BR_L' < 0 < BR_R'`.

**Status:** VERIFIED.

Evidence:

- exact rational/algebraic witness;
- exact shopper-continuation monotonicity at the witness;
- exact global unilateral-deviation comparisons for both firms;
- strict SOC and reaction-slope inequalities;
- continuity/open-neighborhood argument;
- deterministic neighborhood audit supporting the analytic result.

### C2 — Slack upstream service obligation can support downstream global equilibrium

A minimum service obligation can be strictly slack at the equilibrium exhibiting C1 while altering only sufficiently extreme off-equilibrium service reallocations and thereby supporting the global price equilibrium.

**Status:** VERIFIED for the exact witness and an open neighborhood.

At the exact witness, the same equilibrium is globally supported only over an intermediate nonbinding floor interval approximately

`q in (0.324091, 0.344228)`.

This is an implementation/support result, not a claim that the regulator optimally chooses `q`.

### C3 — Interaction identification through nested benchmarks

The C1 sign pattern disappears when:

- frequency is fixed;
- directional background demand is removed;
- frequency does not respond to retail shopping demand.

**Status:** VERIFIED.

This is identification evidence rather than independent novelty.

### C4 — Transport-specific welfare mapping

When the service floor is slack, the derivative of the operator's minimized aggregate waiting cost equals the individual directional waiting-cost difference entering shopper choice. Hence the demand equation and the real social-cost derivative are linked by the operator envelope theorem.

**Status:** VERIFIED symbolically.

This gives

`C'(x_NE)=-(2x_NE-1)C''(x_NE)`

on a stable interior price equilibrium.

### C5 — Private/social allocation wedge

At the exact hardened witness,

- decentralized share: `x_NE=0.575`;
- same-floor second-best share: `x_SB≈0.702378`;
- second-best real-cost improvement: approximately `0.011378`, or about 1.22% of decentralized real cost under the normalization.

**Status:** VERIFIED for the witness; qualitative local wedge follows analytically when `C''>0`.

## 6. Closest-paper distinction

The paper must distinguish itself narrowly from several literatures. Tombak (2006) already establishes strategic asymmetry as a general game-theoretic concept. Grilo-Shy-Thisse, Griva-Vettas, and Tolotti-Yepez show that network/clientele effects can change Hotelling price competition, create multiplicity, and generate asymmetric market outcomes. Bar-Yosef-Martens-Benenson already model demand-frequency vicious cycles in transit, and minimum service/frequency constraints are standard transport primitives. The present contribution is therefore not any of those ingredients. The surviving distinction is the **full strategic network** in which downstream retail pricing changes passenger demand, a third-party operator reallocates a common fixed physical service resource across directions, that reallocation changes both own and rival access, and exogenous directional background demand makes the feedback asymmetric. The resulting one-sided strategic substitutability is proved at a global price Nash equilibrium; a service floor can be nonbinding on path while altering only large off-path deviations. No single predecessor identified through Stage 6 reproduces this complete game and theorem.

This distinction is substantive but institution-specific. The paper should not claim a new general theorem for arbitrary nonlinear network externalities.

## 7. Welfare and generality case

The welfare analysis is substantive rather than a price-transfer exercise. Exact consumer surplus plus producer surplus eliminates retail prices and leaves real spatial and waiting costs. The operator's cost-minimization problem adds a useful structural identity: the access-cost term affecting marginal consumer choice is also the marginal derivative of minimized aggregate waiting cost.

Generality is sufficient for a field paper but not for a broad IO theory claim:

- the waiting technology can be generalized from `1/f` to `f^{-rho}` without changing the mechanism;
- the model maps credibly to directional transit operations with deadheading/short-turning and to demand-responsive/shared-mobility fleet repositioning;
- the model does **not** require a new strategic mechanism when moved across these settings.

The institutional interpretation should be a large retail destination, commercial cluster, or zone whose demand is material for service planning, not an ordinary single shop.

## 8. Major referee risks

### Risk A — Reduced-form absorption

A referee can rewrite the local price game using a nonlinear market-share externality. This remains the strongest conceptual attack.

**Assessment:** serious but not fatal. The paper's defense is the transport-specific operator microfoundation, fixed-resource cross-rival access effect, global off-path service-floor theorem, and envelope-based welfare mapping. Position the result as transport/spatial competition theory, not general network-effect IO.

### Risk B — Physical interpretation of directional frequency

On a conventional two-way fixed route, vehicle circulation links directional frequencies.

**Assessment:** serious exposition risk but not a model contradiction. The frozen interpretation should emphasize deadheading, short-turning, separate directional service pools, shuttles, DRT, or shared-mobility repositioning. Do not sell the model as a literal balanced bidirectional timetable.

### Risk C — Scale of retail demand relative to transit planning

An individual retailer may be too small to affect service allocation.

**Assessment:** application-scale risk. Use large destinations/commercial clusters/zones in the paper's motivating examples. Do not claim empirical relevance for Umeda–Minami-Kusatsu without separate evidence.

### Risk D — Service-floor objective is exogenous

The utilitarian first-best without a coverage value can prefer shutting down one direction.

**Assessment:** not fatal. Treat the floor as an externally imposed service-availability/coverage obligation and use the same-floor second-best as the appropriate welfare benchmark. Do not claim the model derives the socially optimal coverage standard.

None of these risks requires reopening Stage 3–7 model development before a full draft.

## 9. Would a skeptical field referee see more than a parameter exercise?

Yes, provided the manuscript is written around the mechanism rather than the exact witness.

The paper contains:

- a clean third-party fixed-resource feedback mechanism;
- exact nested benchmarks identifying the interaction;
- a global rather than merely local equilibrium theorem;
- an off-equilibrium role for a nonbinding service constraint;
- a welfare envelope identity;
- a private/social allocation wedge;
- functional-form robustness;
- credible transport-operation interpretations.

The exact witness is a proof device, not the contribution.

## 10. Full-paper value assessment

**Full paper warranted.**

The project is stronger than a research note because it now has a coherent theorem package, welfare structure, and institutional interpretation. It is not strong enough to be positioned as a high-level general IO theory paper. Its comparative advantage is at the intersection of transport economics, transit operations, and spatial competition.

## 11. Recommended journal level

### Primary target: Economics of Transportation

This is the best fit for the current frozen paper. The journal explicitly welcomes theoretical work in transportation economics and work on interactions between transportation and other economic activities, including industrial organization and urban economics.

### Strong backup: Journal of Transport Economics and Policy

Appropriate if the paper emphasizes economic mechanism, service obligations, and transport-policy interpretation.

### Stretch target: Transportation Research Part B: Methodological

The paper is mathematically rigorous and concerns pricing, service allocation, traveler behavior, and transport-system analysis. However, the current contribution is primarily an economics mechanism rather than a broad methodological advance in transportation science, so Part B should be treated as a stretch rather than the default target.

### Not recommended as primary positioning

- general IO journals, because strategic asymmetry/network-effect concepts are already established;
- pure regional-science outlets unless the manuscript is deliberately rewritten around spatial policy/geography rather than the transport-supply mechanism;
- short-note outlets, because the surviving result package is now large enough for a full article.

## 12. Exact Stage 8 freeze scope

Stage 8 should freeze exactly the following theory package:

### Model

- two endpoint retail destinations;
- shopper price competition;
- directional background demand `M`;
- third-party demand-responsive allocation of fixed total frequency `F`;
- minimum service share `q`;
- quadratic spatial mismatch;
- canonical `1/f` waiting cost with `f^{-rho}` robustness outside the core derivation.

### Headline theory results

1. Global pure-price equilibrium with one-sided strategic substitutability on a nonempty open set.
2. The sign asymmetry disappears in the three minimum nested benchmarks.
3. A minimum service obligation can be slack at equilibrium while supporting global equilibrium solely by changing extreme off-equilibrium continuation.
4. An intermediate nonbinding service-floor support band exists at the exact witness.
5. Operator-envelope identity linking shopper access differences to marginal real waiting cost.
6. Decentralized versus same-floor second-best share wedge.

### Robustness / interpretation retained

- local robustness to power waiting costs `w f^{-rho}`;
- directional deadheading/short-turning interpretation;
- DRT/shared-mobility repositioning interpretation;
- empirical predictions already derived in Stage 7.

### Explicitly excluded from this paper

- endogenous retailer location;
- public subsidies or optimal subsidy design;
- retailer-funded transport service;
- congestion;
- online/delivery channels;
- endogenous fleet size;
- equity/coverage welfare weights;
- empirical calibration to Umeda–Minami-Kusatsu;
- resurrection of the old `theta(y-x)_+` paper route.

These may only be future-paper ideas after the current paper is completed.

## Final verdict

# `GO TO FULL PAPER`

Next route: **Stage 8 — Theory Freeze**.

No further model extension is permitted before Stage 8. The full paper should be built as a transport/spatial-competition theory article with **Economics of Transportation** as the current primary target.