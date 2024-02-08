from itertools import combinations

def solution(clothes):
    dict = {}
    result = 1

    for c in clothes:
        if not c[1] in dict.keys(): dict[c[1]] = 0
        dict[c[1]] += 1
        
    for k in dict.keys(): result *= dict[k] + 1
    return result-1