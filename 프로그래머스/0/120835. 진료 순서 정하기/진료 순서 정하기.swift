import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var sorted_e = emergency.sorted(by: >)
    var result: [Int] = []
    for e in emergency {
        for i in 0..<sorted_e.count {
            if e == sorted_e[i] { result.append(i+1); break; }
        }
    }
    return result
}