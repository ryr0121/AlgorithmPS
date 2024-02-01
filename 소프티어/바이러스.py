# 문제 링크 - https://softeer.ai/practice/6284

k,p,n = map(int, input().split())

sum = k
for s in range(0,n): sum = (sum*p)%1000000007  # 나머지 연산 안 하면 점점 숫자가 커져서 시간초과남

print(sum)
