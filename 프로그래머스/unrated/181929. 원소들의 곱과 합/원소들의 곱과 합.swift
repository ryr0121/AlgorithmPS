import Foundation

func solution(_ num_list:[Int]) -> Int {
    var temp1 = 1
    var temp2 = 0
    
    for n in num_list { temp1 *= n }
    for n in num_list { temp2 += n }
    temp2 *= temp2
    
    return (temp1 < temp2) ? 1 : 0
}