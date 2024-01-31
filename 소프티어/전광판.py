# 문제링크 - https://softeer.ai/practice/6268

def solution(case_arr):
    result = 0   # 스위치 클릭 횟수

    before = getSwitchStatus(case_arr[0])
    after = getSwitchStatus(case_arr[1])

    for i in range(0,5):
        for q in range(0,7):
            if (before[i][q] != after[i][q]): result += 1

    print(result)
        

def getSwitchStatus(str):
    status = []

    for i in range(0,5-len(str)): status.append([0,0,0,0,0,0,0]) # 빈 글자는 꺼져있는 스위치 값으로 초기화
    
    for i in range(0, len(str)):
        if str[i] == '0': status.append([1,1,1,0,1,1,1])
        elif str[i] == '1': status.append([0,0,1,0,1,0,0])
        elif str[i] == '2': status.append([0,1,1,1,0,1,1])
        elif str[i] == '3': status.append([0,1,1,1,1,1,0])
        elif str[i] == '4': status.append([1,0,1,1,1,0,0])
        elif str[i] == '5': status.append([1,1,0,1,1,1,0])
        elif str[i] == '6': status.append([1,1,0,1,1,1,1])
        elif str[i] == '7': status.append([1,1,1,0,1,0,0])
        elif str[i] == '8': status.append([1,1,1,1,1,1,1])
        elif str[i] == '9': status.append([1,1,1,1,1,1,0])

    return status
    

n = int(input())
for _ in range(0,n):
    solution(input().split())
