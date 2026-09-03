import sympy as sp

r, theta, c, x = sp.symbols('r theta c x', positive=True, real=True)
h = 2*r + theta
C = r**2 + theta*r

pL = c + (C+h)/3
pR = c + (2*h-C)/3
xstar = sp.simplify((C+h)/(3*h))

q_mid = h*x-C
q_out = 2*r*x-r**2

piL_mid = sp.expand(x*(pR-c-q_mid))
piL_out = sp.expand(x*(pR-c-q_out))
piR_mid = sp.expand((1-x)*(pL-c+q_mid))
piR_out = sp.expand((1-x)*(pL-c+q_out))

assert sp.simplify(sp.diff(piL_mid,x).subs(x,xstar)) == 0
assert sp.simplify(sp.diff(piR_mid,x).subs(x,xstar)) == 0
assert sp.factor(sp.diff(piL_mid,x,2)) == -2*(2*r+theta)
assert sp.factor(sp.diff(piR_mid,x,2)) == -2*(2*r+theta)
assert sp.factor(sp.diff(piL_out,x,2)) == -4*r
assert sp.factor(sp.diff(piR_out,x,2)) == -4*r

assert sp.factor(3*r*h-(C+h)) == 5*r**2+2*r*theta-2*r-theta
assert sp.factor(sp.diff(piL_out,x).subs(x,r)) == -(10*r**2+r*theta-4*r-2*theta)/3
assert sp.factor(sp.diff(piR_out,x).subs(x,r)-sp.diff(piR_mid,x).subs(x,r)) == theta*(r-1)

assert sp.factor(sp.diff(pL,r)) == (2*r+theta+2)/3
assert sp.factor(sp.diff(pR,r)) == -(2*r+theta-4)/3

upper = 2*r*(5*r-2)/(2-r)
lower = 4-2*r
assert sp.factor(upper-lower) == -4*(2*r**2+r-2)/(r-2)

rv = sp.Rational(4,5)
tv = sp.Rational(5,2)
assert sp.simplify(xstar.subs({r:rv, theta:tv})) == sp.Rational(337,615)
assert sp.simplify((pL-c).subs({r:rv, theta:tv})) == sp.Rational(337,150)
assert sp.simplify((pR-c).subs({r:rv, theta:tv})) == sp.Rational(139,75)
assert sp.simplify(sp.diff(pL,r).subs({r:rv, theta:tv})) == sp.Rational(61,30)
assert sp.simplify(sp.diff(pR,r).subs({r:rv, theta:tv})) == -sp.Rational(1,30)
assert sp.simplify(sp.diff(piL_out,x).subs({r:rv, theta:tv, x:rv, c:0})) == -sp.Rational(1,15)

# theta=0 benchmark
assert sp.simplify((pL-c).subs(theta,0) - r*(r+2)/3) == 0
assert sp.simplify((pR-c).subs(theta,0) - r*(4-r)/3) == 0

print('PASS: Stage 4R-LSRS symbolic checks')
