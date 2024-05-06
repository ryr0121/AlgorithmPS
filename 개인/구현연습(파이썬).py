# 1. K번쨰 약수
n, k = map(int, input().split())
cnt = 0
result = -1
for i in range(1, n+1):
    if n%i == 0:
        cnt += 1
        if cnt == k:
            result = i
            break
print(result)

# 2. K번쨰 수
t = int(input())
for i in range(t):
    n, s, e, k = map(int, input().split())
    temp = list(map(int, input().split()))
    nums = temp[s-1:e]
    nums.sort()
    print("#", (i+1), nums[k-1])

# 3. K번쨰 큰 수
n, k = map(int, input().split())
nums = list(map(int, input().split()))
sums = set()

for i in range(n):
    for j in range(i+1,n):
        for h in range(j+1,n):
            sums.add(nums[i]+nums[j]+nums[h])

sums = list(sums)
sums.sort(reverse=True)
print(sums[k-1])

# 4. 대표값
n = int(input())
scores = list(map(int, input().split()))
average = int(sum(scores)/n + 0.5)
min_d = 100
result = -1

for i in range(n):
    if abs(scores[i]-average) < min_d:
        min_d = abs(scores[i]-average)
        result = i+1

print(average, result)

# 5. 정다면체
n, m = map(int, input().split())
sums = []
for i in range(1,n+1):
    for j in range(1,m+1):
        sums.append(i+j)

cnt_dict = {}
temp = set(sums)
for s in temp:
    cnt_dict[s] = 0
    for num in sums:
        if num == s:
            cnt_dict[s] += 1

max_cnt = max(cnt_dict.values())
max_list = []
for key in cnt_dict.keys():
    if cnt_dict[key] == max_cnt:
        max_list.append(key)

print(*max_list)

# 6. 자릿수의 합
n = int(input())
nums = list(map(int, input().split()))

result = -1
max_sum = -1
for num in nums:
    num_strs = list(map(int, list(str(num))))
    if max_sum < sum(num_strs):
        result = num
        max_sum = sum(num_strs)
print(result)

# 7. 소수(에라토스테네스 체)
n = int(input())
check = [0]*n
cnt = 0
for i in range(2, n+1):
    if check[i-1] == 0:
        cnt += 1
        for j in range(i, n+1, i):
            check[j-1] = 1
print(cnt)

# 8. 뒤집은 소수
def reverse(x):
    temp = list(map(int, list(str(x))))
    multi_num = 1
    rev = 0
    for num in temp:
        rev += num*multi_num
        multi_num *= 10
    return rev
def isPrime(x):
    if x == 1: return False
    for i in range(2, x//2+1):
        if x%i == 0:
            return False
    return True

n = int(input())
nums = list(map(int, input().split()))
prime_num = []

for num in nums:
    rev = reverse(num)
    if isPrime(rev):
        prime_num.append(rev)

print(*prime_num)

# 9. 주사위 게임
def getMoney(nums):
    if nums[0] == nums[1] == nums[2]:
        return 10000+nums[0]*1000
    elif nums[0] == nums[1] and nums[0] != nums[2]:
        return 1000+nums[0]*100
    elif nums[1] == nums[2] and nums[0] != nums[1]:
        return 1000+nums[1]*100
    elif nums[0] == nums[2] and nums[0] != nums[1]:
        return 1000+nums[0]*100
    else:
        return max(nums)*100

n = int(input())
nums = []
for _ in range(n):
    nums.append(list(map(int, input().split())))

max_money = 0
for num_list in nums:
    money = getMoney(num_list)
    if max_money < money:
        max_money = money
print(max_money)

# 10. 점수 계산
n = int(input())
results = list(map(int, input().split()))

total = 0
add = 0
for result in results:
    if result == 1:
        total += 1 + add
        add += 1
    else:
        add = 0
        
print(total)
