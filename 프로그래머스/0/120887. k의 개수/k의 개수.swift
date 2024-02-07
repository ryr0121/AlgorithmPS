import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var sum = 0
    for n in i...j {
        let n_str = String(n).map{String($0)}
        for s in n_str { sum += (s == String(k)) ? 1 : 0 }
    }
    return sum
}