import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var result = ""
    let str_list = my_string.map { String($0) }
    for i in 0..<str_list.count {
        for _ in 0..<n { result += str_list[i] }
    }
    return result
}