var d = Array(repeating: 0, count: 12)
d[1] = 1
d[2] = 2
d[3] = 4
for i in 4...11 { d[i] = d[i-1] + d[i-2] + d[i-3] }

let T = Int(readLine()!)!
for _ in 0..<T { print(d[Int(readLine()!)!]) }