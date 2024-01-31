# 문제링크 - https://softeer.ai/practice/7368

def solution(a,b,d):
    result = 2*d  # 왕복으로 d만큼 다녀와야 하기 때문
    
    # 터치 전 총 대기 시간
    if (d%a) == 0: result += (int(d/a)-1)*b
    else: result += int(d/a)*b

    # 터치 후 총 대기 시간
    if (d%b) == 0: result += (int(d/b)-1)*a
    else: result += int(d/b)*a
    
    print(result)

a,b,d = input().split()
solution(int(a), int(b), int(d))
