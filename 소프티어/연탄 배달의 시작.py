# 문제링크 - https://softeer.ai/practice/7626

def solution(arr):
    min_dist = 1000000
    dist_list = []
    
    for p in range(0,len(arr)):
        for q in range(p+1,len(arr)):
            dist_list.append([int(arr[p]), int(arr[q])])
            if abs(int(arr[p]) - int(arr[q])) < min_dist:
                min_dist = abs(int(arr[p]) - int(arr[q]))

    cnt = 0
    for d in dist_list:
        if abs(d[0]-d[1]) == min_dist: cnt += 1

    print(cnt)

_ = int(input())
arr = input().split()
solution(arr)
