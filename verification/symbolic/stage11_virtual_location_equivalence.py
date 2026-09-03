import sympy as sp

r, theta, x = sp.symbols('r theta x', positive=True, real=True)
z = r + theta/2
s = theta**2/4
v = theta**2/8  # Cohen-Heifetz quality parameter: quality gap = 2v = s

# Directional access cost to R on the equilibrium-support branch x<r.
tau_R = (r-x)**2 + theta*(r-x)
virtual_cost = (z-x)**2 - s
assert sp.simplify(tau_R - virtual_cost) == 0

# Frozen Stage-8 price pair.
pL = (r**2 + theta*r + 2*r + theta)/3
pR = (4*r - r**2 + 2*theta - theta*r)/3

# Cohen-Heifetz (2024), Eqs. (8)-(9), specialized to t=1, l1=0, l2=z.
# Seller 2 has quality V0+v and seller 1 V0-v, so the quality gap is 2v=s.
p1_CH = sp.Rational(2,3) * (z*(1 + z/2) - v)
p2_CH = sp.Rational(2,3) * (z*(2 - z/2) + v)
assert sp.simplify(pL - p1_CH) == 0
assert sp.simplify(pR - p2_CH) == 0

# The frozen comparative static is therefore the standard location derivative
# of the transformed quadratic-Hotelling price subgame with v fixed.
assert sp.simplify(sp.diff(pL, r) - (2*z + 2)/3) == 0
assert sp.simplify(sp.diff(pR, r) - (4 - 2*z)/3) == 0

# The claimed reversal threshold is exactly the virtual-location threshold z>2.
assert sp.simplify((theta - (4-2*r)) - 2*(z-2)) == 0

# Lambertini (1994) unconstrained quadratic Hotelling price subgame,
# specialized to firm 1 at 0 and firm 2 at z, t=1.
p1_L = z*(z+2)/3
p2_L = z*(4-z)/3
assert sp.simplify(sp.diff(p1_L, z) - 2*(z+1)/3) == 0
assert sp.simplify(sp.diff(p2_L, z) - (4-2*z)/3) == 0

print('PASS: Stage 11 virtual-location / prior-art absorption equivalence')
