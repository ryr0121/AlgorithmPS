import Foundation

var proc1:[[Int]] = []
var proc2:[[Int]] = []

var info = readLine()!.split(separator: " ").map{Int(String($0))!}
for _ in 0..<info[0] { 
    proc1.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

info = readLine()!.split(separator: " ").map{Int(String($0))!}
for _ in 0..<info[0] { 
    proc2.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var row:[Int] = []
for p in 0..<proc1.count {
    var temp:[Int] = []
    for q in 0..<proc2[0].count {
        var sum = 0
        for i in 0..<proc1[0].count {
            sum += proc1[p][i] * proc2[i][q]
        }
        temp.append(sum)
    }
    var result = ""
    for n in temp { result += "\(n) " }
    print(result)
}