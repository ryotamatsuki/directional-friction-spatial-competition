# Stage 3S — TOP 3 Deep Dive

Date: 2026-09-03

TOP 3 retained for deep dive after the 10-candidate screen:

1. **E — Directional reversal of differentiation’s price effect**
2. **H — Competition-softening versus directional-exposure trade-off**
3. **B — Endogenous side-switching / ordering reversal**

None is promoted to Stage 4. The purpose of this file is to record why the best surviving ideas still fall below the workflow threshold.

---

# TOP 1 — E: Directional reversal of differentiation’s price effect

## Minimal game

- Consumers: uniform on [0,1], unit demand, full coverage for preflight.
- Firms: left firm L at l=a and right firm R at r=a+d.
- Transport disutility:

\[
\tau(x,y;\theta)=(x-y)^2+\theta(y-x)_+.
\]

- Locations fixed in the minimal preflight.
- Firms choose mill prices simultaneously.

## Strategic feedback

\[
d\uparrow
\rightarrow
\begin{cases}
\text{weaker head-to-head competition} & (+\ p_i)\\
\text{greater rightward exposure for R's marginal market} & (-\ p_R)
\end{cases}
\]

The second channel is directional and absent at theta=0.

## Local algebraic preflight

For a candidate equilibrium whose indifferent consumer lies between the firms, the local price expressions reduce to

\[
p_L-c=\frac{d(2+2a+d)+\theta(1+a+d)}{3},
\]

\[
p_R-c=\frac{d(4-2a-d)+\theta(2-a-d)}{3}.
\]

Holding the left location a fixed and varying separation d,

\[
\frac{\partial p_L}{\partial d}
=\frac{2+2a+2d+\theta}{3}>0,
\]

while

\[
\frac{\partial p_R}{\partial d}
=\frac{4-2a-2d-\theta}{3}
=\frac{4-2r-\theta}{3}.
\]

Hence the right firm’s local price response reverses sign when

\[
\theta>4-2r.
\]

Candidate proposition if this branch were globally valid:

> Greater horizontal separation always relaxes pricing pressure for the left firm but can intensify the effective competitive constraint on the right firm when directional friction is sufficiently large.

## Nested benchmarks

- theta=0: standard quadratic Hotelling local pricing; both local price effects of added separation are positive on the usual interior region.
- hard directional limit: not formally equivalent; no contribution claim may rely on this limit without proof.
- asymmetric linear schedule-delay benchmark: van der Weijde–Verhoef–van den Berg is the closest architecture.

## Whole-game absorption

No exact prior theorem matching the sign condition above was located. However:

- asymmetric transport-cost models already make price and location effects side-specific;
- van der Weijde et al. jointly study fares, locations, asymmetric early/late travel costs and Stackelberg timing;
- spatial literature already contains price strategic-substitute/complement and counterintuitive price effects under altered Hotelling primitives.

Thus the surviving difference is currently a **conditional sign comparative static**, not a new full-game mechanism.

## Main mathematical threat

The expressions above come from a local allocation regime. Stage 3R established that regime-local FOCs cannot be promoted without global cross-regime deviation analysis. The project would have to reopen substantial price-game mathematics merely to establish a result that remains narrow on novelty.

## Deep-dive verdict

**DO NOT PROMOTE.** Best algebraic result, insufficient paper architecture.

---

# TOP 2 — H: Competition-softening versus directional-exposure trade-off

## Minimal game

- Leader chooses a.
- Follower chooses b>a on the candidate branch.
- Firms subsequently set prices.
- Same one-sided friction primitive.

## Strategic feedback

\[
b-a\uparrow
\rightarrow
\text{competition softening}
\rightarrow +\pi_B
\]

but simultaneously

\[
b\uparrow
\rightarrow
\text{rightward directional exposure}
\rightarrow -\text{effective attractiveness / pricing power}
\rightarrow -\pi_B.
\]

This can generate an interior local optimum rather than maximum separation.

## Algebra preflight

On the middle-sharing local branch with follower on the right, a stationary condition factors to the economically relevant quadratic

\[
3b^2+(3\theta-4a-4)b
+(a^2-2a\theta+4a+\theta^2-2\theta)=0.
\]

The local maximizing root identified in preliminary calculations is

\[
b_+(a,\theta)
=\frac{2a+2}{3}-\frac{\theta}{2}
+\frac{1}{6}\sqrt{4(a-2)^2-3\theta^2},
\]

when real, feasible and locally second-order valid.

Its theta derivative is strictly negative wherever the root is real:

\[
\frac{\partial b_+}{\partial\theta}
=-\frac12-\frac{\theta}{2\sqrt{4(a-2)^2-3\theta^2}}<0.
\]

Thus the preflight supports a real economic channel: stronger directional friction pulls a right-side follower leftward on this local branch.

## Why this still fails

The headline outcome would be “directional asymmetry produces interior/asymmetric differentiation through a two-channel trade-off.” That category is too close to:

- Nilssen’s asymmetric-transport sequential location;
- Sun’s directional agglomeration/maximal/asymmetric-dispersion configurations;
- van der Weijde et al.’s asymmetric schedule-delay location/fare model;
- broader Hotelling work where altered utility or product differentiation produces interior differentiation.

A publishable contribution would require a sharper theorem that changes an established strategic principle, not just a new decomposition for an interior root.

## Main mathematical threat

The follower root is only regime-local. Global price continuation and cross-ordering location deviations remain unresolved.

## Deep-dive verdict

**DO NOT PROMOTE.** Mechanism is economically coherent but result class is too crowded.

---

# TOP 3 — B: Endogenous side-switching / ordering reversal

## Minimal game

1. Leader chooses a in [0,1].
2. Follower chooses b anywhere in [0,1].
3. Firms choose prices simultaneously.

The follower may choose b>a or b<a.

## Strategic feedback

\[
\theta
\rightarrow
\text{relative payoff of left-role versus right-role}
\rightarrow
\text{follower side choice}
\rightarrow
\text{leader commitment incentive}.
\]

A genuinely interesting version would require the follower to cross the leader because **pricing incentives change the relative value of spatial roles**, not merely because one endpoint becomes closer to consumers.

## Candidate proposition

> There exists a nondegenerate set of leader locations and a finite theta threshold such that the follower’s global best response switches from the leader’s right to the leader’s left, with the switch generated by the price-mediated directional-exposure channel.

## Evidence status

Earlier exploratory numerics suggested ordering changes for some theta values, but those calculations preceded the global price-subgame audit and are explicitly noncanonical. No analytical side-switch theorem is currently established.

## Prior-art threat

This candidate is exposed to the densest literature overlap:

- Nilssen: sequential location, asymmetric transport, entry pattern, mover advantage;
- Lai: sequential directional markets;
- Kharbach/Ebina-Shimizu: two-stage unidirectional Hotelling location-price;
- van der Weijde et al.: asymmetric travel costs plus price/location and Stackelberg structures;
- recent sequential-Hotelling work: follower-versus-leader positional and profit advantages.

No exact identical side-switch theorem was found, but the burden of showing a distinct economic mechanism would be high.

## Deep-dive verdict

**DO NOT PROMOTE.** Potentially interesting numerically, but novelty/tractability ratio is unfavorable.

---

# Why D was not in the TOP 3 despite a stronger headline

The hoped-for theorem that location choices switch between strategic complements and substitutes looked stronger than E/H/B. The local right-side stationary root gives

\[
\frac{\partial b_+}{\partial a}
=
\frac{2\{a-2+\sqrt{4(a-2)^2-3\theta^2}\}}
{3\sqrt{4(a-2)^2-3\theta^2}}.
\]

The formal zero occurs at \(\theta=2-a\). But at that same parameter value, \(b_+=a\). Therefore the sign change is not a within-ordering strategic-relation reversal; it coincides with the collapse of the strict right-side branch. This fails the mechanism test before prior-art considerations.

---

# TOP-3 comparison

| Criterion | E Price-effect reversal | H Exposure/separation trade-off | B Side-switching |
|---|---:|---:|---:|
| Novelty survival | 16/25 | 14/25 | 15/25 |
| Mechanism clarity | 16/20 | 17/20 | 14/20 |
| Economic importance | 9/15 | 10/15 | 11/15 |
| Tractability | 12/15 | 9/15 | 7/15 |
| Whole-game interaction | 5/10 | 6/10 | 6/10 |
| Welfare potential | 3/5 | 4/5 | 4/5 |
| Generality | 3/5 | 3/5 | 3/5 |
| Journal potential | 3/5 | 1/5 | 2/5 |
| **Total** | **67** | **64** | **62** |

None reaches a credible Stage-4 threshold because the scores conceal a binding qualitative problem: E is too narrow, H is too close to known differentiation outcomes, and B has excessive prior-art and global-solution risk.

# Final deep-dive verdict

**No preferred candidate.** Do not force a Stage-4 model solely because the primitive has already received substantial work.

Canonical Stage 3S verdict: `NO-GO — GENUINE DIRECTIONAL FRICTION ROUTE EXHAUSTED`.
