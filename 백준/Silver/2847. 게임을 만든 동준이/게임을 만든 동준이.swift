let n = Int(readLine()!)!
var points = Array(repeating: 0, count: n)
for i in 0..<n { points[i] = Int(readLine()!)! }

var answer = 0
var before_p = points[n-1]
for i in stride(from: n-2, to: -1, by: -1) {
    if(before_p <= points[i]) {
        answer += points[i]-(before_p-1)
        points[i] = before_p-1
    }
    before_p = points[i]
}
print(answer)