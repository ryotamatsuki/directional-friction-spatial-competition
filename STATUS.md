# Project Status

Last updated: 2026-09-04

## Current state

**Stage 5U — Minimum-Service-Floor Mechanism Hardening**

Scientific verdict: `GO TO NOVELTY RE-KILL`

Stage 4U diagnosed a single blocker: without a minimum service obligation, demand-responsive fixed-fleet transit allocation generated fulfilled-expectations multiplicity and profitable branch-jump price deviations. Stage 5U changed exactly one primitive by imposing a positive minimum frequency in each direction.

## Hardened model

Two endpoint retailers compete in prices. A third-party transit operator allocates a fixed total frequency `F` across directions in response to total passenger demand. Urban/left travel has exogenous background demand `M`; shopping demand is endogenous.

The only new Stage-5 primitive is

\[
f_L\ge \underline f,\qquad f_R\ge \underline f,
\qquad 0<\underline f<F/2.
\]

Let `q=underline f/F`. The operator's unconstrained left-service share is

\[
s^u(x,M)=\frac{\sqrt{M+x}}{\sqrt{M+x}+\sqrt{1-x}},
\]

and the hardened share is

\[
s_q=\min\{1-q,\max\{q,s^u\}\}.
\]

Thus

\[
f_L=Fs_q,\qquad f_R=F(1-s_q).
\]

No retailer location, subsidy, retailer-funded transport, congestion, online channel or extra heterogeneity has been added.

## Exact global-Nash witness

Normalize `t=F=1`, `c=0` and take

\[
M=\frac23,
\qquad
q=\frac13,
\qquad
x^*=\frac{23}{40},
\]

\[
\frac{w}{Ft}
=\frac{22797\sqrt{7599}}{7364680}
\approx0.26983734.
\]

For these primitives:

- the left service floor never binds on `[0,1]`;
- the right service floor binds only for `x>=2/3`;
- at equilibrium the left service share is approximately `0.630895`, so both floors are strictly slack.

## PASS — global shopper continuation

The fulfilled-expectations demand equation is strictly increasing in `x` for every price pair.

On the endogenous-frequency region,

\[
G_x\ge
\frac{47133952-341955\sqrt{7599}}{23566976}
\approx0.7351375>0,
\]

and when the floor binds, `G_x=2`.

Therefore the Stage-4 shopper/operator multiplicity is removed and the continuation is globally single-valued.

## PASS — global pure-strategy retail-price Nash

The exact equilibrium prices are

\[
p_L^*=\frac{2164691}{3682340},
\qquad
p_R^*=\frac{1599989}{3682340}.
\]

Exact root isolation plus boundary/floor-region comparisons show that both firms' global unilateral price-deviation problems are maximized at `x*=23/40`.

Exact profits are

\[
\pi_L^*=\frac{49787893}{147293600},
\qquad
\pi_R^*=\frac{27199813}{147293600}.
\]

## PASS — strategic asymmetry survives

Because the minimum-frequency floor is slack at equilibrium, the original interior mechanism remains unchanged there.

The exact price best-response slopes are

\[
\frac{dBR_L}{dp_R}
=-\frac{65891639}{172506722}<0,
\]

\[
\frac{dBR_R}{dp_L}
=\frac{27253433}{41276866}>0.
\]

Thus one retailer treats the rival price as a strategic substitute while the other treats it as a strategic complement at a **global** price Nash equilibrium.

## PASS — non-mechanical hardening

The minimum service rule does not produce the headline sign pattern directly. It is strictly slack at equilibrium and only truncates sufficiently extreme off-equilibrium frequency reallocations. The directional background-demand × retail-responsive fixed-fleet curvature channel remains the source of strategic asymmetry.

## Open-set robustness

All decisive inequalities are strict at the exact witness. A deterministic neighborhood audit with `q=1/3`, `M in [0.60,0.74]`, and candidate shares `x in [0.565,0.585]` found:

- 595 local strategic-asymmetry candidates satisfying local equilibrium, SOC and floor-slack requirements;
- 444 of those also passing global continuation and global price-deviation checks.

This supports a nonempty open global-equilibrium region.

## New closest-literature threats

- minimum-frequency/headway constraints and fleet constraints are standard in transit network design and regulation;
- Mohring demand-frequency feedback is classic;
- Bar-Yosef, Martens & Benenson (2013) explicitly model vicious/virtuous bus demand-frequency cycles with multiple equilibria;
- strategic asymmetry is known from Tombak (2006);
- Hotelling network-externality models may absorb the reduced-form curvature mechanism.

Therefore Stage 5 does **not** claim novelty for the service floor or for transit tipping. The surviving candidate contribution is the downstream retail-pricing interaction.

## Surviving proposition package

- **P1 Global continuation hardening:** a minimum service obligation can eliminate zero-service/tipping multiplicity while leaving frequency demand-responsive around equilibrium.
- **P2 Global directional strategic asymmetry:** the hardened model admits a nonempty open set of global pure retail-price Nash equilibria with `BR_L'<0<BR_R'`.
- **P3 Non-mechanical floor:** the service floor is slack at equilibrium in the surviving region and regularizes only extreme deviations.
- **P4 Nested interaction:** the sign-asymmetry channel disappears when either directional background demand or retail-responsive frequency is removed in the minimum benchmarks.

## Gate status

- [x] Stage 3U mechanism search — CONDITIONAL GO
- [x] Stage 4U minimal-model gate — CONDITIONAL GO
- [x] Stage 5U single authorized modification
- [x] revised operator solution
- [x] global shopper-continuation proof for exact witness
- [x] global retail-price deviation proof for exact witness
- [x] strategic-asymmetry survival
- [x] non-mechanical floor check
- [x] deterministic neighborhood audit
- [x] minimum-frequency / transit-feedback literature check
- [ ] Stage 6 proposition-level novelty re-kill
- [ ] welfare — blocked until novelty survives
- [ ] endogenous retailer location — blocked
- [ ] policy extension — blocked

## Canonical Stage 5U files

- `analysis/STAGE_5U_MINIMUM_SERVICE_HARDENING.md`
- `verification/symbolic/stage5u_minimum_service_floor.py`
- `verification/numerical/stage5u_neighborhood_audit.py`
- `reviews/STAGE_5U_HARDENING_GATE_2026-09-04.md`

## Next action

Proceed to **Stage 6 — Proposition-Level Novelty Re-Kill** using the actual hardened propositions P1–P4.

Do not add new model ingredients before that gate.