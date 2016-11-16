def sum_spiral_diagonals(size):
    next_num = 1
    step = 2
    distance = 1
    total = 1
    while distance < size/2:
        for i in range(4):
            next_num += step
            total += next_num
        distance += 1
        step = 2*distance
    return total

if (__name__=='__main__'):
    print(sum_spiral_diagonals(1001))
