import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!
let x_list = readLine()!.split(separator: " ").map{Int($0)!}

var diff:[Int] = []
diff.append(abs(x_list.first!-0))
diff.append(abs(x_list.last!-N))
if (x_list.count > 1) {
    for i in 0..<(M-1) {
        let mid = ceil(Double(x_list[i+1]-x_list[i])/2.0)
        diff.append(Int(mid))
    }
}
print(diff.max()!)