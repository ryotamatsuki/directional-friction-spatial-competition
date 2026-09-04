import sympy as sp

# Symbols
x, M, t, w, F = sp.symbols('x M t w F', positive=True)
A = w / F

# Operator frequency allocation
fL = F * sp.sqrt(M + x) / (sp.sqrt(M + x) + sp.sqrt(1 - x))
fR = F * sp.sqrt(1 - x) / (sp.sqrt(M + x) + sp.sqrt(1 - x))

H = (1 - M - 2*x) / sp.sqrt((M + x)*(1 - x))

# Waiting-cost difference identity
assert sp.simplify(w/fL - w/fR - A*H) == 0

# Exact derivatives
Hx_target = -(M + 1)**2 / (2*((M + x)*(1 - x))**sp.Rational(3, 2))
HM_target = -(M + 1) / (2*sp.sqrt(1 - x)*(M + x)**sp.Rational(3, 2))
Hxx_target = -3*(M + 1)**2*(M + 2*x - 1) / (
    4*(1 - x)**sp.Rational(5, 2)*(M + x)**sp.Rational(5, 2)
)

assert sp.simplify(sp.diff(H, x) - Hx_target) == 0
assert sp.simplify(sp.diff(H, M) - HM_target) == 0
assert sp.simplify(sp.diff(H, x, 2) - Hxx_target) == 0

# Shopper-demand slope and symmetric benchmark
g = sp.simplify(2*t + A*sp.diff(H, x))
gprime = sp.simplify(sp.diff(g, x))

sym = {M: 0, x: sp.Rational(1, 2)}
assert sp.simplify(g.subs(sym) - (2*t - 4*w/F)) == 0
assert sp.simplify(gprime.subs(sym)) == 0

markup_sym = sp.simplify(sp.Rational(1, 2)*g.subs(sym))
assert sp.simplify(markup_sym - (t - 2*w/F)) == 0

# Equilibrium-share equation after retail price FOCs
K = sp.simplify((2*x - 1)*g + t*(2*x - 1) + A*H)

# Local response to background urban-bound demand at the symmetric point
Kx0 = sp.simplify(sp.diff(K, x).subs(sym))
KM0 = sp.simplify(sp.diff(K, M).subs(sym))
dx_dM_0 = sp.simplify(-KM0/Kx0)
assert sp.simplify(dx_dM_0 - w/(3*(F*t - 2*w))) == 0

# Equilibrium price difference is (2x-1)g
pdiff = sp.simplify((2*x - 1)*g)
dpdiff_dM_0 = sp.simplify(
    (sp.diff(pdiff, M) + sp.diff(pdiff, x)*dx_dM_0).subs(sym)
)
assert sp.simplify(dpdiff_dM_0 - 4*w/(3*F)) == 0

# Best-response slopes at a local price equilibrium
brL = sp.simplify((g + x*gprime)/(2*g + x*gprime))
brR = sp.simplify((g - (1-x)*gprime)/(2*g - (1-x)*gprime))

# Exact nonempty-region witness for directional strategic asymmetry
witness = {
    t: 1,
    F: 1,
    M: sp.Rational(1, 5),
    x: sp.Rational(11, 20),
    w: 27*sp.sqrt(15)/308,
}

assert sp.simplify(K.subs(witness)) == 0
assert sp.simplify(g.subs(witness) - sp.Rational(58, 77)) == 0
assert sp.simplify(gprime.subs(witness) + sp.Rational(128, 77)) == 0

# L: cross-price numerator negative, own-price SOC denominator positive
assert sp.simplify((g + x*gprime).subs(witness) + sp.Rational(62, 385)) == 0
assert sp.simplify((2*g + x*gprime).subs(witness) - sp.Rational(228, 385)) == 0
assert sp.simplify(brL.subs(witness) + sp.Rational(31, 114)) == 0

# R: own-price SOC denominator positive, BR slope positive
assert sp.simplify((2*g - (1-x)*gprime).subs(witness) - sp.Rational(124, 55)) == 0
assert sp.simplify(brR.subs(witness) - sp.Rational(289, 434)) == 0

print('Stage 3U symbolic preflight: PASS')
print('symmetric markup =', markup_sym)
print('dx*/dM at M=0 =', dx_dM_0)
print('d(pL-pR)/dM at M=0 =', dpdiff_dM_0)
print('witness BR_L slope =', sp.simplify(brL.subs(witness)))
print('witness BR_R slope =', sp.simplify(brR.subs(witness)))
