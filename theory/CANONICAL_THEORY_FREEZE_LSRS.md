# Canonical Theory Freeze — LSRS

Freeze date: 2026-09-03
Target journal: Letters in Spatial and Resource Sciences
Workflow: `research-paper-workflow` v1.1, release `488e5ab06c207909296a7564eaf9066f7f94319c`
Freeze parent: `772e4b3c6a09b3472f4374b193977f45b110e757`
Freeze identifier: `LSRS-THEORY-FREEZE-2026-09-03`

## 1. Research question

How does equilibrium price competition respond to greater spatial separation when consumers face a one-sided directional access cost?

The paper isolates this price effect by holding locations fixed and solving the price subgame globally. It does not characterize optimal locations.

## 2. Frozen title

**Directional Access Friction and the Price Effect of Spatial Separation**

This title is preferred to broader 'spatial differentiation' wording because the theorem varies one firm's location holding the rival fixed and does not claim a general differentiation principle.

## 3. Contribution statement

One-sided directional access friction can reverse the usual competition-softening price effect of greater horizontal separation for the directionally exposed firm: moving that firm farther from a fixed rival can lower its own equilibrium mill price while raising the rival's price.

The claim is limited to the stated model and open parameter region.

## 4. Players, timing, information

- Consumers: continuum, uniformly distributed on `[0,1]`.
- Firm L: fixed at location `0`.
- Firm R: fixed at location `r in (0,1)`.
- Both firms have common marginal cost `c`.
- Consumers observe locations and prices.
- Firms simultaneously choose uniform mill prices.
- Consumers then buy exactly one unit from one of the two firms.

There is no location stage and no outside option.

## 5. Utility / access cost

A consumer at `x` buying from a firm at `y` bears

\[
\tau(x,y;\theta)=(x-y)^2+\theta(y-x)_+,\qquad \theta\ge0.
\]

Common gross utility cancels from choice and is normalized away. Covered demand is a primitive: every consumer buys one unit from one of the firms. No reservation-value bound is part of the model.

## 6. Allocation

With `q=p_R-p_L`, the utility difference `u_L-u_R` is

\[
\Delta(x)=
\begin{cases}
q+r^2+\theta r-(2r+\theta)x,&0\le x\le r,\\
q+r^2-2rx,&r\le x\le1.
\end{cases}
\]

It is continuous and strictly decreasing, yielding a single cutoff. The price difference inducing cutoff `x` is

\[
q(x)=
\begin{cases}
(2r+\theta)x-r^2-\theta r,&0\le x\le r,\\
2rx-r^2,&r\le x\le1.
\end{cases}
\]

## 7. Equilibrium concept

Pure-strategy Nash equilibrium of the simultaneous uniform-price game, with every unilateral price deviation audited through its induced cutoff.

## 8. Baseline equilibrium objects

Define

\[
h=2r+\theta,\qquad C=r^2+\theta r.
\]

The frozen middle-sharing price pair is

\[
p_L^*-c=\frac{C+h}{3}
=\frac{r^2+\theta r+2r+\theta}{3},
\]

\[
p_R^*-c=\frac{2h-C}{3}
=\frac{4r-r^2+2\theta-\theta r}{3},
\]

with indifferent consumer

\[
x^*=\frac{C+h}{3h}.
\]

## 9. Global-equilibrium sufficient region

For

\[
r>\frac12,
\qquad
\theta<\frac{2r(5r-2)}{2-r},
\]

the displayed price pair is a strict global pure-strategy Nash equilibrium.

The proof uses strict concavity within each cutoff regime, `x^*<r`, the downward derivative jump for firm R at `x=r`, and the condition

\[
10r^2+r\theta-4r-2\theta>0
\]

for firm L's outer-regime derivative to be negative at the kink.

### Uniqueness scope

Each firm's equilibrium price is its unique global best response to the rival's displayed equilibrium price. The paper does **not** claim uniqueness of Nash equilibrium across every possible price regime.

## 10. Main proposition

Let

\[
\bar r=\frac{\sqrt{17}-1}{4}.
\]

For

\[
r\in(\bar r,1),
\qquad
4-2r<\theta<\frac{2r(5r-2)}{2-r},
\]

the displayed price pair is a strict global pure-strategy Nash equilibrium and

\[
\boxed{
\frac{\partial p_L^*}{\partial r}>0,
\qquad
\frac{\partial p_R^*}{\partial r}<0.
}
\]

Proof status: `PROVED` on the stated sufficient region.

