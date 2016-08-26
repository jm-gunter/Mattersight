# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

from euler_3 import is_prime
import time

def sum_primes(limit):
    list = []
    for n in range(limit):
        if is_prime(n):
            list.append(n)
    return sum(list)


if __name__ == '__main__':
    start = time.time()
    print(sum_primes(2000000))
    end = time.time()
    print("time taken = {0}".format(end - start))
