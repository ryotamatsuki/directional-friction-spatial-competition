# Stage 8U — Canonical Theory Freeze

Date: 2026-09-04
Workflow: `research-paper-workflow` v1.1 / `templates/STAGE_08_THEORY_FREEZE.md`
Freeze ID: `DFSC-THEORY-2026-09-04-v1`
Canonical specification commit: `9a1d42510e97513828637de75a939ec893d5c928`

## Executive verdict

# `THEORY FROZEN — GO TO REPRODUCIBILITY SETUP`

The Stage-7.5-approved transport/spatial-competition theory has been converted into a canonical, auditable specification. No inconsistency was found between the Stage 5 global-equilibrium proof, Stage 6 novelty re-kill, Stage 7 welfare/generality results, and the Stage 7.5 full-paper decision.

No new theorem, assumption, strategic variable, welfare claim, or literature position was added in Stage 8.

## Canonical frozen object

The controlling theory document is:

- `model/CANONICAL_THEORY_FREEZE.md`

The machine-readable freeze record is:

- `theory/FREEZE_MANIFEST.yaml`

If later prose, appendix algebra, code, or referee responses conflict with the canonical specification, the canonical specification controls unless formal theory change control is invoked.

## Freeze cross-check

### Research question

PASS. The frozen question is the Stage-7.5-approved question about downstream spatial price competition under third-party demand-responsive fixed-fleet transit allocation with directional background demand, plus the approved secondary question about a slack minimum-service obligation.

### Players / timing / objectives

PASS. The freeze contains exactly two endpoint retailers, shoppers, exogenous background passengers, and a third-party operator. Retailers choose prices; the operator/shopper continuation responds consistently. There is no retailer location stage.

### Operator problem

PASS. The freeze uses

\[
D_L=M+x,\qquad D_R=1-x,
\]

fixed total service `F`, minimum service share `q`, canonical waiting disutility `w/f`, and the clipped square-root allocation verified in Stage 5.

### Equilibrium concept

PASS. The frozen equilibrium is a global pure-strategy price Nash equilibrium with globally consistent operator/shopper continuation. Local FOCs alone are explicitly insufficient.

### Main theorem

PASS. T1 freezes only the verified existence/open-set theorem: a nonempty open parameter set admits a global pure price equilibrium with

\[
BR_L'<0<BR_R'.
\]

It does not claim universal existence or universal strategic asymmetry.

### Service-floor theorem

PASS. T2 freezes only the verified statement that a minimum service obligation can be slack at equilibrium yet support global equilibrium through sufficiently extreme off-equilibrium continuations. The witness-specific interval `0.324091<q<0.344228` is labeled as witness-specific, not universal.

### Nested benchmarks

PASS. Fixed frequency, no directional background demand, and retail-unresponsive frequency remain identification benchmarks and are not promoted to independent novelty claims.

### Welfare

PASS. Prices cancel as transfers; welfare is expressed in real spatial and waiting costs. The operator-envelope identity and the private/social share wedge match Stage 7. The no-floor corner first-best is not presented as a policy recommendation; the same-floor second best is the policy-relevant benchmark frozen for the paper.

### Robustness

PASS WITH CLASSIFICATION. Structural robustness to `w f^{-rho}` around `rho=1` is analytically justified by continuity of strict inequalities and the envelope structure. The specific reported witness range approximately `rho in [0.95,1.01]` remains `NUMERICALLY SUPPORTED ONLY` and may not be restated as an analytic theorem.

### Literature positioning

PASS. Broad novelty claims remain killed. The freeze retains only the Stage-6 narrow full-game distinction and transport/spatial-competition positioning.

## Proposition and proof-status register

