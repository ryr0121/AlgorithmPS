import Foundation

func solution(_ my_string:String) -> String {
    let removes = ["a","e","i","o","u"]
    let str_arr = my_string.map{ String($0) }

    var result = ""
    for s in str_arr {
        if removes.contains(s) { continue }
        else { result += s }
    }
    return result
}