let N = Int(readLine()!)!
var arr:[Int] = []
for _ in 0..<N { arr.append(Int(readLine()!)!) }
arr.sort();
for n in arr { print(n) }