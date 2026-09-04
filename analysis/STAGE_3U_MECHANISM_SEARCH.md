# Stage 3U — Network-Mediated Directionality Mechanism Search

Date: 2026-09-04
Workflow: research-paper-workflow v1.1 / Stage 3

## Executive verdict

`CONDITIONAL GO — PROMOTE DEMAND-RESPONSIVE DIRECTIONAL TRANSIT FREQUENCY TO MINIMAL-MODEL KILL TEST`

The old destination-specific wedge, the one-sided soft-friction primitive `theta(y-x)_+`, and the price-existence-frontier route remain killed. This stage asks a different question: can transport-network asymmetry arise endogenously from a strategic network variable that reacts to retail demand?

The best candidate is a third-party transit-frequency allocation mechanism. Retail demand affects direction-specific service frequency; service frequency feeds back into retail demand; a fixed fleet means a price cut by one retailer can improve access to that retailer while worsening access to its rival. This creates a cross-market strategic multiplier absent from standard Hotelling and from models with exogenous asymmetric transport costs.

## Ex-ante scoring weights

- novelty / prior-art survival: 25
- mechanism clarity: 20
- economic importance: 15
- tractability: 15
- full-game interaction value: 10
- welfare / policy potential: 5
- institutional relevance: 5
- journal potential: 5

## Candidate screen

| ID | Candidate | Score | Decision |
|---|---|---:|---|
| A | Demand-responsive directional transit frequency (third-party operator) | 84 | TOP 1 / preferred |
| B | One-way shared-route accessibility spillover from retailer-funded service | 76 | TOP 3 |
| C | Shared-corridor congestion as a price-mediated raising-rival-access-cost channel | 73 | TOP 3 |
| D | Firm-specific investment that simply lowers own transport cost | 43 | KILL |
| E | Free shopping shuttle adoption | 46 | KILL |
| F | Regional-government infrastructure competition / generic spillovers | 48 | KILL |
| G | Online/delivery channel as a bypass of directional access | 45 | KILL |
| H | Trip chaining / commuting shopping | 51 | KILL |
| I | Endogenous consumer residential location / mode choice | 44 | KILL |
| J | Generic congestion or generic demand-network effects added to Hotelling | 47 | KILL |

## A — Demand-responsive directional transit frequency

### Mechanism

A transport operator has a fixed total fleet/frequency `F` and allocates frequency across directions in response to directional passenger demand. Retail prices and locations affect shopping trips, so retail competition changes transport service; transport service in turn changes retail demand.

### Strategic loop

`retail price/location -> directional shopping demand -> operator frequency allocation -> waiting/access cost -> retail demand -> retail pricing/location`.

The fixed-fleet constraint adds a cross-rival effect: attracting a shopper to one direction draws service frequency away from the opposite direction.

### Minimal preflight model

Two retailers at endpoints 0 and 1. A unit mass of shoppers is uniform on `[0,1]`. Quadratic store-travel mismatch has coefficient `t`. Let `x` denote the left retailer's shopping share. There is exogenous background commuter demand `M >= 0` in the urban/left direction. A public operator allocates a fixed total frequency `F` to minimize aggregate waiting cost

`w[(M+x)/f_L + (1-x)/f_R]`

subject to `f_L+f_R=F`.

The operator response is

`f_L = F sqrt(M+x)/(sqrt(M+x)+sqrt(1-x))`,

`f_R = F sqrt(1-x)/(sqrt(M+x)+sqrt(1-x))`.

Let `A=w/F`. The shopper indifference condition becomes

`G(x; Delta p) = Delta p + t(2x-1) + A H(x,M) = 0`,

where

`H(x,M)=(1-M-2x)/sqrt((M+x)(1-x))`.

Exact derivatives are

`H_x = -(M+1)^2/[2((M+x)(1-x))^(3/2)] < 0`,

`H_M = -(M+1)/[2 sqrt(1-x)(M+x)^(3/2)] < 0`.

Hence, on any stable interior branch `G_x>0`,

`|dx/dp_i| = 1/G_x > 1/(2t)`,

so endogenous frequency allocation strictly amplifies retail price competition relative to a fixed-frequency Hotelling benchmark.

At `M=0`, `x=1/2`, the local symmetric price equilibrium has

`p-c = t - 2w/F`,

instead of the fixed-frequency Hotelling markup `t`, provided `w/F < t/2`.

A local perturbation in background urban-bound commuter demand satisfies

`dx*/dM |_(M=0) = w/[3(Ft-2w)] > 0`,

and

`d(p_L-p_R)/dM |_(M=0) = 4w/(3F) > 0`.

Thus exogenous commuter demand in one direction creates a retail market-power advantage through endogenous transit-frequency allocation, without inserting a firm-specific utility wedge.

### Candidate theorem package

A1. **Frequency-Reallocation Multiplier:** demand-responsive fixed-fleet transit service makes retail demand strictly more price elastic than under fixed direction-specific frequencies.

