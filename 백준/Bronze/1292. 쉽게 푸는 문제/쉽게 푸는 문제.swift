import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr: [Int] = []
var result = 0

for i in 0 ..< (input[0]+input[1]) {
    for _ in 0..<i { arr.append(i) }
}

for i in input[0]-1..<input[1] { result += arr[i] }
print(result)