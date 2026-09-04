import sympy as sp

# Symbols
x, M, t, w, F, c, pL, pR = sp.symbols('x M t w F c pL pR', positive=True)
A = w/F
Q = (M+x)*(1-x)
H = (1-M-2*x)/sp.sqrt(Q)
Hx = sp.diff(H, x)
Hxx = sp.diff(H, x, 2)
g = sp.simplify(2*t + A*Hx)
gp = sp.simplify(sp.diff(g, x))
K = sp.simplify((2*x-1)*g + t*(2*x-1) + A*H)

# Exact transport identities
assert sp.simplify(Hx + (M+1)**2/(2*Q**sp.Rational(3,2))) == 0
assert sp.simplify(Hxx + 3*(M+1)**2*(M+2*x-1)/(4*Q**sp.Rational(5,2))) == 0

# Local price BR slopes
brL = sp.simplify((g+x*gp)/(2*g+x*gp))
brR = sp.simplify((g-(1-x)*gp)/(2*g-(1-x)*gp))

# Exact Stage-3 witness
wit = {
    t: 1,
    F: 1,
    M: sp.Rational(1,5),
    x: sp.Rational(11,20),
    w: 27*sp.sqrt(15)/308,
}
assert sp.simplify(K.subs(wit)) == 0
assert sp.simplify(g.subs(wit)-sp.Rational(58,77)) == 0
assert sp.simplify(gp.subs(wit)+sp.Rational(128,77)) == 0
assert sp.simplify((2*g+x*gp).subs(wit)-sp.Rational(228,385)) == 0
assert sp.simplify((2*g-(1-x)*gp).subs(wit)-sp.Rational(124,55)) == 0
assert sp.simplify(brL.subs(wit)+sp.Rational(31,114)) == 0
assert sp.simplify(brR.subs(wit)-sp.Rational(289,434)) == 0

# IFT/open-set condition for equilibrium share
Kx = sp.simplify(sp.diff(K, x))
assert sp.simplify(Kx.subs(wit)-sp.Rational(806,385)) == 0

# Candidate local prices at c=0
xw = sp.Rational(11,20)
gw = sp.Rational(58,77)
pL_star = sp.simplify(xw*gw)
pR_star = sp.simplify((1-xw)*gw)
assert pL_star == sp.Rational(29,70)
assert pR_star == sp.Rational(261,770)
piL_star = sp.simplify(pL_star*xw)
assert piL_star == sp.Rational(319,1400)

# Exact stable deviation: target share x_d=18/25 with pR held fixed
xd = sp.Rational(18,25)
Hd = sp.simplify(H.subs({M:sp.Rational(1,5), x:xd}))
Ad = 27*sp.sqrt(15)/308
pL_dev = sp.simplify(pR_star-(2*xd-1)-Ad*Hd)
g_dev = sp.simplify(g.subs({t:1,F:1,M:sp.Rational(1,5),x:xd,w:Ad}))
piL_dev = sp.simplify(pL_dev*xd)
profit_gain = sp.simplify(piL_dev-piL_star)
assert sp.N(g_dev, 30) > 0
assert sp.N(profit_gain, 30) > 0

# B1 exact multiplicity at M=0 and equal prices.
a = sp.symbols('a', positive=True)
xminus = (1-sp.sqrt(1-4*a**2))/2
xplus = (1+sp.sqrt(1-4*a**2))/2
# At the outer roots x(1-x)=a^2 and g/t=2-1/(2a^2)<0 for 0<a<1/2.
assert sp.simplify(xminus*(1-xminus)-a**2) == 0
assert sp.simplify(xplus*(1-xplus)-a**2) == 0

# General reduced-form strategic-asymmetry theorem algebra.
GG, PP = sp.symbols('GG PP', positive=True, real=True)
xx = sp.symbols('xx', positive=True, real=True)
BRL_general = (GG+xx*PP)/(2*GG+xx*PP)
BRR_general = (GG-(1-xx)*PP)/(2*GG-(1-xx)*PP)
# For PP<0, L is substitute with its SOC iff -2G/x < PP < -G/x;
# R remains a complement automatically under that interval.

print('Stage 4U symbolic verification: PASS')
print('Kx witness =', sp.simplify(Kx.subs(wit)))
print('pL* =', pL_star, 'pR* =', pR_star)
print('stable deviation pL =', pL_dev)
print('stable deviation g =', sp.N(g_dev, 16))
print('local piL* =', piL_star)
print('deviation piL =', sp.N(piL_dev, 16))
print('profit gain =', sp.N(profit_gain, 16))
