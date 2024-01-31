# 문제링크 - https://softeer.ai/practice/7698

def solution(total):
    result = ''
    for i in range(0,int(total/5)):
        result += '++++ '
        total -= 5
    for _ in range(0,total): result += '|'

    if len(result)%5 == 0: result = result[:-1]
    print(result)

t = int(input())   # 후보의 수
for _ in range(0,t):
    solution(int(input()))
