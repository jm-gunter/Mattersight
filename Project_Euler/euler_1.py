counter = 0
for i in range(999, 0, -1):
    if i%3==0 or i%5==0:
        counter += i

print(counter)
