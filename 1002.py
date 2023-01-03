import math

n = int(input())

for i in range(n):
    x1, y1, r1, x2, y2, r2 = map(int, input().split())
    dist = math.sqrt((x2-x1)**2 + (y2-y1)**2)  # 두 점 사이의 거리
    sumR = r1 + r2  # 반지름의 합

    # 같은 위치에 있는 경우 -> 무한대 / 한 점에서 모임 / 한 원이 다른 하나를 포함
    if (x1 == x2) & (y1 == y2):
        if r1 == r2:
            print(-1)
        elif (r1 == 0) & (r2 == 0):
            print(1)
        else: 
            print(0)

    # 한 점에서 내접
    elif abs(r1-r2) == dist:
        print(1)
        
    # 하나가 다른 하나를 포함하지만 안 만남
    elif abs(r1-r2) > dist:
        print(0)   
    
    # 두 점에서 외접
    elif dist < sumR:
        print(2)

    # 한 점에서 외접
    elif dist == sumR:
        print(1)

    # 안 만남
    elif dist > sumR:
        print(0)