def solution(prices):
    answer = []
    for i in range(len(prices)):
        c = 0
        for j in range(i+1, len(prices)):
            if prices[j] < prices[i]: c += 1; break;
            c += 1
        answer.append(c)
    return answer