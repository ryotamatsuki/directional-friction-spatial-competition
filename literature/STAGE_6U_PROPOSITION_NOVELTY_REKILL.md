# Stage 6U — Proposition-Level Novelty Re-Kill

Date: 2026-09-04
Workflow: `research-paper-workflow` v1.1 / Stage 6

## Executive verdict

`GO — NARROW FULL-GAME INTERACTION SURVIVES`

The hardened Stage-5 model is frozen. This gate does not credit novelty for network effects, strategic asymmetry, transit demand-frequency feedback, minimum frequency requirements, or equilibrium restoration by a regularizing friction/service constraint in general.

Broad versions of P1–P3 are killed. A narrower full-game theorem survives:

> A third-party transit operator that reallocates a fixed directional fleet in response to downstream retail demand, combined with asymmetric background travel demand, can create a globally well-defined Hotelling-Bertrand equilibrium in which one retailer treats the rival price as a strategic substitute while the other treats it as a strategic complement. A minimum-service obligation can support this global equilibrium by truncating extreme off-equilibrium service collapse while remaining slack at equilibrium. The result disappears in the minimum fixed-frequency / no-background-demand / retail-unresponsive-frequency benchmarks.

No single predecessor located through 2026-09-04 reproduces this complete game and result. The result is therefore classified as `CLOSE BUT DISTINCT / APPARENTLY OPEN`, not as exact prior art.

---

## Frozen Stage-5 propositions under attack

- P1 Global continuation hardening: a minimum service obligation eliminates zero-service/tipping multiplicity while retaining local demand-responsive frequency.
- P2 Global directional strategic asymmetry: a nonempty open set of global pure retail-price Nash equilibria satisfies `BR_L' < 0 < BR_R'`.
- P3 Non-mechanical floor: the minimum service floor is slack at equilibrium and affects only sufficiently extreme deviations.
- P4 Nested interaction: the sign-asymmetry channel disappears in B0/B1/B2.

No model primitive was changed in Stage 6.

---

# Proposition-by-proposition re-kill

## P1 — minimum service removes demand-frequency tipping

### Closest prior art

**Bar-Yosef, Martens & Benenson (2013), Transportation Research Part B**, *A model of the vicious cycle of a bus line*.

They explicitly model the self-reinforcing chain

`low demand -> lower bus frequency -> worse service -> lower demand`

and the reverse virtuous cycle, including multiple equilibria.

Minimum frequency/headway constraints are also standard transit service-design and regulation primitives and are often combined with fleet constraints.

### Classification

- demand-frequency vicious/virtuous cycle: `EXACT / STRUCTURALLY ABSORBED AS A MECHANISM`;
- minimum service as an institutional primitive: `KNOWN`;
- using a floor to prevent zero-service collapse: `OBVIOUS POLICY/REGULARIZATION IMPLICATION`, not an independent contribution.

### Verdict

**KILL P1 AS AN INDEPENDENT NOVELTY CLAIM.**

P1 remains a model lemma needed to define the downstream game.

---

## P2 — global retail-price equilibrium with opposite-signed reaction slopes

### Threat 1 — Tombak (2006), strategic asymmetry

Tombak defines strategic asymmetry precisely as a game in which one firm treats the rival's second-stage strategic variable as a strategic complement while the rival treats the first firm's strategic variable as a strategic substitute. The paper also gives price-competition examples.

Therefore the statement

> one price best response slopes down while the other slopes up

is not new as a game-theoretic concept.

Classification of the broad claim: `EXACT CONCEPTUAL PRIOR ART`.

### Threat 2 — Hotelling with network / consumption externalities

**Grilo, Shy & Thisse (2001)** graft a consumption/network externality onto a spatial duopoly. Weak conformity intensifies price competition; strong effects generate multiple equilibria and market tipping. They also examine more general increasing concave externality functions.

**Griva & Vettas (2011)** study horizontal/vertical differentiation with product-specific network effects, price-influenced expectations, intensified price competition, asymmetric shares, and equilibrium multiplicity under strong effects.

**Tolotti & Yepez (2020)** fully characterize Hotelling-Bertrand equilibria in location, price and market shares under firm-specific network effects and obtain unique/multiple equilibria and induced monopoly regimes.

These papers imply that a reduced-form statement such as

> nonlinear market-share feedback changes Hotelling price competition and can destabilize or asymmetrize market outcomes

is not new.

Classification of the reduced-form mechanism: `STRUCTURALLY VERY CLOSE`.

### Threat 3 — other unilateral-externality / network architectures

