import sympy as sp

# Independent Stage-11 re-audit of the exact Stage-5 global Nash witness.
s = sp.symbols('s', real=True)
x = sp.symbols('x', real=True)
M = sp.Rational(2, 3)
q = sp.Rational(1, 3)
t = sp.Integer(1)
x_star = sp.Rational(23, 40)
A = sp.Rational(22797, 7364680) * sp.sqrt(7599)

H = (1 - M - 2*x) / sp.sqrt((M + x)*(1 - x))
g = sp.simplify(2*t + A*sp.diff(H, x))
g_star = sp.simplify(g.subs(x, x_star))
pL = sp.simplify(x_star*g_star)
pR = sp.simplify((1-x_star)*g_star)
piL_star = sp.simplify(pL*x_star)
piR_star = sp.simplify(pR*(1-x_star))

# Slack operator region written in service share s.
x_s = sp.simplify((s**2-M*(1-s)**2)/(s**2+(1-s)**2))
h_s = sp.simplify(1/s - 1/(1-s))
piL_s = sp.simplify(x_s*(pR-(2*x_s-1)-A*h_s))
piR_s = sp.simplify((1-x_s)*(pL+(2*x_s-1)+A*h_s))
dL = sp.factor(sp.diff(piL_s, s))
dR = sp.factor(sp.diff(piR_s, s))

# Physical slack interval is s in [s(x=0), 2/3]. We use the rational
# lower bound 449/1000 < s(x=0) and separately show no derivative root
# lies between 449/1000 and 9/20, so the root count on the physical
# interval is the same as on [449/1000,2/3].
lo = sp.Rational(449, 1000)
near_lo = sp.Rational(9, 20)
hi = sp.Rational(2, 3)

K = sp.QQ.algebraic_field(sp.sqrt(7599))
PL = sp.Poly(sp.together(dL).as_numer_denom()[0], s, domain=K)
PR = sp.Poly(sp.together(dR).as_numer_denom()[0], s, domain=K)

assert PL.count_roots(lo, near_lo) == 0
assert PR.count_roots(lo, near_lo) == 0
assert PL.count_roots(lo, hi) == 2
assert PR.count_roots(lo, hi) == 1

# Isolate the exact candidate root and the second L root.
I_star = (sp.Rational(6308, 10000), sp.Rational(6310, 10000))
I_L2 = (sp.Rational(6609, 10000), sp.Rational(6611, 10000))
assert PL.count_roots(*I_star) == 1
assert PR.count_roots(*I_star) == 1
assert PL.count_roots(*I_L2) == 1
assert PR.count_roots(*I_L2) == 0

# The common root is exactly the equilibrium service share.
s_star = sp.sqrt(M+x_star)/(sp.sqrt(M+x_star)+sp.sqrt(1-x_star))
linear_root = sp.Rational(149,98) - sp.sqrt(7599)/98
assert sp.simplify(s_star-linear_root) == 0
assert sp.simplify(dL.subs(s, s_star)) == 0
assert sp.simplify(dR.subs(s, s_star)) == 0

# Exact derivative signs classify the roots: L has max then min; R has
# only the max. Algebraic-number comparisons are exact in SymPy.
assert sp.simplify(dL.subs(s, sp.Rational(1,2))) > 0
assert sp.simplify(dL.subs(s, sp.Rational(16,25))) < 0
assert sp.simplify(dL.subs(s, sp.Rational(133,200))) > 0
assert sp.simplify(dR.subs(s, sp.Rational(1,2))) > 0
assert sp.simplify(dR.subs(s, sp.Rational(16,25))) < 0
assert sp.simplify(dR.subs(s, sp.Rational(133,200))) < 0

# Slack-region endpoints/corners do not dominate the candidate.
s0 = sp.sqrt(M)/(sp.sqrt(M)+1)
assert sp.simplify(piL_s.subs(s, s0)) == 0
assert sp.N(piL_s.subs(s, hi)) < sp.N(piL_star)
assert sp.N(piR_s.subs(s, s0)) < sp.N(piR_star)
assert sp.N(piR_s.subs(s, hi)) < sp.N(piR_star)

# Binding-floor region: h=-3/2, both deviation problems are quadratic.
xf = sp.symbols('xf', real=True)
h_floor = sp.Rational(-3, 2)
piL_floor = sp.expand(xf*(pR-(2*xf-1)-A*h_floor))
piR_floor = sp.expand((1-xf)*(pL+(2*xf-1)+A*h_floor))
vertex_L = sp.solve(sp.diff(piL_floor, xf), xf)[0]
vertex_R = sp.solve(sp.diff(piR_floor, xf), xf)[0]
assert sp.N(vertex_L) < sp.Rational(2,3)  # L decreases throughout binding region
assert sp.Rational(2,3) < sp.N(vertex_R) < 1
assert sp.N(piL_floor.subs(xf, sp.Rational(2,3))) < sp.N(piL_star)
assert sp.N(piR_floor.subs(xf, vertex_R)) < sp.N(piR_star)
assert sp.N(piL_floor.subs(xf, 1)) < sp.N(piL_star)
assert sp.simplify(piR_floor.subs(xf, 1)) == 0

print('Stage 11U exact global-deviation re-audit: PASS')
print('L derivative roots on physical slack region: exactly 2 (max at x*=23/40, then one min)')
print('R derivative roots on physical slack region: exactly 1 (max at x*=23/40)')
print('binding-region and corner comparisons: PASS')
