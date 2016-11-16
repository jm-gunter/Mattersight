def sum_power_combs(n):
    num_set = set()
    for a in range(2, n + 1):
        for b in range(2, n + 1):
            num_set.add(a**b)
    return len(num_set)

if __name__=='__main__':
    print(sum_power_combs(100))
