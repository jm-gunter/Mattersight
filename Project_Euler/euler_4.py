# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome(number):
    num_string = str(abs(number))
    length = int(len(num_string) / 2)
    adjustment = -1 if len(num_string) % 2 == 0 else 0
    #print("first half = {0}".format(num_string[0:length:1]))
    #print("last half = {0}".format(num_string[-1:length + adjustment:-1]))
    if (num_string[0:length:1] == num_string[-1:length + adjustment:-1]):
        return True
    else:
        return False

def largest_palindrome(num_digits):
    n = int('9'*num_digits)
    p_list = []
    for i in range(n, 1, -1):
        for j in range(n, 1, -1):
            if is_palindrome(i*j):
                p_list.append(i*j)
    return "The largest palindromic number made from two {0} digit numbers is {1}".format(num_digits, max(p_list))


if __name__ == '__main__':
    print(largest_palindrome(3))
