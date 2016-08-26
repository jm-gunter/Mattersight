#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a2 + b2 = c2
#For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

def find_triplet(number):
    a = 1
    while a < number - 2:
        b = a + 1
        while b < number - 1:
            c = b + 1
            while c < number:
                if (a**2 + b**2 == c**2):
                    if (a + b + c == number):
                        return (a,b,c)
                c += 1
            b += 1
        a += 1


if __name__ == '__main__':
    print(find_triplet(1000))
