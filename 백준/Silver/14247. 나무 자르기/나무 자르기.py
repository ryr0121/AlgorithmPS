n = int(input())                       
Hi = list(map(int, input().split()))    
Ai = list(map(int,input().split()))  

arr = []
total = 0

for i in range(n):                 
    arr.append([Hi[i], Ai[i]])

arr.sort(key = lambda x:x[1])      

for i in range(n):
    total += arr[i][0] + arr[i][1] * i

print(total)