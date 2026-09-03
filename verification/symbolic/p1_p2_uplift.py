import sympy as sp

r, theta = sp.symbols('r theta', positive=True, real=True)

B = 4*r - r**2 + 2*theta - theta*r
h = 2*r + theta
pR = B/3
DR = B/(3*h)
piR = B**2/(9*h)

C = 3*r**2 + (3*theta - 4)*r + theta**2 - 2*theta
r_plus = (4 - 3*theta + sp.sqrt(16 - 3*theta**2))/6
r_frontier = (4-theta)/2

# Core identities
assert sp.simplify(sp.diff(pR, r) - (4-2*r-theta)/3) == 0
assert sp.simplify(sp.diff(DR, r) + (2*r**2 + 2*r*theta + theta**2)/(3*h**2)) == 0

expected_dpi = 2*(r**2+r*theta-4*r-2*theta)*C/(9*h**2)
assert sp.simplify(sp.diff(piR, r) - expected_dpi) == 0
assert sp.simplify(r**2+r*theta-4*r-2*theta + B) == 0

# P1: stationary point stays before price-reversal frontier
expected_gap = sp.Rational(4,3) - sp.sqrt(16-3*theta**2)/6
assert sp.simplify(r_frontier-r_plus-expected_gap) == 0

# At the frontier, C is strictly positive
assert sp.simplify(C.subs(r, r_frontier) - (theta**2+16)/4) == 0

# P2: own-price derivative at the interior stationary point remains positive
expected_dp_at_rplus = (8-sp.sqrt(16-3*theta**2))/9
assert sp.simplify(sp.diff(pR,r).subs(r,r_plus)-expected_dp_at_rplus) == 0

# Endpoint/interior transition theta_L solves r_plus=1
theta_L = (sp.sqrt(5)-1)/2
assert sp.simplify(r_plus.subs(theta, theta_L)-1) == 0

# Global-price validity intersection along r_plus
G = 10*r**2 + r*theta - 4*r - 2*theta
resultant = sp.factor(sp.resultant(C, G, r))
assert resultant == theta**2*(73*theta**2 - 252*theta + 196)

theta_G = (sp.Integer(126)-28*sp.sqrt(2))/73
assert sp.simplify(73*theta_G**2 - 252*theta_G + 196) == 0

print('PASS: P1/P2 symbolic uplift checks')
print('theta_L =', sp.simplify(theta_L), float(theta_L))
print('theta_G =', sp.simplify(theta_G), float(theta_G))
print('frontier gap lower bound = 2/3 on the real-root domain')