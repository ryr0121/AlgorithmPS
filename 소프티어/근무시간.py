# 문제 링크 - https://softeer.ai/practice/6254

def solution(arr):
    sum = 0
    
    for time in arr:
        ### 시작,종료 시간 문자열을 가지고 각각의 시간,분 정보 구하기
        start_hour = int(time[0].split(sep=':')[0])
        start_min = int(time[0].split(sep=':')[1])
        
        end_hour = int(time[1].split(sep=':')[0])
        end_min = int(time[1].split(sep=':')[1])

        ### 근무시간 더하기
        if (start_min == 0) & (end_min == 0):
            # 시작/종료 모두 분이 0인 경우 -> 시간의 차를 구해서 60 곱하여 sum에 더하기
            sum += (end_hour - start_hour) * 60
            
        elif (start_min != 0) & (end_min == 0):
            # 시작의 분이 0이 아니고, 종료의 분이 0인 경우
            # -> '60(분) - 시작시간의 분'을 더하고, 시작시간의 시간을 +1 상태로 시간의 차 더하기
            sum += (60 - start_min) + (end_hour-(start_hour+1)) * 60
            
        elif (start_min == 0) & (end_min != 0):
            # # 시작의 분이 0이고, 종료의 분이 0이 아닌 경우
            # -> sum에 종료시간의 분만큼을 더하고, 종료의 시-시작의 시에 60을 곱하여 더하기
            sum += end_min + (end_hour-start_hour)*60
            
        else:
            # 시작/종료 둘 다 분이 0이 아닌 경우
            # 1. '60(분) - 시작시간의 분'을 더하고, 시작시간의 시간을 +1
            # 2. sum에 종료시간의 분만큼을 더하기
            # 3. 종료의 시 - 시작의 시 값에 60을 곱하여 sum에 더하기
            sum += (60 - start_min) + end_min + (end_hour-(start_hour+1)) * 60

    print(sum)


work_arr = []
for _ in range(0,5):
    work = input().split()
    work_arr.append([work[0], work[1]])
solution(work_arr)
