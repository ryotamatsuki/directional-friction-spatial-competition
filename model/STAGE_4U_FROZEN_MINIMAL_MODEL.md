# Stage 4U — Frozen Minimal Model

Date: 2026-09-04
Status: Stage-4 theory freeze for kill testing only.

## Players and timing

1. Two endpoint retailers L at 0 and R at 1 choose mill prices simultaneously.
2. A unit mass of shoppers is uniformly distributed on [0,1].
3. A third-party transit operator has fixed total frequency F and allocates it across the two travel directions in response to realized directional passenger demand.
4. Shopper choice and operator frequency must be mutually consistent (fulfilled-expectations fixed point).

No retailer location choice, policy subsidy, congestion, retailer-funded service, online channel, or extra heterogeneity is permitted in Stage 4U.

## Primitives

- common marginal cost c;
- quadratic spatial mismatch coefficient t>0;
- fixed fleet/frequency F>0;
- waiting-cost scale w>0;
- exogenous urban/left-bound background passenger demand M>=0.

If L serves shopping share x in (0,1), directional passenger demands are M+x and 1-x.

## Transit operator

For an interior shopping share x, the operator solves

\[
\min_{f_L,f_R>0} w\left(\frac{M+x}{f_L}+\frac{1-x}{f_R}\right)
\quad\text{s.t.}\quad f_L+f_R=F.
\]

The unique interior allocation is

\[
f_L=F\frac{\sqrt{M+x}}{\sqrt{M+x}+\sqrt{1-x}},
\qquad
f_R=F\frac{\sqrt{1-x}}{\sqrt{M+x}+\sqrt{1-x}}.
\]

## Shopper fixed point

Let A=w/F and

\[
H(x,M)=\frac{1-M-2x}{\sqrt{(M+x)(1-x)}}.
\]

The marginal shopper / market-share condition is

\[
G(x;p_L,p_R,M)=p_L-p_R+t(2x-1)+A H(x,M)=0.
\]

Define

\[
g(x,M)=G_x=2t+A H_x.
\]

The natural demand-frequency adjustment map is

\[
T(z)=\frac12-\frac{p_L-p_R+A H(z,M)}{2t}.
\]

A fixed point is locally stable under this iteration iff

\[
|T'(x)|<1 \iff g(x,M)>0.
\]

Stage 4U distinguishes a fulfilled-expectations fixed point from a locally stable fixed point; it does not silently assume uniqueness.

## Retail profits

\[
\pi_L=(p_L-c)x,\qquad \pi_R=(p_R-c)(1-x).
\]

On a differentiable stable branch, local price FOCs are

\[
p_L-c=xg,\qquad p_R-c=(1-x)g.
\]

The equilibrium-share equation implied by the two FOCs and shopper indifference is

\[
K(x,M)=(2x-1)g+t(2x-1)+A H(x,M)=0.
\]

This file freezes the model only; results and verdict are in `analysis/STAGE_4U_MINIMAL_MODEL_GATE.md`.