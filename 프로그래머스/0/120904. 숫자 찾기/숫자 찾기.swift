import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    var num_str = String(num).map{String($0)}
    for i in 0..<num_str.count {
        if num_str[i] == String(k) { return i+1 }
    }
    return -1
}