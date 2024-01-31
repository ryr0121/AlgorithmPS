# 문제 링크 - https://softeer.ai/practice/6280

n = int(input())

cnt = 2
for i in range(0,n):  cnt += (cnt-1)

print(cnt**2)
