# Stage 3S — Mechanism Candidates

Date: 2026-09-03

Status: post-Stage-3R mechanism search. The price-equilibrium-existence-frontier route is bindingly killed and is not revived here.

Scoring weights were fixed ex ante: novelty survival 25; mechanism clarity 20; economic importance 15; analytical tractability 15; whole-game interaction value 10; welfare/policy potential 5; generality 5; journal potential 5.

## Candidate table

| ID | Candidate | Prior-art class | Score /100 | Decision |
|---|---|---:|---:|---|
| A | Directional first-mover-advantage reversal | STRUCTURALLY VERY CLOSE | 45 | KILL |
| B | Endogenous side-switching / ordering reversal | COMPONENT OVERLAP | 62 | TOP 3, not preferred |
| C | Agglomeration–dispersion reversal | STRUCTURALLY VERY CLOSE | 43 | KILL |
| D | Location strategic complements/substitutes reversal | Algebraically fails in preflight | 48 | KILL |
| E | Differentiation ceases to soften price competition for the right firm | COMPONENT OVERLAP / POTENTIALLY DISTINCT RESULT | 67 | TOP 3 |
| F | Endogenous effective-market-center feedback | MERELY RELATED but mechanically weak | 50 | KILL |
| G | Directional captive-market creation | STRUCTURALLY VERY CLOSE | 46 | KILL |
| H | Competition-softening versus directional-exposure trade-off in separation | COMPONENT OVERLAP / POTENTIALLY DISTINCT RESULT | 64 | TOP 3 |
| I | Finite-soft-friction phenomenon between symmetric and hard-directional limits | COMPONENT OVERLAP | 54 | KILL |
| J | Welfare reversal from endogenous relocation | STRUCTURALLY VERY CLOSE as a main route | 44 | KILL |

No candidate reaches the standard required for a preferred Stage-4 architecture after prior-art and algebra preflight. Stage 3S therefore returns `NO-GO — GENUINE DIRECTIONAL FRICTION ROUTE EXHAUSTED` for this primitive as a standalone paper route.

---

## A — Directional First-Mover Advantage Reversal

1. **Candidate name:** Directional first-mover-advantage reversal.
2. **Mechanism:** one-sided access exposure could change whether commitment to location benefits the leader or follower.
3. **Feedback:** theta -> asymmetric exposed demand -> follower response -> leader commitment value -> profit ordering.
4. **Endogenous margins:** sequential locations; prices downstream.
5. **Players:** two firms and consumers.
6. **Timing:** leader location -> follower location -> simultaneous prices.
7. **Minimum primitive:** one-sided transport friction.
8. **Directional component:** only consumers traveling toward the costly direction bear the surcharge.
9. **Closest threat:** Nilssen (1997) explicitly discusses first-mover advantage under asymmetric transportation costs; van der Weijde–Verhoef–van den Berg also find second-mover advantage in Stackelberg scheduling structures with asymmetric schedule-delay costs.
10. **Candidate proposition:** sign of leader-minus-follower profit changes with theta.
11. **Non-mechanical?** potentially, because profit ordering would come from continuation pricing and relocation.
12. **Welfare:** secondary.
13. **Institution:** sequential service/site entry under directionally asymmetric access.
14. **Tractability:** moderate-to-high risk because global price continuation must be solved.
15. **Likely referee attack:** “Nilssen already studies exactly the mover-advantage implication of asymmetric transport costs.”

**Decision: KILL.** The headline object is already an explicit prior-art object. A new sign threshold under a different soft functional form would not be enough.

---

## B — Endogenous Side-Switching / Ordering Reversal

1. **Candidate name:** Endogenous side-switching / ordering reversal.
2. **Mechanism:** sufficiently strong rightward friction can make the follower prefer locating to the left of the leader rather than remaining the right firm.
3. **Feedback:** theta -> role-specific directional exposure -> relative value of being left/right firm -> follower side choice -> leader anticipation.
4. **Endogenous margins:** side of leader, absolute location, prices.
5. **Players:** two firms.
6. **Timing:** sequential locations -> simultaneous prices.
7. **Minimum primitive:** one-sided soft friction.
8. **Directional component:** being the right-hand firm exposes more marginal consumers to the one-sided surcharge.
9. **Closest threat:** Nilssen (entry pattern under asymmetric transportation costs); Lai (sequential directional markets); Kharbach/Ebina-Shimizu (hard unidirectional location-price); recent sequential Hotelling work also studies follower/leader positional advantages.
10. **Candidate proposition:** for some theta, the follower’s globally optimal side switches from b>a to b<a for a nondegenerate leader-location set.
11. **Non-mechanical?** only if the side switch comes from a price-mediated role-value reversal rather than simple endpoint geometry.
12. **Welfare:** possible relocation channel.
13. **Institution:** schedules/sites where moving one way is systematically harder.
14. **Tractability:** high risk; requires complete price continuation on both orderings.
15. **Likely referee attack:** “This is another asymmetric sequential-location / entry-pattern result.”

