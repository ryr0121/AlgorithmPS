# 문제링크 - https://softeer.ai/practice/6294

def solution(scores, section):
    sum = 0
    for i in range(int(section[0])-1, int(section[1])):
        sum += int(scores[i]) 
    result = round(sum/(int(section[1])-int(section[0])+1), 2)
    print('{:.2f}'.format(result))
    
info = input().split()
scores = input().split()
for i in range(0, int(info[1])):
    section = input().split()
    solution(scores, section)
