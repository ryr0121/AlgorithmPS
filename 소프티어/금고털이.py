# 문제 링크 - https://softeer.ai/practice/6288

import sys
input = sys.stdin.readline

w,n = map(int, input().split())
jew = []
for _ in range(0,n): 
    temp = list(map(int, input().split()))
    jew.append(temp)

jew.sort(key=lambda x:-x[1])   # 무게당 가격을 기준으로 정렬

price = 0
for i in jew:
    if w-i[0] >= 0:
        w -= i[0]
        price += i[0]*i[1]
    else:
        price += w*i[1]
        break

print(price)
