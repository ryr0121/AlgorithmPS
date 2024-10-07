import Foundation

var nums:[Int] = []
var sum = 0
for _ in 0..<5 { 
    let n = Int(readLine()!)!
    sum += n
    nums.append(n)
}
nums.sort()

print(sum/5)
print(nums[2])