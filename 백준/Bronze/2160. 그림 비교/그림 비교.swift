import Foundation

let n = Int(readLine()!)!
var pics:[[String]] = []
for _ in 0..<(5*n) {
    pics.append(readLine()!.map{String($0)})
}

var res = [-1,-1]
var min_diff = 1000
var ranges:[[Int]] = []
for i in 0..<n { ranges.append([i*5, (i+1)*5]) }

for i in 0..<n {
    var pic1:[[String]] = []
    for k in ranges[i][0]..<ranges[i][1] { pic1.append(pics[k]) }
    
    for j in (i+1)..<n {
        var pic2:[[String]] = []
        for k in ranges[j][0]..<ranges[j][1] { pic2.append(pics[k]) }
        
        let diff_cnt = getDiffCnt(pic1,pic2)
        if min_diff > diff_cnt {
            min_diff = diff_cnt
            res = [i+1, j+1]
        }
    }
}
res.sort()
print("\(res[0]) \(res[1])")

func getDiffCnt(_ pic1:[[String]], _ pic2:[[String]]) -> Int {
    var diff_cnt = 0
    for i in 0..<5 {
        for j in 0..<7 {
            if pic1[i][j] != pic2[i][j] { diff_cnt += 1 }
        }
    }
    return diff_cnt
}