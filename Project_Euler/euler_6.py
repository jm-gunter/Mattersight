#The sum of the squares of the first ten natural numbers is,
#1^2 + 2^2 + ... + 10^2 = 385
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)^2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_squares(number):
    sum = 0
    for i in range(number+1):
        sum = sum + i*i
    return sum

def square_sum(number):
    sum = number*(number+1)/2
    return sum*sum

def find_diff(number):
    return square_sum(number) - sum_squares(number)

if __name__ == '__main__':
#    print(sum_squares(10))
#    print(square_sum(10))
#    print(find_diff(10))
    print(find_diff(100))
