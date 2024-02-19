import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var result: [Int] = []

    if (num%2 == 0) { 
        var s = (total/num) - (num/2-1)
        for n in s ..< (s+num) { result.append(n) }
        return result
        
    } else {
        var s = (total/num) - (num/2)
        for n in s ..< (s+num) { result.append(n) }
        return result
    }
}