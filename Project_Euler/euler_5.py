# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def is_divisible(number, max_divisor):
    out = True
    for i in range(1, max_divisor+1, 1):
        if number % i != 0:
            out = False
            break
    return out

def smallest_number(number):
    """Returns the smallest number that is evenly divisible by all integers from 1 to the number passed"""
    multiple = 1
    while True:
        if is_divisible(number*multiple, number):
            return "The smallest number divisible by all integers from 1 to {0} is {1}".format(number, number*multiple)
        else:
            multiple = multiple + 1

if __name__ == '__main__':
    print(smallest_number(20))
