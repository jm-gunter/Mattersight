import math

def fibonnacci_list(limit):
    if limit <= 1:
        return []
    elif limit == 2:
        return [1,]
    else: # limit > 2
        f_list = [1, 2]
        next_num = 0
        while next_num < limit:
            next_num = f_list[-1] + f_list [-2]
            if next_num < limit:
                f_list.append(next_num)
        return f_list

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

def max_prime_factor(n):
    pass

def proper_divisors(n):
    return {x for x in range(1, (n + 1) // 2 + 1) if n % x == 0 and n != x}

def primes(limit):
    pass

def nth_fib (n):
    pass


if __name__ == '__main__':
    pass
