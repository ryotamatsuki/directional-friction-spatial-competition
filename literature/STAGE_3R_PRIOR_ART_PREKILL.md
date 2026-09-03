# Stage 3R — Prior-Art Pre-Kill

Date: 2026-09-03

Verdict: **NO-GO — PRIOR-ART KILL**

## Candidate mechanism under review

The proposed restart asks whether the one-sided directional transport primitive

\[
\tau(x,y;\theta)=(x-y)^2+\theta (y-x)_+
\]

can generate a new mechanism chain:

> directional friction → deformation of the pure-price-equilibrium existence set → endogenous location constrained or pinned by that existence frontier.

The pre-kill standard is deliberately strict. The branch survives only if this chain is not already structurally present in the spatial-competition literature and the difference is more than a new transport-cost functional form.

## Search scope

Searches were run using title, mechanism, theorem, and adjacent terminology, including:

- asymmetric transport costs price equilibrium existence
- directional transport cost price equilibrium
- one-sided / piecewise / kinked transport cost Hotelling
- linear-quadratic transport cost equilibrium existence
- endogenous location equilibrium existence constraint
- location choice constrained by price-equilibrium existence
- sequential location asymmetric transportation costs
- minimum separation required for price equilibrium
- directional market pure-strategy equilibrium

Recent searches through September 2026 were also run for 2024–2026 work. No 2024–2026 paper was found that is a closer direct predecessor than the classic equilibrium-existence literature identified below. Absence from search is not treated as evidence of novelty.

## Closest-paper matrix

| Paper / family | Model-level overlap | Result-level overlap | Classification | Evidence limit |
|---|---|---|---|---|
| Anderson (1988), *Equilibrium Existence in the Linear Model of Spatial Competition*, Economica | Linear-city Hotelling, endogenous locations followed by prices, general/linear-quadratic transport costs, pure-strategy equilibrium existence | Shows that pure-strategy location-price equilibrium requires stringent price-subgame existence/concavity conditions; undercutting and insufficient convexity are central | **STRUCTURALLY VERY CLOSE** | Full accessible copy was not reliably retrievable in this run, but bibliographic record and detailed abstract/snippet were verified; later papers explicitly build on it |
| Hamoudi & Moral (2005), *Equilibrium existence in the linear model: Concave versus convex transportation costs*, Papers in Regional Science | Linear city, fixed-location price subgame, piecewise demand/profit under nonlinear transport costs | Explicitly constructs feasible regions of location pairs supporting Nash prices; explains nonexistence by multiple local profit maxima/global deviations; then states that failure of price equilibrium outside the region prevents a location equilibrium and studies the resulting differentiation tendency | **STRUCTURALLY ABSORBING FOR THE PROPOSED MECHANISM** | Full article directly inspected |
| Hamoudi & Martín-Bustamante (2011), *Revisiting price equilibrium existence in the linear-city model of spatial competition*, Papers in Regional Science | Convex linear-quadratic transport costs in the linear city | Computes the exact region of location pairs for which price equilibrium exists | **STRUCTURALLY VERY CLOSE** | Publisher abstract/record verified; full text not retrieved in this run |
| Cancian, Bills & Bergstrom (1995) | Hard directional constraint | Directionality itself can destroy pure equilibrium | COMPONENT OVERLAP | Full public record/abstract checked |
| Nilssen (1997) | Direction-asymmetric transportation costs; sequential location | Degree of asymmetry changes sequential locations / first-mover outcomes | **STRUCTURALLY VERY CLOSE TO ANY LATER LOCATION CLAIM** | Abstract and bibliographic record checked; full text unavailable in this run |
| Lai (2001), *Sequential locations in directional markets* | Directional market, sequential location | Continuous directional location game has no SPE; discrete version has SPE | **STRUCTURALLY VERY CLOSE TO DIRECTIONAL LOCATION/NONEXISTENCE CLAIMS** | Publisher article page with introduction/section snippets checked |
| Kharbach (2009); Ebina & Shimizu (2012); Colombo (2009/2011) | Hard unidirectional purchase constraints with location/price variants | Directional restrictions alter location-price outcomes; Kharbach’s claimed SPNE is later rejected by Ebina–Shimizu | COMPONENT OVERLAP | Kharbach PDF and publisher/RePEc records checked |
| Sun (2012, 2014) directional-market / directional-delivery work | Directional constraints plus endogenous spatial choices | Rich directional location configurations and sequential directional equilibria/non-equilibria | COMPONENT OVERLAP / CLOSE FOR REGIME CLAIMS | Publisher/abstract records checked |
| Cohen & Heifetz (2024), *Fixed Differentiation Principle* | Quadratic Hotelling, endogenous locations, asymmetry | Shows that an asymmetry can alter location incentives without changing equilibrium distance | BENCHMARK THREAT, not direct absorption of existence mechanism | Full open article record checked |

## The decisive predecessor

The decisive pre-kill evidence is Hamoudi & Moral (2005).

Their model is not direction-dependent in the same way as the candidate primitive. However, the mechanism that this restart proposed to sell as new is already present at the structural level:

