def solution(citations):
    answer = 0
    n = len(citations)
    max_q = max(citations)
    citations.sort()

    for c in range(max_q,0,-1):
        less_q_cnt = 0
        more_q_cnt = 0
        for n in citations:
            if n >= c:
                more_q_cnt += 1
            else:
                less_q_cnt += 1
        if less_q_cnt <= c and more_q_cnt >= c:
            answer = c
            break
    
    return answer