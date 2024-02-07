import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var eat_arr = readLine()!.split(separator: " ").map{Int(String($0))!}
eat_arr.sort()

var height = input[1]
for i in 0..<input[0] {
    if eat_arr[i] <= height { height += 1 }
    else { break }
}
print(height)