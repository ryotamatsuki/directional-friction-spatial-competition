# Directional Friction and Spatial Competition

Research repository for a theory project on genuine direction-dependent access frictions in spatial competition.

## Current publication route

- Target journal: **Letters in Spatial and Resource Sciences (LSRS)**.
- Canonical workflow: `ryotamatsuki/research-paper-workflow` v1.1.
- Workflow release SHA: `488e5ab06c207909296a7564eaf9066f7f94319c`.
- Canonical theory freeze: Stage 8 LSRS route.
- Current manuscript stage: Stage 10 LSRS paper build.
- Fallback journal: Economics Bulletin.
- The earlier rejected Economics Bulletin manuscript is archive/provenance only and is not canonical theory.

## Frozen research question

How can a soft one-sided directional access cost change the equilibrium price effect of exogenous spatial separation in a covered Hotelling duopoly?

Canonical primitive:

\[
\tau(x,y;\theta)=(x-y)^2+\theta\max\{y-x,0\},\qquad \theta\ge0.
\]

The left firm is fixed at `0`, the right firm at `r`, and firms choose uniform mill prices simultaneously. Locations are exogenous by design; the paper isolates the global pricing consequence of spatial separation.

## Frozen main result

On a nonempty open parameter region, the displayed price pair is a strict global pure-strategy Nash equilibrium and

\[
\frac{\partial p_L^*}{\partial r}>0,
\qquad
\frac{\partial p_R^*}{\partial r}<0.
\]

Thus moving the directionally exposed right firm farther from a fixed rival can lower its own equilibrium price while raising the rival's price. At `theta=0`, both price derivatives are positive.

## Production manuscript

- anonymous manuscript: `paper/main.tex`
- modular sections: `paper/sections/`
- title-page/metadata worksheet: `paper/titlepage/titlepage.tex`
- bibliography: `references/references.bib`
- symbolic verification: `verification/symbolic/`
- submission checklist: `docs/LSRS_SUBMISSION_CHECKLIST.md`
- contribution ledger: `docs/CONTRIBUTION_CLAIM_LEDGER.md`
- referee-risk ledger: `docs/REFEREE_RISK_LEDGER.md`
- cover-letter draft: `submission/COVER_LETTER_DRAFT.md`

## Reproducibility

```bash
make verify
make paper
make all
```

`make verify` runs the frozen symbolic checks. `make paper` compiles the anonymous manuscript. The current local-equivalent Stage 10 build produced a 7-page PDF with a 171-word abstract and no unresolved citations or cross-references.

## Scope lock

Do not add endogenous location, welfare, policy, entry, capacity, quality, reservation prices, elastic demand, dynamics, or general functional-form robustness merely to enlarge the Letter. Any substantive theory change requires reopening the canonical workflow.
