import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    var str_arr = my_string.map{String($0)}
    
    for s in str_arr {
        if Int(UnicodeScalar(s)!.value) > 96 {
            result += s.uppercased()
        } else {
            result += s.lowercased()
        }
    }
    
    return result
}