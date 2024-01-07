import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var arr: [Int] = []
    for str in strlist {
        str.map { String($0) }
        arr.append(str.count)
    }
    return arr
}