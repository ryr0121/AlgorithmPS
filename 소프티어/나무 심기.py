# 문제링크 - https://softeer.ai/practice/7353

def solution(arr):
    max = -10000
    for p in range(0,len(arr)):
        for q in range(p+1, len(arr)):
            if max < int(arr[p])*int(arr[q]): max = int(arr[p])*int(arr[q])
    print(max)

_ = int(input())
arr = input().split()
solution(arr)
