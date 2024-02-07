import Foundation

func solution(_ array:[Int]) -> Int {
    var cnt:[Int:Int] = [:]
    for a in array { cnt[a] = 0 }
    
    for a in array { cnt[a] = cnt[a]! + 1 }
    
    var max_cnt = 0
    for k in cnt.keys { if cnt[k]! > max_cnt { max_cnt = cnt[k]! } }
    
    var max:[Int] = []
    for k in cnt.keys { if cnt[k]! == max_cnt { max.append(k) } }
    
    return max.count > 1 ? -1 : max[0]
}