1. nonlinear transport costs make demand and profit piecewise;
2. a regime-local stationary point need not be the global price best response;
3. several local maxima / finite undercutting deviations can destroy pure price equilibrium;
4. therefore only a subset of location pairs supports a pure Nash price equilibrium;
5. the existence region itself constrains what can be said about the location stage.

The paper explicitly states that profit can have multiple local maxima across price regions and that this explains why price Nash equilibrium fails for some location pairs. It then derives a feasible location region for Nash prices and notes that outside that region the location-price game cannot possess the relevant pure-strategy location equilibrium.

This is not merely component overlap. It is the same proposed strategic chain from piecewise price incentives to an equilibrium-existence region and then to restrictions on endogenous location.

## Why the one-sided term does not rescue the current route

The candidate primitive is genuinely directional, unlike the rejected Economics Bulletin wedge. That is a valid modeling improvement.

But the proposed headline contribution was not merely “a new direction-dependent transport function.” It was:

> directional friction changes the set of location pairs that can support pure price competition, and endogenous locations may be pinned down by the boundary of that set.

The first half is an asymmetric specialization/generalization of an already established equilibrium-existence-region program. The second half — location behavior being disciplined by the fact that price equilibrium exists only on a feasible subset — is also explicitly anticipated in the earlier literature.

Under the workflow kill rule, the branch cannot survive solely because \(\theta(y-x)_+\) makes the feasible region asymmetric rather than symmetric. That would be functional-form novelty unless the one-sided structure generated a new theorem or strategic feedback beyond the known “non-quasi-concave profit → feasible price-equilibrium region → constrained location” logic.

No such additional full-game interaction is identified before KT0. The Stage 3R stop rule therefore binds.

## Exact pre-kill classification

Candidate statement:

> Increasing directional friction changes the set of location pairs that can support a pure-strategy price equilibrium, and firms’ endogenous locations may be pinned down by the boundary of that set.

Classification: **STRUCTURALLY ABSORBED / STRUCTURALLY VERY CLOSE**.

- `EXACT PRIOR ART`: NO. The exact one-sided primitive was not located.
- `STRUCTURALLY ABSORBED`: YES for the proposed existence-frontier → location mechanism.
- `CLOSE BUT DISTINCT`: YES at the primitive level only.
- `APPARENTLY OPEN`: NO for the headline mechanism as currently formulated.

## Stop-rule application

The Stage 3R prompt requires immediate `NO-GO — PRIOR-ART KILL` if:

- endogenous location being constrained by an existence frontier is already present under the same mechanism; or
- the remaining difference is only the exact \((y-x)_+\) functional form.

Both conditions are met at the level relevant for this proposed route.

## What is killed

Killed as a contribution route:

- “Directional friction creates a price-equilibrium existence frontier.”
- “The existence frontier disciplines endogenous location.”
- “Firms locating on the boundary of the pure-price-equilibrium set is itself a new location principle.”

These statements may still be mathematically true in the candidate model, but truth is not enough; they are not sufficient novelty targets under the current workflow.

## What is not killed

The broader topic **direction-dependent spatial competition** is not killed.

A new Stage 3 pivot remains possible only if it targets a strategic result that the equilibrium-existence literature cannot reproduce, for example a directional asymmetry that changes a ranking, creates a genuinely new cross-side strategic feedback, or produces a theorem that disappears when directionality is removed and is not an immediate consequence of feasible-equilibrium-region analysis.

Such a pivot must be formulated before additional algebra is undertaken.

## Sources checked

- Hamoudi, H. & Moral, M. J. (2005), *Equilibrium existence in the linear model: Concave versus convex transportation costs*, Papers in Regional Science 84(2), 201–219.
- Hamoudi, H. & Martín-Bustamante, M. S. (2011), *Revisiting price equilibrium existence in the linear-city model of spatial competition*, Papers in Regional Science 90(1), 179–196.
- Anderson, S. (1988), *Equilibrium Existence in the Linear Model of Spatial Competition*, Economica 55, 479–491.
- Cancian, M., Bills, A. & Bergstrom, T. (1995), *Hotelling Location Problems with Directional Constraints*, Journal of Industrial Economics 43(1), 121–124.
- Nilssen, T. (1997), *Sequential location when transportation costs are asymmetric*, Economics Letters 54(2), 191–201.
- Lai, F.-C. (2001), *Sequential locations in directional markets*, Regional Science and Urban Economics 31(5), 535–546.
- Kharbach, M. (2009), *A Unidirectional Hotelling Model*, Economics Bulletin 29(3), 1814–1819.
- Colombo, S. (2009, 2011), unidirectional Hotelling extensions.
- Ebina, T. & Shimizu, D. (2012), *A unidirectional Hotelling model revisited*, Economics Bulletin 32(4), 2870–2875.
- Sun, C.-H. (2012, 2014), directional-market / directional-delivery spatial competition papers.
- Cohen, A. & Heifetz, A. (2024), *Location, Location, Quality: The Fixed Differentiation Principle*, Review of Industrial Organization 65, 705–720.

## Final Pre-Kill Verdict

**NO-GO — PRIOR-ART KILL**

Per the Stage 3R contract, Kill Test 0 is not authorized after this verdict.
