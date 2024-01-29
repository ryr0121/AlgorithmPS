# 문제링크 - https://softeer.ai/practice/6253

def solution(a, b):
    if a > b: print('A')
    elif a < b: print('B')
    else: print('same')

arr = input().split()
solution(int(arr[0]), int(arr[1]))
