#Project Euler # 27
#Euler discovered the remarkable quadratic formula:

#n^2+n+41

#It turns out that the formula will produce 40 primes for the consecutive integer values 0≤n≤39.
#However, when n=40,40^2+40+41=40(40+1)+41 is divisible by 41, and certainly when n=41,41^2+41+41 is clearly divisible by 41.

#The incredible formula n^2−79n+1601 was discovered, which produces 80 primes for the consecutive values 0≤n≤79. The product of the coefficients, −79 and 1601, is −126479.

#Considering quadratics of the form:
#n^2+an+b, where |a|<1000 and |b|≤1000 where |n| is the modulus/absolute value of n, e.g. |11|=11 and |−4|=4 Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n=0.

# Going on the hunch that a and b should be prime in order for n^2 +an + b to be a good prime generator.

from euler_3 import is_prime

def get_primes(limit):
    l = []
    for n in range (limit):
        if is_prime(n):
            l.append(n)
    return l

if __name__ == '__main__':
    l = get_primes(1001)
    l = l.extend(-l)
    count = 0
    for a in l:
        for b in l:
            n = 0
            while is_prime(n**2 + a*n + b):
                
