import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result:[String] = []
    for q in quiz {
        var arr = q.split(separator: " ")
        if arr[1] == "+" {
            if Int(arr[0])! + Int(arr[2])! == Int(arr[4])! { result.append("O") }
            else { result.append("X") }
        } else if arr[1] == "-" {
            if Int(arr[0])! - Int(arr[2])! == Int(arr[4])! { result.append("O") }
            else { result.append("X") }
        }
    }
    return result
}