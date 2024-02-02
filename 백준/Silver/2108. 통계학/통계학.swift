import Foundation

var n = Int(readLine()!)!
var nums: [Int] = []
for _ in 0..<n { nums.append(Int(readLine()!)!) }

nums.sort()

/// 산술평균 ///
var sum = 0
for i in 0..<n { sum += nums[i] }
print(Int(round(Double(sum)/Double(n))))

/// 중앙값 ///
if (n%2 == 0) { print(nums[n/2-1]) }
else { print(nums[n/2]) }

/// 최빈값 ///
// 숫자:개수
var cnt_dict: [Int:Int] = [:]
for i in 0..<n {
    if !cnt_dict.keys.contains(nums[i]) {
        cnt_dict[nums[i]] = 0
    }
}

// 각 숫자별 개수 카운팅
for i in 0..<n { cnt_dict[nums[i]] = cnt_dict[nums[i]]! + 1 }

// 개수 중 최대값 구하고, 개수가 최대값이랑 같은 숫자들 구하기
var max_cnt = 0
for k in cnt_dict.keys {
    if cnt_dict[k]! > max_cnt { max_cnt = cnt_dict[k]! }
}

var results: [Int] = []
for k in cnt_dict.keys {
    if cnt_dict[k]! == max_cnt { results.append(k) }
}
results.sort()
if results.count > 1 { print(results[1]) }
else { print(results[0]) }

/// 범위 ///
print(nums.max()!-nums.min()!)