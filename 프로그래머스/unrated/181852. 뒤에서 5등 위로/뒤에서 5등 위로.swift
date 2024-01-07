import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var arr = num_list.sorted()
    var temp: [Int] = []
    for i in 5..<arr.count { temp.append(arr[i]) }
    return temp
}