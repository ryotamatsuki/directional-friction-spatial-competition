import sympy as sp

# Symbols
r, theta, c, x = sp.symbols('r theta c x', positive=True)
h = 2*r + theta
C = r**2 + theta*r

# Middle-regime candidate
x_star = sp.factor((C + h) / (3*h))
pL = c + (C + h) / 3
pR = c + (2*h - C) / 3

# Indifference-price maps for l=0
q_mid = h*x - C
q_right = 2*r*x - r**2

# Profits when a unilateral deviation induces cutoff x
piL_mid = sp.expand(x * (pR - c - q_mid))
piL_right = sp.expand(x * (pR - c - q_right))
piR_mid = sp.expand((1-x) * (pL - c + q_mid))
piR_right = sp.expand((1-x) * (pL - c + q_right))

# Local FOCs at x_star
assert sp.simplify(sp.diff(piL_mid, x).subs(x, x_star)) == 0
assert sp.simplify(sp.diff(piR_mid, x).subs(x, x_star)) == 0

# Strict concavity within regimes
assert sp.diff(piL_mid, x, 2) == -2*h
assert sp.diff(piR_mid, x, 2) == -2*h
assert sp.diff(piL_right, x, 2) == -4*r
assert sp.diff(piR_right, x, 2) == -4*r

# Boundary derivative governing left firm's global cross-regime deviation
left_outer_boundary_derivative = sp.factor(sp.diff(piL_right, x).subs(x, r))
expected = -sp.factor((10*r**2 + r*theta - 4*r - 2*theta)/3)
assert sp.simplify(left_outer_boundary_derivative - expected) == 0

# Middle cutoff feasibility expression: x_star < r iff this is positive
middle_slack = sp.factor(3*r*h - (C + h))
assert sp.simplify(middle_slack - (r*(5*r-2) + theta*(2*r-1))) == 0

# Price comparative statics
assert sp.simplify(sp.diff(pL, r) - (2*r + 2 + theta)/3) == 0
assert sp.simplify(sp.diff(pR, r) - (4 - 2*r - theta)/3) == 0

# Nonempty reversal interval condition
upper = sp.factor(2*r*(5*r-2)/(2-r))
lower = 4 - 2*r
interval_gap = sp.factor(upper-lower)
assert sp.simplify(interval_gap - 4*(2*r**2+r-2)/(2-r)) == 0

# Exact rational witness: r=4/5, theta=5/2
subs = {r: sp.Rational(4,5), theta: sp.Rational(5,2), c: 0}
assert sp.simplify(x_star.subs(subs) - sp.Rational(337,615)) == 0
assert sp.simplify((pL-c).subs(subs) - sp.Rational(337,150)) == 0
assert sp.simplify((pR-c).subs(subs) - sp.Rational(139,75)) == 0
assert sp.simplify(left_outer_boundary_derivative.subs(subs) + sp.Rational(1,15)) == 0
assert sp.simplify(sp.diff(pL,r).subs(subs) - sp.Rational(61,30)) == 0
assert sp.simplify(sp.diff(pR,r).subs(subs) + sp.Rational(1,30)) == 0

print('PASS: Stage 3P EB price-reversal symbolic checks')
