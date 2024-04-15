import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var results: Set<Int> = Set<Int>()

for i in 0..<nums.count {
   for p in i+1..<nums.count {
       for q in p+1..<nums.count {
           results.insert(nums[i]+nums[p]+nums[q])
       }
   }
}
var temp = Array(results)
temp.sort(by: >)
print(temp[input[1]-1])
