# 문제풀이 흐름 정리
# 파이썬의 우선순위 큐(힙)는 요소가 추가될 때마다 값의 비교를 통해 
# 자동으로 최솟값이 루트 노드로 설정되는 "min-heap"이라는 특징 이용
# 시간 복잡도
#   heapq.heappush, heapq.heappop -> O(logT) 이므로, O(log(10^5)) = 5

import sys
import heapq

h = []

for _ in range(int(input())):
    x = int(sys.stdin.readline())
    if x:
        heapq.heappush(h,x) 
    else:
        if len(h) == 0:
            print(0)
        else:
            print(heapq.heappop(h))