**Preflight:** earlier numerical reconnaissance suggested possible side switching, but it was generated before a global price-subgame proof and cannot be treated as evidence. No analytical full-game theorem is currently established.

**Decision: TOP 3 only.** It is not selected for Stage 4 because the closest-literature overlap is too direct relative to the amount of mathematics required.

---

## C — Directional Agglomeration–Dispersion Reversal

1. **Candidate name:** Directional agglomeration–dispersion reversal.
2. **Mechanism:** directional exposure could counteract competition-softening incentives and alter equilibrium separation.
3. **Feedback:** theta -> exposure -> marginal value of separation -> location distance.
4. **Endogenous margins:** distance and absolute position.
5. **Players:** two firms.
6. **Timing:** location then price.
7. **Primitive:** one-sided friction.
8. **Directional component:** asymmetric marginal travel cost.
9. **Closest threat:** Sun (2014) already obtains midpoint agglomeration, maximum differentiation and asymmetric dispersion under directional delivery constraints; Cohen–Heifetz (2024) and Ago (2023) show that changes in non-spatial differentiation/utility primitives can alter or fix locational differentiation.
10. **Candidate proposition:** sign changes in d|a-b|/dtheta.
11. **Non-mechanical?** possibly, but the result category itself is crowded.
12. **Welfare:** standard transport-versus-market-power trade-off.
13. **Institution:** directional scheduling/access.
14. **Tractability:** moderate.
15. **Referee attack:** “known directional-location regime map with a different cost function.”

**Decision: KILL under K5/AK4/AK6.**

---

## D — Location Strategic Complementarity / Substitutability Reversal

1. **Candidate name:** Directional strategic-relation reversal in location.
2. **Mechanism:** hoped-for sign reversal of follower best-response slope.
3. **Feedback:** leader location -> follower directional exposure -> follower optimal location.
4. **Endogenous margins:** leader/follower positions.
5. **Players:** two firms.
6. **Timing:** sequential location, then price.
7. **Primitive:** one-sided soft friction.
8. **Directional component:** kinked demand slope.
9. **Closest threat:** literature on strategic complements/substitutes in Hotelling and spatial games; Ago (2023) explicitly interprets a Hotelling comparative static through strategic complementarity.
10. **Candidate proposition:** sign of dBR_B/da changes with theta.
11. **Non-mechanical?** yes if valid within a fixed economic branch.
12. **Welfare:** secondary.
13. **Institution:** strategic site/schedule follow-the-leader versus move-away response.
14. **Tractability:** initially attractive because a local M-regime root is closed form.
15. **Referee attack:** branch feasibility and global equilibrium.

### Algebra preflight

For a follower locally to the right of leader a in the M regime, the economically relevant local stationary root is

\[
b_+(a,\theta)=\frac{2a+2}{3}-\frac{\theta}{2}+\frac{1}{6}\sqrt{4(a-2)^2-3\theta^2}.
\]

Its leader-location derivative is

\[
\frac{\partial b_+}{\partial a}
=
\frac{2\{a-2+\sqrt{4(a-2)^2-3\theta^2}\}}
{3\sqrt{4(a-2)^2-3\theta^2}}.
\]

The sign would switch at \(\theta=2-a\). But exactly at that value, direct substitution gives \(b_+=a\). Hence the apparent switch occurs when the candidate ceases to be a strictly right-side branch. Within the feasible strict ordering \(b_+>a\), the slope does not deliver the desired within-branch complement/substitute reversal.

**Decision: KILL by algebra preflight.** The desired theorem is not supported by the minimal branch that motivated it.

---

## E — Differentiation Reverses Its Price Effect for the Right Firm

