import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    var myString = my_string.map { String($0) }
    var result = ""
    for c in myString {
        result += (c == alp) ? c.uppercased() : c
    }
    return result
}