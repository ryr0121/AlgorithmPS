import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    var str_arr = my_string.map {String($0)}
    var result = ""
    for s in str_arr {
        if s != letter { result += s }
    }
    return result
}