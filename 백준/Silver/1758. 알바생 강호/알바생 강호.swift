import Foundation

let n = Int(readLine()!)!
var tips: [Int] = []
for _ in 0..<n { tips.append(Int(readLine()!)!) }
tips.sort(by: >)

var result = 0
for i in 0..<n {
    let temp = tips[i] - i
    result += temp < 0 ? 0 : temp
}
print(result)