import Foundation

func solution(_ before:String, _ after:String) -> Int {
    var before_arr = before.map{String($0)}
    var after_arr = after.map{String($0)}
    
    for i in 0..<after_arr.count {
        if before_arr.contains(after_arr[i]) {
            before_arr[getIndex(after_arr[i], before_arr)] = ""
        }
    }
    if before_arr.joined(separator: "") == "" { return 1 }
    else { return 0 }
}

func getIndex(_ chr: String, _ arr: [String]) -> Int {
    for i in 0..<arr.count { if arr[i] == chr { return i } }
    return -1
}