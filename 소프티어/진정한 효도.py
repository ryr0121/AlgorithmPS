# 문제 링크 - https://softeer.ai/practice/7374


# 땅 높이의 구성 배열 경우의 수
# 1) 모두 같은 경우 - 0
# 2) 하나만 다를 경우 - 값의 차이
# 3) 모두 다를 경우 - 2
def getDist(arr):
    temp = []
    for i in range(0,3): temp.append(arr[i])   # 얕은 복사
    temp.sort() 
    if (temp[0]==temp[1] & temp[1]==temp[2]): return 0
    elif (temp[0]!=temp[1] & temp[1]!=temp[2]): return 2
    else: return abs(temp[2]-temp[0])

values = []
for i in range(0,3):
    values.append(list(map(int, input().split())))

results = []

# 행 별로 검사
for i in range(0,3): results.append(getDist(values[i]))

# 열 별로 검사
for i in range(0,3):
    temp = [values[0][i], values[1][i], values[2][i]]
    results.append(getDist(temp))

print(min(results))
