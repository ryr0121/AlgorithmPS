import sys
import heapq

h = []

for _ in range(int(input())):
    x = int(sys.stdin.readline())
    if x:
        heapq.heappush(h, (abs(x),x))
    else:
        if len(h) == 0:
            print(0)
        else:
            print(h[0][1])
            heapq.heappop(h)