## 11. Price derivatives

\[
\frac{\partial p_L^*}{\partial r}=\frac{2r+2+\theta}{3}>0,
\]

\[
\frac{\partial p_R^*}{\partial r}=\frac{4-2r-\theta}{3}.
\]

The right firm's own price response becomes negative when `theta>4-2r`.

## 12. Standard Hotelling benchmark

At `theta=0`,

\[
p_L^*-c=\frac{r(r+2)}3,
\qquad
p_R^*-c=\frac{r(4-r)}3,
\]

and both price derivatives with respect to `r` are positive for `r in (0,1)`.

Proof status: `PROVED`.

## 13. Exact witness

At

\[
r=4/5,\qquad \theta=5/2,
\]

\[
x^*=337/615,
\quad p_L^*-c=337/150,
\quad p_R^*-c=139/75,
\]

\[
\partial p_L^*/\partial r=61/30,
\qquad
\partial p_R^*/\partial r=-1/30.
\]

This is a verification witness, not a separate contribution.

## 14. Frozen mechanism

Greater separation has two effects:

1. **competition-softening effect** — spatial distance relaxes direct price competition;
2. **directional-exposure effect** — moving R farther right increases the one-sided access burden borne by marginal consumers purchasing from R.

For R, directional exposure can dominate competition softening. L does not bear the same exposure and retains a positive price response.

## 15. Verification register

- single crossing: `PROVED`;
- middle-regime FOCs: `PROVED / SYMBOLICALLY VERIFIED`;
- SOCs: `PROVED / SYMBOLICALLY VERIFIED`;
- cross-kink global deviation audit: `PROVED` under sufficient region;
- zero-demand / market-capture boundaries: `COVERED BY CUTOFF AUDIT`;
- nonempty reversal interval: `PROVED / SYMBOLICALLY VERIFIED`;
- exact witness: `SYMBOLICALLY VERIFIED`;
- theta=0 recovery: `SYMBOLICALLY VERIFIED`;
- full price-equilibrium uniqueness: `NOT CLAIMED`;
- alternative functional-form robustness: `NOT PROVED / OUT OF SCOPE`.

Canonical verification scripts:

- `verification/symbolic/eb_price_reversal.py`
- `verification/symbolic/stage4r_lsrs_verify.py`

## 16. Welfare register

No welfare proposition is frozen for the manuscript.

Welfare section: `EXCLUDED`.

## 17. Approved robustness scope

No new robustness extension is approved. The only benchmark is `theta=0` recovery of standard quadratic-Hotelling price responses.

## 18. Approved interpretation

The primitive represents a generic one-sided directional access burden. The manuscript may discuss direction-dependent access/circulation as conceptual motivation but may not assert a particular empirical institution without evidence.

Approved fixed-location statement:

> We isolate the price effect of spatial separation by holding locations fixed and solving the pricing subgame globally.

## 19. Closest-paper distinction

The manuscript must acknowledge that prior work already shows:

- directional/asymmetric transport costs affect spatial competition;
- differentiation/transport costs can have nonstandard price effects;
- an asymmetry parameter can move firms' prices in opposite directions.

The surviving distinction is the same one-firm spatial displacement producing rival-up / own-down equilibrium price responses through one-sided directional exposure in a strict global price Nash equilibrium.

Ago (2023) is an LSRS quality benchmark and a broader endogenous-location paper, not an exact predecessor.

## 20. Claims explicitly not made

The manuscript does not claim novelty for:

- directional or asymmetric transport costs generally;
- unidirectional Hotelling generally;
- greater differentiation lowering price generally;
- asymmetry causing opposite price movements generally;
- optimal or endogenous locations;
- first-/second-mover advantages;
- price-equilibrium existence frontiers;
- welfare or policy effects;
- general functional-form robustness.

## 21. Manuscript scope

Target: concise LSRS Letter, approximately 7–9 printed pages and under the journal's general 10-page Letter guideline.

Preferred structure:

1. Introduction
2. Model and price equilibrium
3. Directional friction and the price effect of separation
4. Discussion and relation to literature
5. Conclusion

No standalone welfare or extensions section.

## 22. Theory change control

Any change to the primitive, timing, outside option, location endogeneity, demand, parameter restrictions, equilibrium concept, theorem statement, or novelty claim requires a theory-change record and re-running the affected gates.

No silent theory drift is permitted.

## Final verdict

**THEORY FROZEN — GO TO REPRODUCIBILITY SETUP.**
