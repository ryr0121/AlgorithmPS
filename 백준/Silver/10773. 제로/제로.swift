import Foundation

// 입력받기
var n = Int(readLine()!)!
var money_arr:[Int] = []
for _ in 0..<n { money_arr.append(Int(readLine()!)!) }

// 유효한 액수만 구하기
var arr: [Int] = []
for m in money_arr {
    if m == 0 { arr.remove(at: arr.count-1) } 
    else { arr.append(m) }
}

// 돈 합계 구하기
var sum = 0
for m in arr { sum += m }
print(sum)