1. **Candidate name:** Directional reversal of the competition-softening price effect.
2. **Mechanism:** increasing separation softens head-to-head competition but simultaneously lengthens exposure to the one-sided surcharge for consumers served by the right firm.
3. **Feedback:** separation -> competition softening (+ price) and directional exposure (- right-firm willingness/ability to raise price) -> equilibrium price.
4. **Endogenous margins:** price; potentially location in a later stage.
5. **Players:** two firms.
6. **Timing:** fixed locations -> prices for the minimal theorem; location only if the price result survives.
7. **Primitive:** one-sided friction plus symmetric quadratic distance cost.
8. **Directional component:** the right firm’s served consumers can bear a surcharge that rises with its absolute/rightward location.
9. **Closest threat:** van der Weijde–Verhoef–van den Berg explicitly study fares, locations and asymmetric early/late schedule-delay costs; broader asymmetric-transport Hotelling literature also changes price/location incentives.
10. **Candidate proposition:** within the middle-sharing local regime, greater spatial separation can raise the left firm’s price but lower the right firm’s price when theta is sufficiently large.
11. **Non-mechanical?** it reflects two opposing channels, but it remains a conditional price comparative static unless tied to a new location theorem.
12. **Welfare:** could alter the usual market-power effect of differentiation.
13. **Institution:** routes/schedules where one direction of mismatch is more costly.
14. **Tractability:** high at the local price level; global price equilibrium is the material unresolved issue.
15. **Referee attack:** “asymmetric transport costs already generate asymmetric price and location responses; this is one more coefficient sign.”

### Algebra preflight

Write the right location as \(r=a+d\). In the middle-sharing local candidate,

\[
p_R-c=\frac{d(4-2a-d)+\theta(2-a-d)}{3}.
\]

Therefore

\[
\frac{\partial p_R}{\partial d}=\frac{4-2r-\theta}{3},
\]

whereas

\[
\frac{\partial p_L}{\partial d}=\frac{2+2a+2d+\theta}{3}>0.
\]

Thus the local price effect of added separation is directionally asymmetric and can reverse for the right firm when \(\theta>4-2r\).

This is a real algebraic distinction, not merely a conjectured numerical pattern. However, it is **not yet a global-Nash result**, and as a standalone price comparative static it fails the Stage-3 standard of needing more than a monotone/sign comparative static.

**Decision: TOP 3; not sufficient for Stage 4 as a paper architecture.**

---

## F — Endogenous Effective Market Center

1. **Candidate name:** Effective-market-center feedback.
2. **Mechanism:** the directional term shifts the indifferent-consumer locus away from the ordinary midpoint and locations then respond to that shifted center.
3. **Feedback:** location -> effective center -> market shares -> location.
4. **Margins:** locations and prices.
5. **Players:** two firms.
6. **Timing:** location-price.
7. **Primitive:** directional friction.
8. **Directional component:** asymmetric generalized travel cost.
9. **Threat:** asymmetric consumer distributions, vertical differentiation and asymmetric schedule-delay models already shift market boundaries and equilibrium locations.
10. **Proposition:** fixed-point center shifts with theta.
11. **Non-mechanical?** weak: much of the shift is directly embedded in generalized cost.
12. **Welfare:** standard allocation effect.
13. **Institution:** schedule center / service catchment.
14. **Tractability:** high.
15. **Referee attack:** “this is a demand-intercept / effective-quality shift.”

**Decision: KILL under mechanical-result test.**

---

## G — Directional Captive-Market Creation

1. **Candidate name:** Soft directional captive-market creation.
2. **Mechanism:** location might endogenously create a segment with weak cross-firm substitution.
3. **Feedback:** location -> directional substitution cost -> quasi-captive demand -> price -> location.
4. **Margins:** location, price.
5. **Players:** two firms.
6. **Timing:** location-price.
7. **Primitive:** one-sided friction.
8. **Directional component:** consumer-specific movement direction.
9. **Threat:** hard unidirectional models literally generate one-direction purchase sets; standard spatial/switching-cost models generate locally captive demand.
10. **Proposition:** firm differentiates to create protected demand rather than only to soften competition.
11. **Non-mechanical?** difficult to separate from ordinary transportation-based market power.
12. **Welfare:** possible market-power distortion.
13. **Institution:** one-way streets/schedules.
14. **Tractability:** moderate.
15. **Referee attack:** “captive demand is what transportation costs already do.”

**Decision: KILL.**

---

## H — Competition-Softening versus Directional-Exposure Trade-off

