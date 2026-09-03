import sympy as sp

r, theta = sp.symbols('r theta', positive=True, real=True)
B = 4*r - r**2 + 2*theta - theta*r
h = 2*r + theta

pR_margin = sp.simplify(B/3)
DR = sp.simplify(B/(3*h))
piR = sp.simplify(B**2/(9*h))

dpR = sp.factor(sp.diff(pR_margin, r))
dDR = sp.factor(sp.diff(DR, r))
dpiR = sp.factor(sp.diff(piR, r))

assert sp.simplify(dpR - (4 - 2*r - theta)/3) == 0
assert sp.simplify(dDR + (2*r**2 + 2*r*theta + theta**2)/(3*h**2)) == 0

product_rule = sp.simplify(DR*dpR + pR_margin*dDR)
assert sp.simplify(product_rule - sp.diff(piR, r)) == 0

expected_dpi = (
    2*(r**2 + r*theta - 4*r - 2*theta)
    *(3*r**2 + 3*r*theta - 4*r + theta**2 - 2*theta)
    /(9*h**2)
)
assert sp.simplify(dpiR - expected_dpi) == 0

# Exact Stage-3P witness
witness = {r: sp.Rational(4, 5), theta: sp.Rational(5, 2)}
assert sp.simplify(dpR.subs(witness) + sp.Rational(1, 30)) == 0
assert sp.simplify(dpiR.subs(witness) + sp.Rational(55322, 126075)) == 0

print('PASS')
print('dpR/dr =', dpR)
print('dDR/dr =', dDR)
print('dpiR/dr =', dpiR)
print('witness dpiR/dr =', sp.simplify(dpiR.subs(witness)))