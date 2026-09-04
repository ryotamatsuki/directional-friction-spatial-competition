# When Retail Demand Moves Transit Supply

Research repository for a transport-economics / spatial-competition theory paper on downstream retail pricing with demand-responsive allocation of a fixed transit fleet.

## Current status

- Canonical workflow: `ryotamatsuki/research-paper-workflow` v1.1.
- Workflow release SHA: `488e5ab06c207909296a7564eaf9066f7f94319c`.
- Theory freeze: `DFSC-THEORY-2026-09-04-v1`.
- Current stage: **Stage 9 — Reproducibility Setup**.
- Primary target at freeze: **Economics of Transportation**.

The rejected Economics Bulletin route and the later exogenous `theta(y-x)_+` exploration are archived history only. They are not the canonical theory.

## Frozen mechanism

Two endpoint retail destinations compete in prices. A third-party transport operator reallocates a fixed total service resource across directions in response to passenger demand. One direction has exogenous background travel demand. Retail demand therefore changes transport supply, which changes both own and rival access and feeds back into retail demand.

A minimum service obligation prevents extreme off-equilibrium service collapse while remaining slack at the headline equilibrium.

## Frozen headline results

- a nonempty open set of global pure price equilibria with `BR_L' < 0 < BR_R'`;
- the sign asymmetry disappears in fixed-frequency, no-background-demand, and retail-unresponsive-frequency benchmarks;
- a slack minimum service floor can support the global equilibrium through off-equilibrium continuations;
- an operator-envelope identity links shopper access differences to marginal aggregate waiting cost;
- a verified private/social share wedge and same-floor second-best comparison;
- witness-specific intermediate nonbinding service-floor support band;
- local robustness to power waiting costs around `rho=1`.

See `model/CANONICAL_THEORY_FREEZE.md` for the authoritative specification.

## Reproduce

Reference Python dependencies are pinned in `requirements.txt`.

```bash
python -m pip install -r requirements.txt
make verify
make paper
```

Or run the full local-equivalent gate:

```bash
make all
```

Detailed instructions and expected outputs are in `docs/REPRODUCIBILITY.md`.

## Repository map

- `model/`: canonical frozen theory and supporting model records.
- `theory/`: theory freeze manifest.
- `analysis/`: stage-by-stage mathematical analysis.
- `verification/`: symbolic and numerical verification assets.
- `reproducibility/`: machine-readable Stage 9 reproduction manifest.
- `literature/`: prior-art and novelty kill records.
- `reviews/`: workflow gate reports.
- `paper/`: modular LaTeX scaffold for Stage 10.
- `scripts/`: reproducibility runners and freeze-integrity checks.
- `.github/workflows/`: CI gates.
- `archive/`: rejected/superseded historical routes.

## Theory change control

No silent theory drift is allowed after Stage 8. Any substantive change to primitives, equilibrium claims, welfare, robustness, or positioning must reopen the earliest affected workflow gate. Stage 9 and later stages may only implement and write against the frozen theory unless change control is invoked explicitly.
