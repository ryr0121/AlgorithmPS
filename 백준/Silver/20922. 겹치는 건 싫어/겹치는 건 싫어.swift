let inputN = readLine()!.split(separator: " ").map{Int($0)!}
let targetArr = readLine()!.split(separator: " ").map{Int($0)!}
var hash: [Int: Int] = [:]
var resArr: [Int] = []
var tempArr: [Int] = []
for i in 0..<inputN[0] {
    if hash[targetArr[i]] != nil {
        if hash[targetArr[i]]! >= inputN[1] {
            resArr.append(tempArr.count)
            var postArr = Array(tempArr[0...tempArr.firstIndex(of: targetArr[i])!])
            postArr.map{hash[$0]! -= 1}
            tempArr = Array(tempArr[(tempArr.firstIndex(of: targetArr[i])! + 1)...])
        }
        hash[targetArr[i]]! += 1
    }else {
        hash[targetArr[i]] = 1
    }
    tempArr.append(targetArr[i])
}
if !tempArr.isEmpty {
    resArr.append(tempArr.count)
}
print(resArr.max()!)