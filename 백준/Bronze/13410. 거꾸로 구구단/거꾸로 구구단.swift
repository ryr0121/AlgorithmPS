import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}

var max = 0
for i in 1...input[1] {
    var list = String(input[0]*i).map{String($0)}
    list.reverse()
    let reversed_num = Int(list.joined())!
    max = (reversed_num > max) ? reversed_num : max
}
print(max)