#A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

#A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

#As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

#Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

from euler_21 import get_proper_divisors
from sortedcontainers import SortedSet
import time
import math

def is_abundant(n):
    if n == 0:
        return False
    else:
        return True if sum(get_proper_divisors(n)) > n else False

def gen_abundant_nums():
    l = []
    for n in range(20162):
        if is_abundant(n):
            l.append(n)
    return l

def gen_abundant_sums(l):
    sums = []
    for a in l:
        for b in l:
            sums.append(a + b)
    return set(sums)

if __name__ == '__main__':
    sums = gen_abundant_sums(gen_abundant_nums())
    non_sums = set(range(20162)) - sums
    print(sum(non_sums))

    #this algorithm produces the correct result (compared to other solutions found in the discussion thread) but it seems that get_proper_divisors is incorrect as we are overcounting
