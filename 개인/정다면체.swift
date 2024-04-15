import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = [Int](1...input[0])
let m = [Int](1...input[1])
var nums: [Int:Int] = [:]

for i in n {
   for j in m {
       if nums[i+j] == nil { nums[i+j] = 1 }
       else { nums[i+j]! += 1 }
   }
}

let max = nums.values.sorted(by: >).max()
var results:[String] = []

for k in nums.keys.sorted() {
   if nums[k]! == max { results.append(String(k)) }
}
print(results.joined(separator: " "))
