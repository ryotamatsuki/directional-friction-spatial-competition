import math

# Deterministic grid audit for t=1, c=0.
# Local price-equilibrium candidates are parameterized by (M,x).
# The equilibrium-share equation K=0 solves A/t exactly as
# a = -3(2x-1) / [(2x-1) H_x + H].


def H(M,x):
    return (1-M-2*x)/math.sqrt((M+x)*(1-x))


def Hx(M,x):
    return -(M+1)**2/(2*((M+x)*(1-x))**1.5)


def Hxx(M,x):
    return -3*(M+1)**2*(M+2*x-1)/(4*((M+x)*(1-x))**2.5)


def alpha_from_K(M,x):
    z=2*x-1
    den=z*Hx(M,x)+H(M,x)
    if abs(den)<1e-14:
        return None
    return -3*z/den


def right_stable_boundary(M,a):
    # g=2+a Hx=0 => Q^3/2=a(M+1)^2/4.
    q=(a*(M+1)**2/4.0)**(2.0/3.0)
    disc=(M+1)**2-4*q
    if disc<=0:
        return None
    xb=((1-M)+math.sqrt(disc))/2
    if not (0<xb<1):
        return None
    return xb

qualifying=0
boundary_profitable=0
min_gain=None
min_record=None

for i in range(150):
    M=0.02+(1.50-0.02)*i/149
    for j in range(181):
        x=0.05+(0.95-0.05)*j/180
        a=alpha_from_K(M,x)
        if a is None or a<=0:
            continue
        gg=2+a*Hx(M,x)
        gp=a*Hxx(M,x)
        SL=2*gg+x*gp
        SR=2*gg-(1-x)*gp
        BL=gg+x*gp
        BR=gg-(1-x)*gp
        if not (gg>0 and SL>0 and SR>0 and BL<0 and BR>0):
            continue

        xb=right_stable_boundary(M,a)
        if xb is None or xb<=x:
            continue

        qualifying+=1
        pR=(1-x)*gg
        pL=x*gg
        pi_star=pL*x

        # Limiting price and profit as L moves to the right-hand
        # saddle-node boundary of the stable shopper branch.
        pL_b=pR-(2*xb-1)-a*H(M,xb)
        pi_b=pL_b*xb
        gain=pi_b-pi_star
        if gain>1e-10:
            boundary_profitable+=1
        if min_gain is None or gain<min_gain:
            min_gain=gain
            min_record=(M,x,a,gg,gp,xb,pL_b,pi_star,pi_b)

print('qualifying local strategic-asymmetry candidates =', qualifying)
print('with profitable L tipping-boundary deviation =', boundary_profitable)
print('minimum boundary profit gain =', min_gain)
print('minimum-gain record =', min_record)

assert qualifying==920
assert boundary_profitable==qualifying
assert min_gain>0
print('Stage 4U deterministic global-deviation audit: PASS')
