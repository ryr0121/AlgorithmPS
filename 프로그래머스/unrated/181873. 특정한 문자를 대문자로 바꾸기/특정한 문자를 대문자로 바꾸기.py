def solution(my_string, alp):
    answer = ''
    for c in my_string:
        answer += alp.upper() if (c == alp) else c
    return answer