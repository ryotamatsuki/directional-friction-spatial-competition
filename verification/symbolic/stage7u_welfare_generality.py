import sympy as sp

# Exact Stage-5 witness
x = sp.symbols('x', real=True)
q = sp.symbols('q', positive=True)
M = sp.Rational(2, 3)
t = sp.Integer(1)
A = sp.Rational(22797, 7364680) * sp.sqrt(7599)
x_ne = sp.Rational(23, 40)
g_ne = sp.Rational(188234, 184117)
pL = sp.Rational(2164691, 3682340)
pR = sp.Rational(1599989, 3682340)

# Slack-floor operator cost and envelope identity.
# On x in [0,1], (sqrt(M+x)+sqrt(1-x))^2 = M+1+2*sqrt((M+x)(1-x)).
# The expanded domain-equivalent form avoids SymPy branch-normalization dependence.
Q = (M + x) * (1 - x)
J = A * (M + 1 + 2*sp.sqrt(Q))
H = (1 - M - 2*x) / sp.sqrt(Q)
assert sp.simplify(sp.diff(J, x) - A*H) == 0

# Real social cost on the slack branch
C = t * (x**3 + (1-x)**3) / 3 + J
Cprime = sp.simplify(sp.diff(C, x))
g = sp.simplify(sp.diff(Cprime, x))
assert sp.simplify(Cprime - (t*(2*x-1) + A*H)) == 0

# Private-social wedge at an interior retail equilibrium
assert sp.simplify(Cprime.subs(x, x_ne) + (2*x_ne-1)*g_ne) == 0
assert sp.simplify(Cprime.subs(x, x_ne) + sp.Rational(282351,1841170)) == 0

# q=1/3 second-best with the right service floor binding
q0 = sp.Rational(1, 3)
C_bind = t * (x**3 + (1-x)**3) / 3 + A*((M+x)/(1-q0) + (1-x)/q0)
x_sb = sp.simplify(sp.solve(sp.diff(C_bind, x), x)[0])
x_sb_target = sp.Rational(1,2) + sp.Rational(3,4)*A
assert sp.simplify(x_sb - x_sb_target) == 0
assert sp.N(x_sb) > sp.Rational(2,3)

C_ne = sp.simplify(C.subs(x, x_ne))
C_sb = sp.simplify(C_bind.subs(x, x_sb))
assert sp.N(C_ne - C_sb) > 0

# General power waiting technology a(f)=w f^{-rho}
rho = sp.symbols('rho', positive=True)
DL, DR, F, w = sp.symbols('DL DR F w', positive=True)
alpha = 1/(rho+1)
fL = F * DL**alpha / (DL**alpha + DR**alpha)
fR = F * DR**alpha / (DL**alpha + DR**alpha)
Jrho = w/F**rho * (DL**alpha + DR**alpha)**(rho+1)
# With positive DL,DR,F,w,rho, direct simplify verifies the envelope identities
# robustly under SymPy 1.14; powdenest(force=True) is intentionally avoided.
assert sp.simplify(sp.diff(Jrho, DL) - w/fL**rho) == 0
assert sp.simplify(sp.diff(Jrho, DR) - w/fR**rho) == 0

# Floor boundary for M=2/3 under rho=1
x_b = sp.simplify(((1-q)**2 - M*q**2) / ((1-q)**2 + q**2))
h_bind = sp.simplify(1/(1-q) - 1/q)
B = sp.simplify(A*h_bind)
piL_star = sp.simplify(pL*x_ne)
piR_star = sp.simplify(pR*(1-x_ne))
piL_boundary = sp.simplify(x_b * (pR - (2*x_b-1) - B))
xR_vertex = sp.simplify((3-pL-B)/4)
piR_vertex = sp.simplify((1-xR_vertex) * (pL + (2*xR_vertex-1) + B))

# Numerical root isolation for the exact witness's nonbinding support band.
qL = sp.nsolve(piL_boundary-piL_star, sp.Rational(8,25))
qU = sp.nsolve(piR_vertex-piR_star, sp.Rational(17,50))
assert 0 < qL < sp.Rational(1,3) < qU < sp.Rational(1,2)

print('Stage 7U welfare/generality symbolic verification: PASS')
print('Cprime(x_NE) =', sp.simplify(Cprime.subs(x, x_ne)), float(Cprime.subs(x,x_ne)))
print('x_SB(q=1/3) =', x_sb, float(x_sb))
print('real-cost welfare gain =', float(C_ne-C_sb))
print('support band qL, qU =', float(qL), float(qU))
