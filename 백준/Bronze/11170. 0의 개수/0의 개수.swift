import Foundation

var sums = Array(repeating: 0, count: 1000002)
sums[1] = 1
for i in 1...1000000 {
    var c = 0
    var s = i
    while s > 0 {
        c += (s%10 == 0) ? 1 : 0
        s /= 10
    }
    sums[i+1] += sums[i] + c
}

let n = Int(readLine()!)!
for _ in 0..<n {
    let q = readLine()!.split(separator: " " ).map{Int(String($0))!}
    print(sums[q[1]+1]-sums[q[0]])
}