# 문제 링크 - https://softeer.ai/practice/6283

arr = list(map(int, input().split()))

result = 'ascending'
if (arr[7] - arr[0]) < 0 : 
    result = 'descending'
    arr.reverse()
    
for i in range(0,8):
    if arr[i] != (i+1): 
        result = 'mixed'
        break
        
print(result)
