import Foundation

func solution(_ my_string:String) -> String {
    var strList = my_string.map { String($0) }
    return strList.reversed().joined(separator: "")
}