A2. **Commuter-Supported Market Power:** a marginal increase in exogenous urban-bound commuter traffic raises the urban retailer's equilibrium share and price relative to the rural retailer on the stable interior branch.

A3. **Full-game target:** after locations are endogenized, firms may strategically move to manipulate the operator's frequency allocation; test whether this creates a location distortion not reproducible by either exogenous asymmetric transport costs or an exogenous network-effect Hotelling benchmark.

### Prior-art threat

Transit economics has endogenous fare/frequency and Mohring effects; Hotelling has positive/negative network effects; retail-location work studies transport infrastructure. The searched literature did not reveal a paper combining a demand-responsive fixed-fleet transit operator with downstream retail location-price competition and directional background demand. Nevertheless, A1/A2 alone may be reducible to a microfounded demand/network externality. Stage 4 must therefore kill-test A3 and explicit nested benchmarks before any novelty claim is accepted.

## B — One-way shared-route accessibility spillover

### Mechanism

Retailers or commercial facilities co-finance access service on a radial corridor. A route serving a downstream retailer passes an upstream rival, so an increment of downstream service can improve the rival's access as well; the reverse spillover is absent or weaker.

### Strategic loop

`route position -> appropriability of access investment -> service contribution -> downstream price competition -> location incentive`.

### Candidate theorem

A more access-disadvantaged downstream retailer may invest less in access than the upstream rival because its investment is less appropriable. With endogenous locations, firms may value the upstream position partly to avoid access-investment leakage.

### Threat

Strategic accessibility investment, infrastructure spillovers, access-provision investment, shopping shuttle competition, and commercial-facility cooperation with buses already exist. Exact one-way route-topology spillovers were not found in the search, but the contribution risks being classified as an asymmetric spillover variant.

**Decision:** TOP 3, no promotion unless A fails.

## C — Shared-corridor congestion / raising rival access cost

### Mechanism

Demand attracted by one retailer loads a corridor segment also used by rival customers. A retailer's price cut therefore has a second effect: it changes travel congestion on a shared path and can raise the rival's generalized access cost.

### Strategic loop

`price cut -> own traffic -> common-path congestion -> rival access worsens -> further demand capture`.

This is different from firm-specific congestion, where own customers only congest their own destination.

### Candidate theorem

Shared-route congestion can make a price reduction strategically self-reinforcing and may overturn the standard Bertrand-Hotelling demand slope or create a predatory-access channel.

### Threat

Hotelling with congestion and competition/cooperation in congestion-reduction investment are established. No direct retail shared-route congestion theorem was located, but the network/congestion literature is broad.

**Decision:** TOP 3, second fallback.

## Killed candidates

### D — Own transport-cost reduction investment

Killed by the endogenous-transport-cost/service-enhancement literature and strategic accessibility competition. The strategic variable itself is already established.

### E — Free shopping shuttle

Killed as a core route by direct spatial-Bertrand work on free shopping shuttle bus strategies. A shared-route topology could still matter under B.

### F — Regional infrastructure competition

Killed by Hotelling-inspired infrastructure/tax competition with spillovers and strategic accessibility investment under port competition.

### G — Online/delivery bypass

Killed by location-price competition with online retailers, online/offline Hotelling models, and the rapidly expanding omnichannel spatial literature.

### H — Trip chaining

Killed by spatial retail models with commuting consumers, competitive facility location with trip chaining, and market-competition work on trip chaining.

### I — Endogenous consumer location/mode

Killed as a generic route by continuous-logit Hotelling models with endogenous consumer locations and extensive destination-mode choice literature.

### J — Generic network/congestion externality

Killed by Hotelling models with negative network externalities, congestion, and firm-specific positive network effects. Directionality must come from a transport-network institution, not merely another demand externality term.

## Preferred minimal architecture

Promote A only, with B and C frozen as backups.

### Stage 4 input

1. Two retailers and a third-party transit operator.
2. A fixed fleet `F` allocated across directions.
3. Directional background demand `M` as the microfoundation for network asymmetry.
4. Retailers choose prices; endpoint locations are fixed for the first theorem.
5. Operator-frequency and shopper-choice subgame is solved as a fixed point.
6. Only if the fixed-location theorem survives should retailer locations be endogenized.
7. No policy subsidy, no retailer contributions, no congestion, no online channel in the preferred minimal model.

### Required nested benchmarks

- B0: fixed equal frequencies -> standard quadratic Hotelling.
- B1: endogenous frequencies but `M=0` -> symmetric frequency-feedback benchmark.
- B2: `M>0` but operator ignores shopping demand -> exogenous directional-access benchmark.
- Full: `M>0` and operator frequency responds to shopping demand.

### Full-model-only target

Show a strategic price/location effect that requires **both** background directional demand and endogenous operator response. If every result is obtainable from B1 as a generic network effect or B2 as a utility asymmetry, kill the route.

## Final Stage 3 verdict

`CONDITIONAL GO`.

Exact blocker: **whole-game novelty versus Hotelling network-externality models**.

Route: proceed to a narrow Stage 4 minimal-model kill test for Candidate A only.