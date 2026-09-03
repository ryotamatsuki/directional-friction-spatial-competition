# Rejected Economics Bulletin Baseline

This directory preserves the predecessor project only for provenance, failure analysis, and referee-learning purposes.

## Previous manuscript

Title: **A Hotelling Model with Directional Transport Costs: Closed-Form Equilibrium and Thresholds**

Submission outcome: rejected by Economics Bulletin.

## Core reason the old model is not canonical here

The predecessor model attached an additive wedge `m` to purchases from one firm. Because that wedge did not depend on whether a consumer moved leftward or rightward, an external referee correctly objected that it did not model a genuine directional transport constraint/friction. Economically, the wedge is observationally similar to a firm-specific utility/quality disadvantage.

## Archival rule

The predecessor manuscript and referee reports may be cited as evidence of why the new project was restarted, but equations and propositions from the old paper must not be silently carried into the new model. Any reused result must be re-derived under the new primitive and pass the current workflow gates.

## New branch

The candidate new primitive is

\[
\tau(x,y;\theta)=(x-y)^2+\theta\max\{y-x,0\}.
\]

This ties the extra friction to movement direction rather than firm identity.
