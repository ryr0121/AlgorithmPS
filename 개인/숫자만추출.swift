import Foundation

let nums = [Int](0...9).map{String($0)}
let input = readLine()!.split(separator: "").map{String($0)}
var temp:[String] = []
for c in input {
    if nums.contains(c) { temp.append(c) }
}
let answer = Int(temp.joined(separator: ""))!
var cnt = 0
for i in 1...answer { cnt += (answer%i == 0) ? 1 : 0 }
print(answer)
print(cnt)
