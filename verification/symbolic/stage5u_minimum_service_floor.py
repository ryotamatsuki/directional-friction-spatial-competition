import sympy as sp

# Stage 5U exact hardening witness
x, s = sp.symbols('x s', real=True)
M = sp.Rational(2, 3)
q = sp.Rational(1, 3)
t = sp.Integer(1)
F = sp.Integer(1)
c = sp.Integer(0)
x_star = sp.Rational(23, 40)
a = sp.Rational(22797, 7364680) * sp.sqrt(7599)  # w/(F t)

H = (1 - M - 2*x) / sp.sqrt((M + x)*(1 - x))
Hx = sp.diff(H, x)
Hxx = sp.diff(H, x, 2)
g = sp.simplify(2*t + a*Hx)
gp = sp.simplify(a*Hxx)

# Operator floor thresholds for q=1/3.
# s^u = sqrt(M+x)/(sqrt(M+x)+sqrt(1-x)).
def x_from_service_share(z):
    R = sp.simplify((z/(1-z))**2)
    return sp.simplify((R-M)/(1+R))

assert sp.simplify(x_from_service_share(q) + sp.Rational(1,3)) == 0
assert sp.simplify(x_from_service_share(1-q) - sp.Rational(2,3)) == 0

# Floor is slack at equilibrium.
s_star = sp.sqrt(M+x_star)/(sp.sqrt(M+x_star)+sp.sqrt(1-x_star))
assert sp.simplify(s_star - sp.sqrt(149)/(sp.sqrt(149)+sp.sqrt(51))) == 0
assert sp.N(s_star) > sp.Rational(1,3)
assert sp.N(s_star) < sp.Rational(2,3)

# Exact local equilibrium objects.
g_star = sp.simplify(g.subs(x, x_star))
gp_star = sp.simplify(gp.subs(x, x_star))
SL = sp.simplify(2*g_star + x_star*gp_star)
SR = sp.simplify(2*g_star - (1-x_star)*gp_star)
brL = sp.simplify((g_star + x_star*gp_star)/SL)
brR = sp.simplify((g_star - (1-x_star)*gp_star)/SR)

assert sp.simplify(g_star - sp.Rational(188234,184117)) == 0
assert sp.simplify(gp_star + sp.Rational(1058400000,466368361)) == 0
assert sp.simplify(SL - sp.Rational(345013444,466368361)) == 0
assert sp.simplify(SR - sp.Rational(82553732,27433433)) == 0
assert sp.simplify(brL + sp.Rational(65891639,172506722)) == 0
assert sp.simplify(brR - sp.Rational(27253433,41276866)) == 0
assert SL > 0 and SR > 0 and brL < 0 and brR > 0

pL = sp.simplify(x_star*g_star)
pR = sp.simplify((1-x_star)*g_star)
piL = sp.simplify(pL*x_star)
piR = sp.simplify(pR*(1-x_star))
assert sp.simplify(pL - sp.Rational(2164691,3682340)) == 0
assert sp.simplify(pR - sp.Rational(1599989,3682340)) == 0
assert sp.simplify(piL - sp.Rational(49787893,147293600)) == 0
assert sp.simplify(piR - sp.Rational(27199813,147293600)) == 0

# Global shopper-continuation monotonicity.
g_boundary = sp.simplify(g.subs(x, sp.Rational(2,3)))
assert sp.simplify(
    g_boundary - (sp.Integer(47133952)-sp.Integer(341955)*sp.sqrt(7599))/sp.Integer(23566976)
) == 0
assert sp.Integer(47133952)**2 - sp.Integer(7599)*sp.Integer(341955)**2 > 0
assert sp.N(g_boundary) > 0

# Interior operator region expressed in service-share s.
x_s = sp.simplify((s**2-M*(1-s)**2)/(s**2+(1-s)**2))
h_s = sp.simplify(1/s - 1/(1-s))

piL_s = sp.simplify(x_s*(pR-(2*x_s-1)-a*h_s))
piR_s = sp.simplify((1-x_s)*(pL+(2*x_s-1)+a*h_s))
dL = sp.factor(sp.diff(piL_s,s))
dR = sp.factor(sp.diff(piR_s,s))

# Candidate is an exact stationary point of both global deviation problems.
assert sp.simplify(dL.subs(s,s_star)) == 0
assert sp.simplify(dR.subs(s,s_star)) == 0

# Root isolation through the rational norm polynomial A^2-7599 B^2.
r = sp.sqrt(7599)
def norm_poly(expr):
    num = sp.expand(sp.together(expr).as_numer_denom()[0])
    conj = num.subs(r,-r)
    A0 = sp.expand((num+conj)/2)
    B0 = sp.expand((num-conj)/(2*r))
    return sp.Poly(sp.expand(A0**2-7599*B0**2),s)

NL = norm_poly(dL)
NR = norm_poly(dR)
intsL = sp.intervals(NL, eps=sp.Rational(1,10**8))
intsR = sp.intervals(NR, eps=sp.Rational(1,10**8))

# Exact boundary comparison for L.
h_floor = sp.Rational(-3,2)
piL_boundary = sp.simplify(sp.Rational(2,3)*(pR-sp.Rational(1,3)-a*h_floor))
diffL = sp.simplify(piL-piL_boundary)
assert sp.simplify(
    diffL - (sp.Integer(358680877)-sp.Integer(4103460)*sp.sqrt(7599))/sp.Integer(1325642400)
) == 0
assert sp.N(diffL) > 0

# R floor-region quadratic and exact candidate-vs-floor maximum gap.
xf = sp.symbols('xf', real=True)
piR_floor = sp.expand((1-xf)*(pL+(2*xf-1)+a*h_floor))
vertex_R = sp.solve(sp.diff(piR_floor,xf),xf)[0]
assert sp.N(vertex_R) > sp.Rational(2,3)
assert sp.N(vertex_R) < 1
piR_floor_max = sp.simplify(piR_floor.subs(xf,vertex_R))
diffR = sp.simplify(piR-piR_floor_max)
assert sp.N(diffR) > 0

print('Stage 5U symbolic hardening: PASS')
print('a =', a, '~', sp.N(a,12))
print('s* =', sp.N(s_star,12))
print('g boundary =', sp.N(g_boundary,12))
print('BR slopes =', brL, brR)
print('L boundary profit gap =', sp.N(diffL,12))
print('R floor-max profit gap =', sp.N(diffR,12))
print('L norm-root intervals near physical region:', [z for z in intsL if sp.N(z[0][1]) > 0.44 and sp.N(z[0][0]) < 0.67])
print('R norm-root intervals near physical region:', [z for z in intsR if sp.N(z[0][1]) > 0.44 and sp.N(z[0][0]) < 0.67])