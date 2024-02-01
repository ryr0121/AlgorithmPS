# 문제 링크 - https://softeer.ai/practice/6282

def dfs(x,y):
    if x<0 or x>=n or y<0 or y>=n: return False
    if arr[x][y] == 1:
        sum.append(1)   # 구간 내 장애물 개수 +1
        arr[x][y] = 0   # 방문처리
        # 상하좌우 탐색
        dfs(x,y+1)
        dfs(x,y-1)
        dfs(x-1,y)
        dfs(x+1,y)
        return True
    return False
        

n = int(input())
arr = []
for _ in range(0,n): arr.append(list(map(int, input())))

sum = []
sum_arr = []
for p in range(0,n):
    for q in range(0,n):
        if dfs(p,q) == True: 
            sum_arr.append(len(sum))
            sum = []

sum_arr.sort()
print(len(sum_arr))
for i in range(0,len(sum_arr)): print(sum_arr[i])
