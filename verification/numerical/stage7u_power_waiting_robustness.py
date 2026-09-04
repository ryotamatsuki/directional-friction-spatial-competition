import numpy as np
from math import sqrt
from scipy.optimize import brentq, minimize_scalar

# Stage-5 witness primitives held fixed except rho.
M = 2/3
q = 1/3
A = 22797*sqrt(7599)/7364680

def s_un(x, rho):
    a = 1/(rho+1)
    dl, dr = M+x, 1-x
    return dl**a/(dl**a+dr**a)

def h(x, rho):
    s = min(1-q, max(q, s_un(x,rho)))
    return A*(s**(-rho) - (1-s)**(-rho))

def d1(fun, x, eps=2e-6):
    return (fun(x+eps)-fun(x-eps))/(2*eps)

def d2(fun, x, eps=2e-5):
    return (fun(x+eps)-2*fun(x)+fun(x-eps))/eps**2

def g(x,rho):
    return 2 + d1(lambda z:h(z,rho), x)

def gp(x,rho):
    return d2(lambda z:h(z,rho), x)

def K(x,rho):
    return (2*x-1)*g(x,rho) + (2*x-1) + h(x,rho)

def equilibrium_x(rho):
    xs=np.linspace(0.35,0.75,1001)
    vals=[K(z,rho) for z in xs]
    roots=[]
    for i in range(len(xs)-1):
        if vals[i]==0:
            roots.append(xs[i])
        elif vals[i]*vals[i+1]<0:
            roots.append(brentq(lambda z:K(z,rho),xs[i],xs[i+1]))
    if len(roots)!=1:
        return None
    return roots[0]

def global_check(rho):
    xeq=equilibrium_x(rho)
    if xeq is None:
        return False, None
    gg=g(xeq,rho); gpp=gp(xeq,rho)
    SL=2*gg+xeq*gpp
    SR=2*gg-(1-xeq)*gpp
    if min(gg,SL,SR)<=0:
        return False, None
    brL=(gg+xeq*gpp)/SL
    brR=(gg-(1-xeq)*gpp)/SR
    if not (brL<0<brR):
        return False, None
    if not (q < s_un(xeq,rho) < 1-q):
        return False, None
    # continuation monotonicity
    grid=np.linspace(1e-4,0.9999,4001)
    if min(2+d1(lambda z:h(z,rho), float(xx)) for xx in grid) <= 0:
        return False, None
    pL=xeq*gg; pR=(1-xeq)*gg
    piL=pL*xeq; piR=pR*(1-xeq)
    def PL(x): return x*(pR-(2*x-1)-h(x,rho))
    def PR(x): return (1-x)*(pL+(2*x-1)+h(x,rho))
    valsL=np.array([PL(float(xx)) for xx in grid])
    valsR=np.array([PR(float(xx)) for xx in grid])
    def max_refine(fun, vals):
        best=-1e99
        for idx in vals.argsort()[-20:]:
            lo=grid[max(0,idx-2)]; hi=grid[min(len(grid)-1,idx+2)]
            res=minimize_scalar(lambda z:-fun(z),bounds=(lo,hi),method='bounded')
            best=max(best,-res.fun)
        return best
    if max_refine(PL,valsL) > piL+2e-6:
        return False, None
    if max_refine(PR,valsR) > piR+2e-6:
        return False, None
    return True,(xeq,brL,brR)

survivors=[]
for rho in np.linspace(0.90,1.05,61):
    ok, stats=global_check(float(rho))
    if ok:
        survivors.append((float(rho),)+stats)

print('Stage 7U power-waiting robustness audit')
print('survivor count =',len(survivors))
if survivors:
    print('first survivor =',survivors[0])
    print('last survivor =',survivors[-1])
# Conservative claim used in text: rho in [0.95,1.01] is inside the audited survivor region.
assert global_check(0.95)[0]
assert global_check(1.00)[0]
assert global_check(1.01)[0]
print('conservative rho robustness [0.95,1.01]: PASS')
