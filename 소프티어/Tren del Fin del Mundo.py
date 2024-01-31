# 문제링크 - https://softeer.ai/practice/7695

def solution(arr):
    min_y = 1000

    for loc in arr:
        if loc[1] < min_y: min_y = loc[1]
            
    for loc in arr:
        if loc[1] == min_y: 
            print(loc[0], loc[1])
            return 

        
n = int(input())
arr = []
for _ in range(0,n):
    loc = input().split()
    arr.append([int(loc[0]), int(loc[1])])
solution(arr)
