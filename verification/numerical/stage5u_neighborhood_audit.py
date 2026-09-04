import math
import numpy as np

Q = 1.0/3.0


def H(x,M):
    return (1-M-2*x)/math.sqrt((M+x)*(1-x))


def Hx(x,M):
    return -(M+1)**2/(2*((M+x)*(1-x))**1.5)


def Hxx(x,M):
    return -3*(M+1)**2*(M+2*x-1)/(4*((M+x)*(1-x))**2.5)


def service_share_unconstrained(x,M):
    return math.sqrt(M+x)/(math.sqrt(M+x)+math.sqrt(1-x))


def h_floor(x,M,q=Q):
    s=service_share_unconstrained(x,M)
    s=min(max(s,q),1-q)
    return 1/s-1/(1-s)


def a_from_equilibrium_share(M,x):
    den=(2*x-1)*Hx(x,M)+H(x,M)
    return -3*(2*x-1)/den


def local_objects(M,x,a):
    g=2+a*Hx(x,M)
    gp=a*Hxx(x,M)
    SL=2*g+x*gp
    SR=2*g-(1-x)*gp
    brL=(g+x*gp)/SL
    brR=(g-(1-x)*gp)/SR
    return g,gp,SL,SR,brL,brR


def x_from_s(s,M):
    R=(s/(1-s))**2
    return (R-M)/(1+R)


def continuation_monotone(M,a,q=Q):
    lo=max(0.0,x_from_s(q,M))
    hi=min(1.0,x_from_s(1-q,M))
    if lo>hi:
        return True,2.0
    values=[2+a*Hx(lo,M),2+a*Hx(hi,M)]
    return min(values)>0,min(values)


def global_deviation_check(M,xstar,a,q=Q,n=10001):
    g=2+a*Hx(xstar,M)
    pL=xstar*g
    pR=(1-xstar)*g
    xs=np.linspace(0,1,n)
    ss=np.sqrt(M+xs)/(np.sqrt(M+xs)+np.sqrt(1-xs))
    sc=np.clip(ss,q,1-q)
    h=1/sc-1/(1-sc)
    pL_support=pR-(2*xs-1)-a*h
    pR_support=pL+(2*xs-1)+a*h
    piL=pL_support*xs
    piR=pR_support*(1-xs)
    candL=pL*xstar
    candR=pR*(1-xstar)
    return piL.max()-candL,piR.max()-candR

qualifying=0
global_pass=0
rows=[]

for M in np.linspace(0.60,0.74,29):
    for x in np.linspace(0.565,0.585,21):
        a=a_from_equilibrium_share(M,x)
        if not np.isfinite(a) or a<=0:
            continue
        g,gp,SL,SR,brL,brR=local_objects(M,x,a)
        s=service_share_unconstrained(x,M)
        if not (g>0 and SL>0 and SR>0 and brL<0<brR and Q<min(s,1-s)):
            continue
        qualifying += 1
        mono,min_g=continuation_monotone(M,a)
        if not mono:
            continue
        gapL,gapR=global_deviation_check(M,x,a)
        if gapL<1e-5 and gapR<1e-5:
            global_pass += 1
            rows.append((M,x,a,brL,brR,min_g))

assert qualifying == 595
assert global_pass == 444

print('Stage 5U neighborhood audit: PASS')
print('local strategic-asymmetry candidates =', qualifying)
print('global-equilibrium survivors =', global_pass)
print('first survivor =', rows[0])
print('last survivor =', rows[-1])