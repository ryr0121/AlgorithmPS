import Foundation

func solution(_ my_string:String) -> Int {
    var num_str:[String] = []
    for i in 0...9 { num_str.append(String(i)) }
    
    var str_arr = my_string.map{String($0)}
    var result = 0
    var temp = ""
    for s in str_arr {
        if num_str.contains(s) { temp += s }
        else {
            if temp.count > 0 {
                result += Int(temp)!
                temp = ""    
            }  
        }
    }
    if temp.count > 0 { result += Int(temp)! }
    return result
}