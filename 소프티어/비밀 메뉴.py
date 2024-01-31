# 문제 링크 - https://softeer.ai/practice/6269

m,n,k = map(int, input().split())
menu = list(map(int, input().split()))
tap = list(map(int, input().split()))

result = 'normal'
if n < m: print(result)
else :
    for i in range(0,n-m+1):
        if tap[i:i+len(menu)] == menu:
            result = 'secret'
            break
    print(result)
