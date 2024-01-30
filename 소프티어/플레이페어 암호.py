# 문제링크 - https://softeer.ai/practice/6255

### 중복되는 글자쌍이 없도록 메세지 수정하는 메소드
def getPair(input):
    # 우선 2자씩 쪼개서 확인
    # 같은 글자로 구성된 쌍은 사이에 'X'를 끼워주는데, 글자쌍이 'XX'인 경우에는 'Q'추가
    # 가장 최종적으로 나온 쌍들 중 마지막이 1개 문자로 이루어졌다면 끝에 'X' 추가 (XX가 되어도 무관함)
    result = input
    while isDuplicated(result): result = setNotDuplicated(result)  # 중복되는 쌍이 없을 때까지 반복
    if len(result)%2 == 1: result += 'X'
    return result

### 중복되는 글자쌍이 존재하는지 확인하는 메소드
def isDuplicated(str):
    for i in range(0,len(str)-1,2):
        if str[i] == str[i+1]: return True
    return False

### 중복되는 글자쌍 사이에 'X' 혹은 'Q'를 추가하는 메소드
def setNotDuplicated(str):
    str_list = list(str)
    for i in range(0,len(str)-1,2):
        if str_list[i] == str_list[i+1]:
            str_list.insert(i+1, 'X' if str_list[i] != 'X' else 'Q')
            return ''.join(str_list)

### 입력된 키값을 기반으로 5*5 크기의 암호판을 만드는 메소드
def getKey(input_key):
    # 입력받은 키값을 차례로 돌면서 (0,0)자리부터 한 글자씩 채워줌
    # 단, 이미 이전에 등장한 적이 있는 글자가 또 나오면 건너뜀
    # 입력받은 키값을 이용해 채웠는데 25자리를 모두 채우지 못 한 경우, 알파벳 중 안 쓴 걸 가져다가 채우면 됨
    alphabet_list = [chr(i) for i in range(ord('A'),ord('Z')+1)]
    alphabet_list.remove('J')
    key_arr = []
    # 우선 입력받은 키값으로 배열 채우기
    for k in input_key:
        if len(key_arr) == 25: break
        if k in alphabet_list:
            key_arr.append(k)
            alphabet_list.remove(k)
    
    # 배열 길이가 25 미만이면 안 쓴 알파벳 사용
    if len(key_arr) < 25:
        for a in alphabet_list:
            if len(key_arr) == 25: break
            key_arr.append(a)

    # 1차원 배열 값을 토대로 2차원 암호판 구성 후 반환
    # result_key = [[0] * 5] * 5 # 얕은 복사로 인해 값 변경에 오류 발생
    result_key = [[0 for p in range(5)] for q in range(5)]
    for p in range(0,5):
        for q in range(0,5): result_key[p][q] = key_arr[(5*p)+q]

    return result_key
            
    

### 수정된 메세지의 글자쌍에 대해 키를 이용하여 암호화하는 메소드
def getResultMsg(pairs, key):
    # case 1) 암호판의 같은 행에 존재하는 쌍이면 우측 한 칸씩 밀어서
    # case 2) 같은 행에 존재하지 않고 같은 열에 존재하면 아래로 한 칸씩 밀어서
    # case 3) 서로 다른 행/열에 존재하는 경우 서로의 열값을 바꾼 위치로
    pair_arr = []
    for i in range(0,len(pairs)-1,2):
        pair_arr.append(pairs[i]+pairs[i+1])

    result = ''
    for pair in pair_arr:
        result += getModifiedKey(pair, key)

    print(result)


def getModifiedKey(pair, key):
    location = [
        [-1, -1],  # 첫번째 글자의 위치
        [-1, -1]   # 두번째 글자의 위치
    ]

    for p in range(0,5):
        for q in range(0,5):
            if pair[0] == key[p][q]: 
                location[0][0] = p 
                location[0][1] = q
            if pair[1] == key[p][q]: 
                location[1][0] = p 
                location[1][1] = q

    if location[0][0] == location[1][0]: 
        # case 1) 암호판의 같은 행에 존재하는 쌍이면 우측 한 칸씩 밀어서
        location[0][1] = (location[0][1] + 1)%5
        location[1][1] = (location[1][1] + 1)%5
        
    elif location[0][1] == location[1][1]: 
        # case 2) 같은 행에 존재하지 않고 같은 열에 존재하면 아래로 한 칸씩 밀어서
        location[0][0] = (location[0][0] + 1)%5
        location[1][0] = (location[1][0] + 1)%5
        
    else: 
        # case 3) 서로 다른 행/열에 존재하는 경우 서로의 열값을 바꾼 위치로
        temp = location[0][1]
        location[0][1] = location[1][1]
        location[1][1] = temp
    
    return (key[location[0][0]][location[0][1]] + key[location[1][0]][location[1][1]])

# 1. 메세지/키 입력받기
msg_input = input()
key_input = input()

# 2. 2글자 쌍으로 나누기
pairs = getPair(msg_input)

# 3. 입력받은 키를 5*5의 형태로 변경
key = getKey(key_input)

# 4. 쌍마다 암호화
getResultMsg(pairs, key)
