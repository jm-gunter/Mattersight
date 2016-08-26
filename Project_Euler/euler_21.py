#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

#Evaluate the sum of all the amicable numbers under 10000.

import math

def get_proper_divisors(n):
    divisors = {1,}
    limit = math.ceil(math.sqrt(n))
    for i in range(1, limit):
        if n % i == 0:
            divisors.add(i)
            if (n/i != n):
                divisors.add(n/i)
    return divisors

if __name__ == '__main__':
    total = 0
    for n in range(10000):
        candidate = sum(get_proper_divisors(n))
        if (candidate != n and sum(get_proper_divisors(candidate)) == n):
            total += n
    print(total)