| ID | Frozen result | Status |
|---|---|---|
| T1 | Nonempty open set of global pure price equilibria with `BR_L'<0<BR_R'` | `PROVED` |
| T2 | Slack minimum service obligation can support T1 through off-equilibrium continuation | `PROVED` for exact witness and open neighborhood |
| T3 | T1 sign pattern disappears in the three minimum nested benchmarks | `PROVED` |
| T4 | Operator-envelope identity links waiting-cost difference to marginal aggregate waiting cost | `PROVED` symbolically |
| T5a | Interior private/social share wedge `C'(x_NE)=-(2x_NE-1)C''(x_NE)` | `PROVED` |
| T5b | Witness: `x_NE=0.575`, `x_SB≈0.702378`, real-cost gain `≈0.011378` | `PROVED` for witness |
| R1a | Power waiting technology preserves the envelope structure and local mechanism around `rho=1` | `PROVED` locally |
| R1b | Conservative witness range `rho≈[0.95,1.01]` passes the numerical global audit | `NUMERICALLY SUPPORTED ONLY` |
| Old additive-wedge directional claim | destination-specific wedge represents genuine directionality | `REJECTED` |
| Exogenous `theta(y-x)_+` standalone-paper route | sufficient standalone contribution | `REJECTED` |

No main contribution is frozen as analytic when only numerical support exists.

## Parameter-restriction register

Frozen core domain:

- `t>0`;
- `F>0`;
- `w>0`;
- `M>=0`;
- `0<q<1/2`;
- common retail marginal cost `c`;
- gross shopper value high enough for the maintained full-coverage allocation.

Exact witness:

\[
t=F=1,\quad c=0,\quad M=2/3,\quad q=1/3,\quad x^*=23/40,
\]

\[
w/(Ft)=22797\sqrt{7599}/7364680.
\]

No manuscript passage may present the witness normalization as a necessary primitive restriction for the open-set theorem.

## Welfare register

Frozen total welfare is

\[
TW=v+M\bar v-c-C_q(x),
\]

with

\[
C_q(x)=\frac{t}{3}\{x^3+(1-x)^3\}
+A\left\{\frac{M+x}{s_q(x,M)}+\frac{1-x}{1-s_q(x,M)}\right\}.
\]

Approved welfare claims:

1. retail prices cancel as transfers;
2. the operator-envelope identity holds on the slack branch;
3. the decentralized equilibrium has a local private/social share wedge whenever `x_NE!=1/2` and `C''>0`;
4. at the exact witness, same-floor second best shifts more demand toward the high-background-demand side and reduces real cost;
5. the minimum-service floor is an exogenous service-availability/coverage obligation in the frozen welfare model.

Not approved:

- optimal endogenous `q`;
- equity value of coverage;
- optimal subsidy or fleet investment;
- welfare claims for endogenous retailer locations.

## Approved robustness and interpretation

Retained:

- canonical `w/f` model;
- local robustness to `w f^{-rho}` around `rho=1`;
- directional deadheading/short-turning/shuttle interpretation;
- DRT/shared-mobility fleet-repositioning interpretation;
- large destination/commercial cluster/zone interpretation.

Not frozen as established empirical mappings:

- an ordinary single retailer materially moving transit supply;
- Umeda-Minami-Kusatsu as a literal empirical application.

## Closest-paper / contribution discipline

The full paper must not claim novelty for strategic asymmetry, network effects in Hotelling, demand-frequency vicious cycles, minimum service requirements, or generic stabilization. The manuscript contribution is the verified full strategic chain involving downstream price-induced demand, third-party shared fixed-fleet reallocation, rival access effects, directional background demand, and off-path service-floor support, plus the transport-specific welfare mapping.

## Explicit exclusions

No theory development in manuscript construction may add:

- endogenous retailer location;
- subsidy design;
- retailer-funded transport;
- congestion;
- online/delivery channels;
- endogenous fleet size;
- extra consumer heterogeneity;
- equity/coverage welfare weights;
- endogenous service-floor choice;
- Umeda-Minami-Kusatsu calibration;
- old directional-friction routes.

## Change-control rule

Any substantive post-freeze theoretical change must identify the affected equations/propositions, verification, welfare, and novelty claims and reopen the earliest affected workflow stage. Notation-only cleanup may proceed without reopening if a one-to-one mapping is documented.

No silent theory drift is permitted.

## Stage 8 verdict

# `THEORY FROZEN — GO TO REPRODUCIBILITY SETUP`

Next stage: **Stage 9 — Reproducibility Setup**.

Stage 9 must organize the existing symbolic and numerical verification so an independent researcher can reproduce every frozen quantitative and theorem-supporting claim. It may not change the theory.