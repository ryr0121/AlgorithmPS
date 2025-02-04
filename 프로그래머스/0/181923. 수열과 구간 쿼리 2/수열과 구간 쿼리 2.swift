import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var answer:[Int] = []
    for query in queries {
        var min = 10000000
        for i in query[0]...query[1] {
            if(query[2] < arr[i] && min > arr[i]) { min = arr[i] }
        }
        answer.append((min == 10000000) ? -1 : min)
    }
    return answer
}