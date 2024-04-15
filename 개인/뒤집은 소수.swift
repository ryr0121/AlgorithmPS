import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { String($0) }
var results: [String] = []

for i in 0..<n {
   let temp = nums[i].split(separator: "").map { String($0) }
   let rev = Int(temp.reversed().joined(separator: ""))!
   if rev == 1 { continue }
   
   var flag = true
   for j in 2..<rev {
       if rev%j == 0 { flag = false; break; }
   }
   if flag { results.append(String(rev)) }
}
print(results.joined(separator: " "))
