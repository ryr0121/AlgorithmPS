def solution(nums):
    numsHash = {}
    answer = 0
    
    for n in nums:
        if (numsHash.get(n, 0) == 0):
            numsHash[n] = 1
        else:
            numsHash[n] += 1
    
    for key in numsHash.keys():
        if (answer == len(nums)/2): break
        answer += 1
    
    # key값들을 한 바퀴 이상 돈 경우 -> key의 길이가 최대
    # key값들을 한 바퀴 미만으로 돈 경우 -> 몇 번 돌았는지가 최대
    # key값들을 딱 한 바퀴 돈 경우 -> key의 길이가 최대
    if not (answer < len(list(numsHash))): answer = len(list(numsHash))
    
    return answer