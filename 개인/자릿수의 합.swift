import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { String($0) }
var max = 0
var result = ""

for n in nums {
   let arr = n.split(separator: "").map { Int($0)! }
   let sum = arr.reduce(0) { $0+$1 }
   if max < sum {
       max = sum
       result = n
   }
}
print(result)
