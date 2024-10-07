import Foundation

var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var nums = input.sorted().map{String($0)}
print(nums.joined(separator: " "))