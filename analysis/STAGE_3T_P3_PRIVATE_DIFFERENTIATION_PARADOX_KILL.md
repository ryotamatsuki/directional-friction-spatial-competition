# Stage 3T — P3 Private Differentiation Paradox Kill

Date: 2026-09-03

Base: frozen Stage 3Q EB route. This branch does not modify the frozen short-note result.

## Question

Can the directionally exposed right firm optimally choose greater differentiation even in a region where greater differentiation lowers its own equilibrium mill price?

Formally, with firm L fixed at 0 and firm R choosing `r`, can there be a valid price-equilibrium branch on which

\[
\frac{\partial p_R^*}{\partial r}<0
\]

but nevertheless

\[
\frac{\partial \pi_R^*}{\partial r}>0
\]

(or an interior location optimum inside the price-reversal region)?

## Frozen Stage-3P price equilibrium

For the middle-sharing strict global pure-price equilibrium,

\[
p_R^*-c=\frac{B}{3},
\qquad
D_R^*=\frac{B}{3(2r+\theta)},
\]

where

\[
B=4r-r^2+2\theta-\theta r.
\]

Hence

\[
\pi_R^*=\frac{B^2}{9(2r+\theta)}.
\]

The Stage-3P price-reversal condition is

\[
\frac{\partial p_R^*}{\partial r}=\frac{4-2r-\theta}{3}<0
\iff
\theta>4-2r.
\]

## Demand response

Differentiating equilibrium demand gives

\[
\frac{\partial D_R^*}{\partial r}
=-\frac{2r^2+2r\theta+\theta^2}{3(2r+\theta)^2}<0
\]

for every `r>0`, `theta>=0`.

Thus moving the right firm farther right always reduces its equilibrium demand on this branch.

## Immediate profit implication

On an active-duopoly branch, `p_R^*-c>0` and `D_R^*>0`. Therefore

\[
\frac{\partial \pi_R^*}{\partial r}
=D_R^*\frac{\partial p_R^*}{\partial r}
+(p_R^*-c)\frac{\partial D_R^*}{\partial r}.
\]

Inside the price-reversal region both terms are strictly negative. Hence

\[
\boxed{
\frac{\partial p_R^*}{\partial r}<0
\Longrightarrow
\frac{\partial \pi_R^*}{\partial r}<0
}
\]

throughout the active middle-sharing branch.

Equivalently, direct differentiation yields

\[
\frac{\partial\pi_R^*}{\partial r}
=
\frac{2(r^2+r\theta-4r-2\theta)
(3r^2+3r\theta-4r+\theta^2-2\theta)}
{9(2r+\theta)^2},
\]

and the same sign conclusion follows on the price-reversal region.

## Stronger location-stage implication

A differentiable interior location optimum for firm R cannot lie inside the Stage-3P price-reversal region. Nor can the endpoint `r=1` be optimal if the one-sided derivative from the left lies in the same price-reversal branch, because profit is then decreasing as `r` approaches 1.

Any endogenous location optimum supported by this branch must therefore lie before the own-price-reversal region or at a branch/kink not represented by the frozen E mechanism.

## Exact witness

At the Stage-3P witness

\[
r=\frac45,
\qquad
\theta=\frac52,
\]

we already have

\[
\frac{\partial p_R^*}{\partial r}=-\frac1{30}<0.
\]

The equilibrium-profit derivative is

\[
\frac{\partial\pi_R^*}{\partial r}
=-\frac{55322}{126075}<0.
\]

So the canonical EB reversal example directly rejects the proposed paradox.

## Economic interpretation

The hoped-for P3 mechanism would require a positive demand/profit channel strong enough to offset the fall in own price. The model supplies the opposite: when the right firm moves farther right, its directional exposure lowers both its equilibrium price and its equilibrium demand. The price-reversal region is therefore a region of strictly negative marginal location profit for the moving firm.

## Verdict

**NO-GO — P3 KILLED BY ALGEBRA.**

The proposed full-game-only theorem

> firms may choose greater differentiation even when differentiation lowers their own equilibrium price

is false in the minimal E×H architecture.

This negative result does not alter the frozen Stage 3Q Economics Bulletin route. P1/P2 are not tested in this file.