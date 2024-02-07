import Foundation

func solution(_ my_string:String) -> Int {
    let arr = my_string.split(separator: " ")
    var result = 0
    var cal_num = -1

    for a in arr {
        if ["+", "-"].contains(a) {
            cal_num = (a == "+") ? 1 : 0
        } else {
            if cal_num == 0 { result -= Int(a)! }
            else { result += Int(a)! }
        }
    }
    return result
}