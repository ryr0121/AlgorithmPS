import Foundation

func solution(_ num_list:[Int]) -> Int {
    var evenStr = ""
    var oddStr = ""
    for n in num_list {
        if (n%2 == 0) { evenStr += String(n) }
        else { oddStr += String(n) }
    }
    return Int(evenStr)! + Int(oddStr)!
}