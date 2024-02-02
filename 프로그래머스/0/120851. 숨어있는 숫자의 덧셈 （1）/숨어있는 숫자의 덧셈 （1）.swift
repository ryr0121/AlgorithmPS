import Foundation

func solution(_ my_string:String) -> Int {
    var num_arr: [String] = []
    for i in 0...9 { num_arr.append(String(i)) }
    
    var str_arr = my_string.map {String($0)}
    var sum = 0
    for s in str_arr {
        if num_arr.contains(s) { sum += Int(s)! }
    }
    return sum
}