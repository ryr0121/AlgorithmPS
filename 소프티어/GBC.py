# 문제 링크 - https://softeer.ai/practice/6270

def getNormalSpeed(dist, arr):
    total = 0
    for i in arr:
        total += i[0]
        if dist <= total: return i[1]


def getInputSpeed(dist, inputs):
    total = 0
    for i in inputs:
        total += i[0]
        if dist <= total: return i[1]


n,m = map(int, input().split())

# 구간 별 제한 속도 정보 입력받기
arr = []
for _ in range(0,n):
    arr.append(list(map(int, input().split())))


# 구간 별 운행 속도 정보 입력받기
inputs = []
for _ in range(0,m):
    inputs.append(list(map(int, input().split())))


max_diff = 0
for i in range(0,101):
    normal = getNormalSpeed(i, arr)
    input = getInputSpeed(i, inputs)
    diff = input - normal if input > normal else 0
    if max_diff < diff: max_diff = diff


print(max_diff)
