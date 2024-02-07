import Foundation

func solution(_ array:[Int]) -> Int {
    var result = 0
    for a in array {
        let str = String(a).map{String($0)}
        for s in str { result += (s=="7") ? 1 : 0 }
    }
    return result
}