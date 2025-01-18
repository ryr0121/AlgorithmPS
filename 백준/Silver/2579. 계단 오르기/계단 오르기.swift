let n = Int(readLine()!)!
var stairs = Array(repeating: 0, count: n+1)
var d = Array(repeating: Array(repeating: 0, count: 3), 
              count: n+1)
for i in 1...n { stairs[i] = Int(readLine()!)! }

if(n == 1) { print(stairs[1]) }
else if(n == 2) { print(stairs[1] + stairs[2]) }
else {
    d[1][1] = stairs[1]
    d[1][2] = 0
    d[2][1] = stairs[2]
    d[2][2] = stairs[1] + stairs[2]
    
    for i in 3...n {
        d[i][1] = max(d[i-2][1], d[i-2][2]) + stairs[i]
        d[i][2] = d[i-1][1] + stairs[i]
    }
    print(max(d[n][1], d[n][2]))
}