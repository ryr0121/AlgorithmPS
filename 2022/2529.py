import itertools

N = int(input())
A = input().split()

p = itertools.permutations([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], N + 1)

resultList = []

for l in p:
    check = True
    for i in range(len(A)):
        if A[i] == '>':
            if l[i] < l[i + 1]:
                check = False
                break
        elif A[i] == '<':
            if l[i] > l[i + 1]:
                check = False
                break

    if check:
        resultList.append(l)

print("".join(map(str, list(max(resultList)))))
print("".join(map(str, list(min(resultList)))))

