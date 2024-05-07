from itertools import permutations

def isPrime(n):
    if n == 0 or n == 1: return False
    for i in range(2,n):
        if n%i == 0: return False
    return True

def solution(numbers):
    answer = 0
    pers = set()
    for l in range(1,len(numbers)+1):
        temp = list(permutations(list(numbers),l))
        for p in temp: pers.add(int(''.join(p)))
    for p in pers:
        if isPrime(p): answer += 1
    return answer

