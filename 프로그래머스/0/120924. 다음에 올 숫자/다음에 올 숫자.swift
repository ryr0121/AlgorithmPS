import Foundation

func solution(_ common:[Int]) -> Int {
    if common[1]-common[0] == common[2]-common[1] {
        return common[common.count-1] + (common[1]-common[0])
    } else {
        return common[common.count-1] * (common[1]/common[0])
    }
}