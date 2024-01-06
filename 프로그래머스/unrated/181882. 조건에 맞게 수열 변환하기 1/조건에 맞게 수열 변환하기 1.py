def solution(arr):
    answer = []
    for n in arr:
        if (n>=50) & (n%2==0):
            answer.append(int(n/2))
        elif (n<50) & (n%2!=0):
            answer.append(int(n*2))
        else:
            answer.append(n)
    return answer