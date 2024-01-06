import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    // var arr: [Int] = []
    // for i in n-1..<num_list.count {
    //     arr.append(num_list[i])
    // }
    // return arr
    return Array(num_list[(n-1)...])
}