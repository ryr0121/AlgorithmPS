import Foundation

func solution(_ sides:[Int]) -> Int {
//     var maxIdx = -1
//     var max = 0
//     var sum = 0
//     var other:[Int] = []
    
//     for i in 0..<sides.count {
//         if max < sides[i] { 
//             max = sides[i];
//             maxIdx = i 
//         }
//     }
//     for i in 0..<sides.count {
//         if (i != maxIdx) { other.append(sides[i]) }
//     }
    
//     other.map{ sum += Int($0) }
//     return sum > max ? 1 : 2
    var sideArr = sides.sorted()
    return ((sideArr[0] + sideArr[1]) > sideArr[2]) ? 1 : 2
}