import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var result = 0
    var sum_arr = [0]   // 반복문 시작을 위해 0 하나 추가
    
    for n in numbers {
        var temp: [Int] = []
        for s in sum_arr {
            temp.append(s+n)
            temp.append(s-n)
        }
        sum_arr = temp
    }
    
    for s in sum_arr { result += (s == target) ? 1 : 0 }
    
    return result
}