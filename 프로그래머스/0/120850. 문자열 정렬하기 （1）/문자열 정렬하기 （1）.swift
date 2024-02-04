import Foundation

func solution(_ my_string:String) -> [Int] {
    var str_arr = my_string.map{String($0)}
    var nums:[String] = []
    for i in 0...9 { nums.append(String(i)) }

    var result: [Int] = []    
    for s in str_arr {
        if nums.contains(s) { result.append(Int(s)!) }
    }
    return result.sorted()
}