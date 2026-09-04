# When Retail Demand Moves Transit Supply

Research repository for a transport-economics / spatial-competition theory paper on downstream retail pricing with demand-responsive allocation of a fixed transport-service resource.

## Current status

- Canonical workflow: `ryotamatsuki/research-paper-workflow` v1.1.
- Workflow release SHA: `488e5ab06c207909296a7564eaf9066f7f94319c`.
- Theory freeze: `DFSC-THEORY-2026-09-04-v1`.
- Current stage: **Stage 12 — Journal Positioning**.
- Verdict: **PRIMARY JOURNAL SELECTED — GO TO INTEGRATION**.
- Primary target: **Economics of Transportation**.
- Publication route: **standard subscription / non-OA; zero mandatory author fee**.

The rejected Economics Bulletin route and the later exogenous `theta(y-x)_+` exploration are archived history only. They are not the canonical theory.

## Frozen mechanism

Two endpoint retail destinations compete in prices. A third-party transport service planner reallocates a fixed effective service resource across directions in response to passenger demand. One direction has exogenous background travel demand. Retail demand therefore changes transport supply, which changes both own and rival access and feeds back into retail demand.

A minimum service obligation prevents extreme off-equilibrium service collapse while remaining slack at the headline equilibrium.

## Full manuscript

The modular LaTeX draft is in `paper/` and contains the complete paper from abstract through proof appendix. Stage 11 hardened the fulfilled-expectations continuation, full-coverage definition, exact global-deviation verification, welfare language, institutional interpretation, and closest-literature positioning without changing the frozen theory.

Quantitative manuscript tables are generated from frozen formulas rather than maintained manually.

## Frozen headline results

- a nonempty open set of global pure price equilibria with `BR_L' < 0 < BR_R'`;
- the sign asymmetry disappears in fixed-frequency, no-background-demand, and retail-unresponsive-frequency benchmarks;
- a slack minimum service floor can support the global equilibrium through off-equilibrium continuations;
- an operator-envelope identity links shopper access differences to marginal aggregate waiting cost;
- a verified private/social share wedge and same-floor constrained-efficient comparison;
- witness-specific intermediate nonbinding service-floor support band;
- local robustness to power waiting costs around `rho=1`.

See `model/CANONICAL_THEORY_FREEZE.md` for the authoritative specification.

## Zero-fee submission policy

Only journals/routes with **zero mandatory submission fee and zero mandatory publication/page charge** may be used.

Submission ladder:

1. **Economics of Transportation** — standard subscription/non-OA route;
2. **Journal of Transport Economics and Policy** — fallback, with live fee reconfirmation because of the 2026 publisher transition;
3. **Research in Transportation Economics** — safety net, standard subscription/non-OA route.

Paid open access is not selected. If a live submission system presents any mandatory fee, abort that journal and move to the next zero-fee journal.

See `reviews/STAGE_12U_JOURNAL_POSITIONING_2026-09-04.md` and `reviews/STAGE_12U_FEE_AUDIT.yaml`.

## Reproduce and build

Reference Python dependencies are pinned in `requirements.txt`.

```bash
python -m pip install -r requirements.txt
make verify
make paper
```

Or run the full gate:

```bash
make all
```

Detailed reproduction instructions are in `docs/REPRODUCIBILITY.md`.

## Repository map

- `model/`: canonical frozen theory and supporting model records.
- `theory/`: theory freeze manifest.
- `analysis/`: stage-by-stage mathematical analysis.
- `verification/`: symbolic and numerical verification assets, including the Stage-11 exact global-deviation re-audit.
- `reproducibility/`: machine-readable Stage 9 reproduction manifest.
- `literature/`: prior-art and novelty kill records.
- `reviews/`: workflow gate reports and journal-positioning/fee audit records.
- `paper/`: complete modular LaTeX manuscript source.
- `scripts/`: reproducibility runners, freeze-integrity checks, and paper-table generation.
- `.github/workflows/`: CI verification and manuscript-build gates.
- `archive/`: rejected/superseded historical routes.

## Theory change control

No silent theory drift is allowed after Stage 8. Any substantive change to primitives, equilibrium claims, welfare, robustness, or positioning must reopen the earliest affected workflow gate. Stage 13 may integrate and polish for the selected journal, but may not add theory merely to improve journal fit.

## Next route

Proceed to **Stage 13 — Integration / Submission Preparation for Economics of Transportation**.
