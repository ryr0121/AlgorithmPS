let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int($0)!}
var line = Array(repeating: 0, count: N)

for i in 0..<N {
    var zero = 0
    for j in 0..<N {
        if zero == arr[i] && line[j] == 0 {                                
            line[j] = i+1; break;
        }
        if line[j] == 0 { zero += 1 }
    }
}
var res = ""
for num in line { res += "\(num) " }
print(res)