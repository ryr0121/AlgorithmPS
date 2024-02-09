import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var avg:[[Double]] = [] // [평균, 카운팅]
    for s in score {
        var idx = -1
        for i in 0..<avg.count {
            if avg[i][0] == Double(s[0]+s[1])/2.0 { idx = i }
        }
        if idx > -1 { avg[idx][1] += 1.0 }
        else { avg.append([Double(s[0]+s[1])/2.0, 1.0]) }
    }
    avg.sort {$0[0] > $1[0]}
    
    var result: [Int] = []
    for s in score {
        var temp = 1.0
        for a in avg {
            if Double(s[0]+s[1])/2.0 == a[0] { break }
            else { temp += a[1] }
        }
        result.append(Int(temp))
    }
    return result
}