1. **Candidate name:** Directional exposure places an upper private value on separation.
2. **Mechanism:** moving farther from a rival softens competition but can simultaneously increase the right firm’s directional exposure.
3. **Feedback:** separation -> softer price competition (+) / higher directional burden on marginal customers (-) -> profit -> location.
4. **Margins:** follower location and downstream prices.
5. **Players:** two firms.
6. **Timing:** sequential locations -> prices.
7. **Primitive:** one-sided soft friction.
8. **Directional component:** surcharge depends jointly on absolute firm position and consumer side.
9. **Threat:** asymmetric transport-cost scheduling already generates interior/asymmetric locations; Ago and recent differentiation papers show interior differentiation from modified utility primitives.
10. **Proposition:** an interior follower location is generated by an economically decomposable two-channel trade-off, not interval boundaries.
11. **Non-mechanical?** yes at the channel level, but the resulting “interior differentiation” outcome is not new by itself.
12. **Welfare:** private separation can differ from transport-efficient separation.
13. **Institution:** schedules/sites where being farther “downstream” both differentiates and raises access burden.
14. **Tractability:** moderate locally, high globally.
15. **Referee attack:** “known interior/asymmetric differentiation under asymmetric travel costs.”

**Preflight:** the local M-regime follower profit has a quadratic stationary condition and can admit an interior local maximum. The corresponding right-side maximizer decreases with theta, consistent with the exposure channel. But this is not enough to distinguish the full game from existing asymmetric-transport location models.

**Decision: TOP 3; no Stage-4 promotion.**

---

## I — Finite Soft Friction versus Hard Directional Limit

1. **Candidate name:** Finite-soft-friction-only phenomenon.
2. **Mechanism:** finite but large directional cost might preserve substitution that disappears under a hard constraint.
3. **Feedback:** finite substitution -> price response -> location.
4. **Margins:** price/location.
5. **Players:** two firms.
6. **Timing:** location-price.
7. **Primitive:** finite theta.
8. **Directional component:** soft rather than infinite directional cost.
9. **Threat:** Kharbach, Colombo, Ebina-Shimizu, Cancian and Lai define the hard side; interpolation alone is not a contribution.
10. **Proposition:** a finite-theta equilibrium phenomenon disappears at both theta=0 and the hard limit.
11. **Non-mechanical?** possible but no concrete phenomenon survived preflight.
12. **Welfare:** secondary.
13. **Institution:** finite inconvenience versus prohibition.
14. **Tractability:** high risk in the large-theta limit.
15. **Referee attack:** “smooth approximation of a known hard constraint.”

**Decision: KILL — no independent interaction identified.**

---

## J — Welfare Reversal from Endogenous Relocation

1. **Candidate name:** Welfare-sign reversal through relocation.
2. **Mechanism:** a lower directional burden can induce private relocation that offsets direct travel-cost gains.
3. **Feedback:** theta -> private location -> prices/allocation -> real travel cost -> welfare.
4. **Margins:** locations and prices.
5. **Players:** firms, consumers; no government required.
6. **Timing:** private game only.
7. **Primitive:** directional friction.
8. **Directional component:** asymmetry in real travel burden.
9. **Threat:** Cohen–Heifetz already obtain surprising welfare effects through endogenous relocation under asymmetry; van der Weijde et al. explicitly analyze welfare with asymmetric schedule-delay costs; Karavidas studies asymmetric transport costs and welfare through firm delocation in a different spatial setting.
10. **Proposition:** equilibrium welfare derivative has opposite sign from the direct friction effect.
11. **Non-mechanical?** only if an independently novel location mechanism survives first.
12. **Welfare:** headline by construction.
13. **Institution:** infrastructure/access.
14. **Tractability:** high after full SPNE solution.
15. **Referee attack:** “welfare follows mechanically from a known relocation response.”

**Decision: KILL as an independent route.**

---

## Stage 3S conclusion

The most promising algebraic novelty is E/H: the one-sided term creates a real two-channel effect whereby separation always raises the left firm’s local price candidate but can lower the right firm’s local price candidate, and the right-side follower faces an exposure-versus-differentiation trade-off. However, this is not enough to support a new paper architecture under the workflow standard because:

1. asymmetric transport-cost Hotelling/scheduling models already endogenize asymmetric location and price effects;
2. directional-location papers already cover mover advantages and rich asymmetric location configurations;
3. the genuinely sharper strategic-relation reversal candidate D fails its own minimal algebra preflight;
4. promoting E alone would reduce the contribution to a sign comparative static, explicitly disallowed by Stage 3/4 success criteria;
5. turning E/H into a full location theorem would require substantial global price-game work without a sufficiently clean prior-art gap.

Final Stage 3S verdict: **NO-GO — GENUINE DIRECTIONAL FRICTION ROUTE EXHAUSTED as a standalone theory-paper primitive.**
