import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var temp:[Int] = []
    for n in arr {
        if (n<50 && n%2 != 0) {
            temp.append(n*2)
        } else if (n>=50 && n%2 == 0) {
            temp.append(n/2)
        } else {
            temp.append(n)
        }
    }
    return temp
}