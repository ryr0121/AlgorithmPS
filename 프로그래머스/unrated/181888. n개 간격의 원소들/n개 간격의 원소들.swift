import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var arr: [Int] = []
    var i = 0
    while i < num_list.count {
        arr.append(num_list[i])
        i += n
    }
    return arr
}