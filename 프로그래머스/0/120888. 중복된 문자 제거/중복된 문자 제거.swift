import Foundation

func solution(_ my_string:String) -> String {
    var chars: [String] = []
    var str_arr = my_string.map{String($0)}
    
    for s in str_arr {
        if !chars.contains(s) { chars.append(s) }
    }
    return chars.joined(separator: "")
}