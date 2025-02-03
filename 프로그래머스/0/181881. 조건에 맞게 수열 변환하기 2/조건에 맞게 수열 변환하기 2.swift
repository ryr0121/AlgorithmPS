import Foundation

func solution(_ arr:[Int]) -> Int {
    var cop:[Int] = []
    for n in arr { cop.append(n) }
    
    var len = arr.count
    var x = 0
    var diff_cnt = 1 // 각 인덱스의 값이 같으면 +1, 다르면 +0
    while(true) {        
        if(diff_cnt == 0) { break }
        x += 1
        diff_cnt = 0
        for i in 0..<len {
            var before = cop[i]
            if(cop[i] >= 50 && cop[i]%2 == 0) { cop[i] /= 2 }
            else if(cop[i] < 50 && cop[i]%2 == 1) { cop[i] = cop[i]*2+1 }
            diff_cnt += (before != cop[i]) ? 1 : 0
        }
    }
    return x-1
}