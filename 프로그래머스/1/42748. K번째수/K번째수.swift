import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    var temp: [Int] = []
    
    for c in commands {
        for i in c[0]...c[1] { temp.append(array[i-1]) }
        temp.sort()
        result.append(temp[c[2]-1])
        temp.removeAll()
    }
    return result
}