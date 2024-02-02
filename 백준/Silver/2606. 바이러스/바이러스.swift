import Foundation

func checkVirus() -> Bool {
    // 바이러스 걸린 애 있으면 true, 없으면 false 반환
    for a in pairs {
        if !checked.contains(a) { 
            let temp = a.sorted()
            if temp[0] == 1 { 
                virus.insert(temp[1]) 
                checked.append(a)
                return true
            }
            if virus.contains(temp[0]) {
                virus.insert(temp[1])
                checked.append(a)
                return true
            } else if virus.contains(temp[1]) {
                virus.insert(temp[0])
                checked.append(a)
                return true
            } 
        }
        
    }
    return false
}


let n = Int(readLine()!)!
let pair_num = Int(readLine()!)!

var pairs:[[Int]] = []
for _ in 0..<pair_num {
    var temp = readLine()!.split(separator: " ").map{Int(String($0))!}
    temp.sort()
    pairs.append(temp)
}


var virus: Set<Int> = []

var check = true
var checked: [[Int]] = []
while check { check = checkVirus() }

print(virus.count)

