from pathlib import Path
import sympy as sp

OUT = Path('paper/tables')
OUT.mkdir(parents=True, exist_ok=True)

x = sp.Rational(23, 40)
M = sp.Rational(2, 3)
q = sp.Rational(1, 3)
A = sp.Rational(22797, 7364680) * sp.sqrt(7599)
g = sp.Rational(188234, 184117)
pL = sp.Rational(2164691, 3682340)
pR = sp.Rational(1599989, 3682340)
piL = sp.Rational(49787893, 147293600)
piR = sp.Rational(27199813, 147293600)
brL = -sp.Rational(65891639, 172506722)
brR = sp.Rational(27253433, 41276866)

x_sb = sp.Rational(1, 2) + sp.Rational(3, 4) * A

# Reproduce welfare quantities from the frozen Stage-7 formulas.
z = sp.symbols('z', real=True)
J = A * (M + 1 + 2 * sp.sqrt((M + z) * (1 - z)))
C = (z**3 + (1-z)**3) / 3 + J
C_ne = sp.N(C.subs(z, x), 16)
C_bind = (z**3 + (1-z)**3) / 3 + A * ((M+z)/(1-q) + (1-z)/q)
C_sb = sp.N(C_bind.subs(z, x_sb), 16)
gain = sp.N(C_ne - C_sb, 16)

# Frozen witness-specific support-band roots.
qv = sp.symbols('qv', positive=True)
x_b = sp.simplify(((1-qv)**2 - M*qv**2) / ((1-qv)**2 + qv**2))
h_bind = sp.simplify(1/(1-qv) - 1/qv)
B = sp.simplify(A*h_bind)
piL_star = sp.simplify(pL*x)
piR_star = sp.simplify(pR*(1-x))
piL_boundary = sp.simplify(x_b * (pR - (2*x_b-1) - B))
xR_vertex = sp.simplify((3-pL-B)/4)
piR_vertex = sp.simplify((1-xR_vertex) * (pL + (2*xR_vertex-1) + B))
qL = sp.nsolve(piL_boundary-piL_star, sp.Rational(8,25))
qU = sp.nsolve(piR_vertex-piR_star, sp.Rational(17,50))

witness = rf'''\begin{{table}}[t]
\centering
\caption{{Exact global-equilibrium witness used in the existence proof}}
\label{{tab:witness}}
\begin{{tabular}}{{lcc}}
\toprule
Object & Exact value & Decimal \\
\midrule
$M$ & $2/3$ & {float(M):.6f} \\
$q$ & $1/3$ & {float(q):.6f} \\
$x^*$ & $23/40$ & {float(x):.6f} \\
$w/(Ft)$ & $22797\sqrt{{7599}}/7364680$ & {float(A):.6f} \\
$p_L^*$ & $2164691/3682340$ & {float(pL):.6f} \\
$p_R^*$ & $1599989/3682340$ & {float(pR):.6f} \\
$\pi_L^*$ & $49787893/147293600$ & {float(piL):.6f} \\
$\pi_R^*$ & $27199813/147293600$ & {float(piR):.6f} \\
$BR_L'$ & $-65891639/172506722$ & {float(brL):.6f} \\
$BR_R'$ & $27253433/41276866$ & {float(brR):.6f} \\
\bottomrule
\end{{tabular}}
\end{{table}}
'''

welfare = rf'''\begin{{table}}[t]
\centering
\caption{{Witness-specific welfare and service-floor quantities}}
\label{{tab:welfare}}
\begin{{tabular}}{{lc}}
\toprule
Object & Value \\
\midrule
Decentralized share $x^{{NE}}$ & {float(x):.6f} \\
Same-floor second-best share $x^{{SB}}$ & {float(x_sb):.6f} \\
Real cost at $x^{{NE}}$ & {float(C_ne):.6f} \\
Real cost at $x^{{SB}}$ & {float(C_sb):.6f} \\
Real-cost improvement & {float(gain):.6f} \\
Lower support threshold $q_L$ & {float(qL):.6f} \\
Upper support threshold $q_U$ & {float(qU):.6f} \\
\bottomrule
\end{{tabular}}
\end{{table}}
'''

(OUT / 'witness_summary.tex').write_text(witness, encoding='utf-8')
(OUT / 'welfare_summary.tex').write_text(welfare, encoding='utf-8')

print('paper tables generated')
