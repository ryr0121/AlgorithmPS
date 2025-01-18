// 1-indexed
let n = Int(readLine()!)!
var red = Array(repeating: 0, count: n+1)
var green = Array(repeating: 0, count: n+1)
var blue = Array(repeating: 0, count: n+1)
for i in 1...n {
    let c = readLine()!.split(separator: " ").map{Int($0)!}
    red[i] = c[0]
    green[i] = c[1]
    blue[i] = c[2]
}

var d = Array(repeating: Array(repeating: 0, count: 4), count: n+1)
d[1][1] = red[1]
d[1][2] = green[1]
d[1][3] = blue[1]

for i in 2...n {
    d[i][1] = min(d[i-1][2], d[i-1][3]) + red[i]
    d[i][2] = min(d[i-1][1], d[i-1][3]) + green[i]
    d[i][3] = min(d[i-1][1], d[i-1][2]) + blue[i]
}

print(min(d[n][1], d[n][2], d[n][3]))