import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dict:[Int:Int] = [:]
    for t in tangerine {
        if(dict[t] == nil) { dict[t] = 1 }
        else { dict[t]! += 1 }
    }
    let s_dict = dict.sorted { $0.value > $1.value }
    
    var sum = 0
    var answer = 0
    for d in s_dict {
        sum += d.value
        answer += 1
        if(sum >= k) { return answer }
    }
    return answer
}