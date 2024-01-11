def solution(new_id):
    answer = ''
    idStr = new_id.lower()
    
    numChar = list(range(48,58))
    lowerChar = list(range(97,123))
    possibleChar = [45, 46, 95]

    for i in range(0,len(idStr)):
        if (ord(idStr[i]) in numChar) | (ord(idStr[i]) in lowerChar) | (ord(idStr[i]) in possibleChar): answer += idStr[i]

    while '..' in answer:
        answer = answer.replace('..', '.')

    if (len(answer) > 0):
        if (answer[0] == '.'): answer = answer[1::]
    if (len(answer) > 0):
        if (answer[-1] == '.'): answer = answer[:-1:]

    if len(answer) == 0: answer = 'aaa'
    elif len(answer) < 3: 
        while len(answer) < 3: answer += answer[-1]
    elif len(answer) > 15: answer = answer[:15:]
    
    if (len(answer) > 0):
        if (answer[0] == '.'): answer = answer[1::]
    if (len(answer) > 0):
        if (answer[-1] == '.'): answer = answer[:-1:]
    
    return answer
    
    