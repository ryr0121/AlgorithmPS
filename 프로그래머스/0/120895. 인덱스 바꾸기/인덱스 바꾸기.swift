import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var str_arr = my_string.map{String($0)}  
    var result = ""
    for i in 0..<str_arr.count {
        if i == num1 { result += str_arr[num2] }
        else if i == num2 { result += str_arr[num1] }
        else { result += str_arr[i] }
    }
    return result
}