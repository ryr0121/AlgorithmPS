# 문제 링크 - https://softeer.ai/practice/7628

n = int(input())
arr = list(map(int, input().split()))

arr.sort()
max_sum = 0

for r in range(2, max(arr)+1):
    sum = 0
    for i in range(0,len(arr)):
        if arr[i]%r == 0: sum += 1
    if sum > max_sum: max_sum = sum

print(max_sum)
