let nm = readLine()!.split(separator: " ").map{Int($0)!}
let N = nm[0]
let M = nm[1]
let arr = readLine()!.split(separator: " ").map{Int($0)!} // 0-indexed
var d = Array(repeating: 0, count: N+1) // 1-indexed
d[1] = arr[0]
for i in 2...N { d[i] = d[i-1] + arr[i-1] }

for _ in 0..<M {
    let ij = readLine()!.split(separator: " ").map{Int($0)!}
    let i = ij[0]
    let j = ij[1]
    print(d[j]-d[i-1])
}