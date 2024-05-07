import math

def solution(n,a,b):
    if b%2 == 0 and b-a == 1: return 1
    else:
        cnt = 0
        while True:
            cnt += 1
            a = int((a/2)+0.5)
            b = int((b/2)+0.5)
            if a == 0 or b == 0 or a == b : break
        return cnt
