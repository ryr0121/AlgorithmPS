import Foundation

func solution(_ n:Int) -> [Int] {
    var result:[Int] = []
    var num = n
    for d in 2...n {
        if num%d == 0 { 
            result.append(d); 
            while num%d == 0 { num /= d }
        }
    }
    return result
}