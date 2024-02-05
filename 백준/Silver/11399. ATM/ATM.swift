import Foundation

let n = Int(readLine()!)!
var times = readLine()!.split(separator: " ").map { Int(String($0))! }
times.sort()

var result = [times[0]]
for i in 1..<n { result.append(result[i-1] + times[i]) }

var sum = 0
for r in result { sum += r }
print(sum)