The broader IO literature contains unilateral externalities in which one firm's price can switch between strategic complementarity and substitutability while the other side's strategic relation differs. Network-industry models also contain asymmetric strategic responses. Thus the paper cannot claim that an asymmetric externality creating mixed strategic relations is a new general phenomenon.

### Whole-game comparison

The hardened transit model differs in the strategic-feedback network:

1. retailers do not receive a primitive network utility term;
2. a third-party operator solves a constrained allocation problem for a common fixed fleet;
3. a retailer's demand gain reallocates physical service toward its direction and away from the rival direction;
4. exogenous background demand makes this feedback directionally asymmetric;
5. retail prices anticipate that operator response;
6. the minimum service floor is slack at the equilibrium that exhibits strategic asymmetry.

The searched Hotelling-network papers make network value depend directly on market shares/expectations. The searched transit-frequency papers make frequency endogenous but do not place a demand-responsive fixed-fleet operator between two downstream Hotelling-Bertrand retailers. Tombak provides the general strategic-asymmetry concept but not this network-mediated game.

No single prior theorem located in this audit implies the Stage-5 global equilibrium as an immediate corollary.

### Verdict

**KILL the broad 'strategic asymmetry is new' claim.**

**SURVIVE the narrow institution-specific P2 theorem:** `CLOSE BUT DISTINCT / APPARENT GAP`.

---

## P3 — a slack service floor restores global support without creating the local sign pattern

### Closest threats

Transit minimum-service requirements are known and Bar-Yosef et al. already establish demand-frequency tipping.

More generally, Hotelling/network-effect research shows that an additional stabilizing friction can restore a pure price equilibrium that network externalities otherwise destabilize. In particular, *On Hotelling's stability in competition with network externalities and switching costs* shows that sufficiently strong exogenous switching costs can eliminate undercutting incentives and restore pure price equilibrium.

Thus the generic theorem

> add a regularizer to a network-effect Hotelling game and equilibrium returns

is structurally known.

### What remains different

The Stage-5 floor does not alter consumer switching preferences or the local retail FOCs at the surviving equilibrium. It is a constraint on a third-party operator's off-equilibrium allocation of a shared physical service resource. At the exact witness both floors are strictly slack; the constraint changes only sufficiently extreme retail-price deviations by preventing endogenous service collapse in the rival direction.

This yields a specific distinction:

> a nonbinding-at-equilibrium upstream service obligation can change downstream global-equilibrium support by changing only the continuation following sufficiently large downstream deviations.

No exact predecessor for this result was located.

### Verdict

Broad equilibrium-restoration claim: `STRUCTURALLY CLOSE / NOT NOVEL`.

Narrow nonbinding-service-floor result: `CLOSE BUT DISTINCT`, retained as a supporting proposition rather than the sole headline contribution.

---

## P4 — nested interaction requirement

### Result table

| Result | B0 fixed frequency | B1 responsive frequency, M=0 | B2 M>0, retail-unresponsive frequency | Full hardened model | Prior-art status |
|---|---|---|---|---|---|
| Demand-frequency externality | no | yes | no | yes | known |
| Directional access asymmetry | no | no at symmetric equilibrium | yes | yes | known |
| Opposite-signed retail price BRs | no | no | no | yes on open global-NE set | no exact predecessor found |
| Minimum floor needed to stop off-equilibrium service collapse | n/a | may regularize tipping | n/a | can support global P2 while slack at equilibrium | ingredients known; exact downstream role not found |

P4 is not an independent novelty claim. Its role is identification: the surviving P2 result requires the interaction of directional background demand and retail-responsive shared-fleet allocation; it is not produced by either minimum benchmark alone.

### Verdict

**PASS AS NESTED-BENCHMARK EVIDENCE, NOT AS A SEPARATE CONTRIBUTION.**

---

# Updated closest-paper matrix

| Paper / family | Model overlap | Result overlap | Stage-6 classification |
|---|---|---|---|
| Tombak (2006) | asymmetric games | opposite strategic-relation signs | exact conceptual prior art; broad P2 killed |
| Grilo, Shy & Thisse (2001) | spatial duopoly + clientele/network externality | competition intensification, multiplicity, tipping, general externality functions | structurally very close reduced-form threat |
| Griva & Vettas (2011) | differentiated duopoly + product-specific network effects + price-sensitive expectations | intensified competition, asymmetric shares, multiple equilibria | structurally close |
| Tolotti & Yepez (2020) | Hotelling-Bertrand + firm-specific network effects | price/location/demand equilibria, multiplicity, monopoly regimes | strongest Hotelling-network threat |
| Bar-Yosef, Martens & Benenson (2013) | demand-frequency public-transit feedback | vicious/virtuous cycles, multiple equilibria | P1 absorbed |
| transit frequency/fleet literature | endogenous frequency, fleet and service constraints | frequency/service optimization, minimum service | ingredients known |
| Hotelling + network externality + switching-cost stabilization | network effects destabilize price equilibrium; switching costs stabilize | pure-equilibrium restoration | structural P3 threat |
| Toshimitsu (2026) | Hotelling + network connectivity | Bertrand/Cournot rankings and strategic-variable choice | recent broad network-Hotelling threat, not exact P2/P3 |
| asymmetric transport Hotelling / scheduling literature | transport asymmetry, fare/location decisions | asymmetric competition outcomes | component overlap only with hardened game |

