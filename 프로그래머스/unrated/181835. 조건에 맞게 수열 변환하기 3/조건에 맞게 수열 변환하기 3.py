def solution(arr, k):
    answer = []
    if (k%2 == 0):
        for e in arr:
            answer.append(e+k)
    else:
        for e in arr:
            answer.append(e*k)
    return answer