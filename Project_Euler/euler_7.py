# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10,001st prime number?

from euler_3 import is_prime

def find_prime(number):
    prime_list = [2,]
    while (len(prime_list) < number):
        next_num = prime_list[-1] + 1
        while not is_prime(next_num):
            next_num += 1
        prime_list.append(next_num)
    return prime_list[-1]

if __name__ == '__main__':
    num = input("Which prime number do you want to know?")
    print("The {0}th prime is {1}".format(num, find_prime(int(num))))