---

# Whole-game absorption verdict

`NOT ABSORBED BY A SINGLE PRIOR MODEL FOUND IN THIS AUDIT.`

Multiple literatures separately contain:

- Hotelling price competition;
- network effects and consumer expectations;
- strategic asymmetry;
- endogenous transit frequency;
- fixed fleets / service standards;
- demand-frequency vicious cycles;
- equilibrium stabilization by an additional friction/constraint.

But the workflow forbids killing a generalization merely because separate papers contain the ingredients. The relevant test is whether one predecessor reproduces the strategic network and headline result, or whether the full result is an immediate corollary of a known theorem.

The search did not identify such a predecessor for the combination:

`retail price -> shopping demand -> third-party shared-fleet reallocation -> directional waiting costs -> retail demand`,

with directional background demand and a floor that is slack at the headline equilibrium.

The surviving theorem is therefore narrower than the original motivation but economically non-cosmetic.

---

# Killed claims

Do not claim novelty for:

1. directional transport friction/asymmetric access by itself;
2. network effects in Hotelling;
3. network effects intensifying price competition;
4. network effects causing tipping/multiple equilibria;
5. demand-frequency vicious/virtuous cycles;
6. minimum transit service frequency;
7. strategic asymmetry as a concept;
8. the generic curvature condition producing opposite best-response slopes;
9. generic equilibrium restoration by adding a stabilizing friction/constraint.

---

# Surviving claim set

### S1 — Network-mediated downstream strategic asymmetry

There exists a nonempty open parameter set in which a third-party, demand-responsive fixed-fleet transit allocation mechanism with directional background demand supports a global pure Hotelling-Bertrand price equilibrium with

`BR_L' < 0 < BR_R'`.

The claim is about the institutional microfoundation and full game, not about inventing strategic asymmetry.

### S2 — Off-equilibrium service-obligation support

A minimum service obligation can support S1 while being strictly slack at the equilibrium itself; its role is to truncate extreme off-equilibrium transit reallocations rather than create the local price-reaction sign pattern.

### S3 — Interaction identification

S1 disappears in the minimum nested benchmarks when frequency is fixed, directional background demand is removed, or the operator ceases to respond to downstream shopping demand.

---

# Revised contribution statement

> The paper studies downstream spatial price competition when access quality is supplied by a third-party transport network with a fixed directional service resource. Retail demand reallocates service across directions, so a retail price change affects not only market share directly but also the rival's access through the operator's fleet response. Directional background demand makes this feedback asymmetric. The model identifies an open set of global price equilibria in which one retailer's price is a strategic substitute while the other's is a strategic complement. A minimum-service obligation can be slack at equilibrium yet be essential for global equilibrium support because it limits only extreme off-equilibrium service collapse. The result is not present in fixed-frequency, symmetric-background-demand, or retail-unresponsive-frequency benchmarks.

---

# Strongest remaining novelty threat

The strongest threat is **reduced-form absorption by the general Hotelling/network-externality literature**. Stage 4 already showed that local strategic asymmetry can be written as a curvature condition for a generic market-share externality. A skeptical referee may therefore characterize the transit operator as one microfoundation of a known nonlinear externality.

The surviving defense is narrower: the fixed-fleet operator plus minimum-service obligation imposes a particular piecewise continuation mapping and generates a global-equilibrium support result in which the regulatory floor is slack at equilibrium. Stage 7 should test whether this transport structure yields a welfare or generality result beyond an arbitrary reduced-form `Phi(x)`; if it does not, the eventual contribution should be positioned as an institution-specific theorem rather than a general IO theorem.

---

# Final verdict and route

`GO`

Route: **GO TO STAGE 7 — WELFARE / GENERALITY.**

Stage 7 may use only S1–S3 as the surviving contribution set. All killed claims remain dead. Do not add endogenous retailer locations or new strategic variables before welfare/generality is assessed for the frozen hardened model.