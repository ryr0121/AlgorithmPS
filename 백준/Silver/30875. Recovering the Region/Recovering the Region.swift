let N = Int(readLine()!)!
var nums:[[Int]] = []
for _ in 0..<N { nums.append(readLine()!.split(separator: " ").map{Int($0)!}) }

for i in 0..<N {
    var tmp = ""
    for _ in 0..<N { tmp += "\(i+1) " }
    print(tmp)
}