import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let temps = readLine()!.split(separator: " ").map{Int(String($0))!}

var max = -1000000
for i in 0..<(input[0]-input[1]+1) {
    var sum = 0
    for j in i..<(i+input[1]) { sum += temps[j] }
    if max < sum { max = sum }
}
print(max)