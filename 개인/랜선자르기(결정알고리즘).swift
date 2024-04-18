import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var lens: [Int] = []
for _ in 0..<input[0] { lens.append(Int(readLine()!)!) }

var s = 1
var e = lens.max()!
var m = (s+e)/2

var max_len = 0
while s <= e {
    let cnt = getCount(m, lens)
    if cnt >= input[1] { s = m + 1; max_len = m }
    else { e = m - 1 }
    m = (s+e)/2
}

print(max_len)

func getCount(_ len: Int, _ nums: [Int]) -> Int {
    var cnt = 0
    for num in nums { cnt += num/len }
    return cnt
}
