import Foundation

var nums:[Int] = []
for n in 1...20 { nums.append(n) }

for _ in 0..<10 {
    var ab = readLine()!.split(separator: " ").map{Int(String($0))!}
    ab[0] -= 1
    ab[1] -= 1
    let m = (ab[1]-ab[0])/2 + 1
    for i in 0..<m {
        let temp = nums[ab[0]+i]
        nums[ab[0]+i] = nums[ab[1]-i]
        nums[ab[1]-i] = temp
    }
}

var answer = ""
for n in nums { answer += "\(n) "}
print(answer)