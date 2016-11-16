def sum_digit_powers(pow):
    total = 0
    for n in range(2,1000000):
        _sum = 0
        for digit in str(n):
            _sum += int(digit)**pow
        if _sum == n:
            total += _sum
    return total

if __name__=='__main__':
    print(sum_digit_powers(5))
