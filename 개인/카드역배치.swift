import Foundation

var nums = [Int](1...20).map{String($0)}
for _ in 0..<10 {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let half = (input[1]-input[0])/2+1
    for i in 0..<half {
        let temp = nums[input[0]+i-1]
        nums[input[0]+i-1] = nums[input[1]-i-1]
        nums[input[1]-i-1] = temp
    }
}
print(nums.joined(separator: " "))
