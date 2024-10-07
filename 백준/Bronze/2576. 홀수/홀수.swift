import Foundation

var nums:[Int] = []
for _ in 0..<7 { nums.append(Int(readLine()!)!) }

var min_odd = 1000
var odd_sum = 0
for n in nums {
    if (n%2 == 1) {
        odd_sum += n
        min_odd = (min_odd > n) ? n : min_odd
    }
}
if (odd_sum > 0) {
    print(odd_sum)
    print(min_odd)
} else {
    print(-1)
}