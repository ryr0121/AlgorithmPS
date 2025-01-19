let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map{Int($0)!}
var B = readLine()!.split(separator: " ").map{Int($0)!}
A.sort()
B.sort()

var answer = 0
for i in 0..<N { answer += A[i]*B[N-1-i] }
print(answer)