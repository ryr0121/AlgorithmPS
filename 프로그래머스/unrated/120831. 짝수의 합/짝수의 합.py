def solution(n):
    result = 0
    for i in range(2, n+1):
        result += i if (i%2 == 0) else 0
    return result