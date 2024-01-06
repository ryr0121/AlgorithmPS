import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var temp = my_string.map{ String($0) }
    var result = ""
    for i in 0..<index_list.count {
        result += temp[index_list[i]]
    }
    return result
}