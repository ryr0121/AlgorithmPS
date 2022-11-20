import itertools

N = int(input())
inputNums = list(map(int, input().split()))

maxSum = 0
for nums in itertools.permutations(inputNums, len(inputNums)):
    sum = 0
    for i in range(len(nums) - 1):
        sum += abs(nums[i] - nums[i + 1])
    if sum > maxSum:
        maxSum = sum

print(maxSum)