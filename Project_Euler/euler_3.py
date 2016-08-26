# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

import math

def is_prime(n):
    if n <= 1:
        return False
    elif n <= 3:
        return True
    elif n % 2 == 0 or n % 3 == 0:
        return False
    i = 5
    while i**2 <= n:
        if n % i == 0 or n % (i + 2) == 0:
            return False
        i = i + 6
    return True

def largest_prime_factor(number):
    for n in range(int(math.sqrt(number)), 2, -1):
        if number % n == 0:
            if is_prime(n):
                print("The largest prime factor of {0} is {1}".format(number, n))
                return


if __name__ == '__main__':
    number = 600851475143
    largest_prime_factor(number)
