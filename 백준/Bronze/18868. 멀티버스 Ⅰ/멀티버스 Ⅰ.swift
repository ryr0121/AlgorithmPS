import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var infos:[[Int]] = []
for _ in 0..<input[0] {
    infos.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var orders:[[Int]] = []
for i in 0..<input[0] {
    let sorted_info = infos[i].sorted()
    var order:[Int] = []
    for j in 0..<input[1] {
        order.append(sorted_info.firstIndex(of: infos[i][j])!+1)
    }
    orders.append(order)
}

var cnt = 0
for i in 0..<input[0] {
    for j in 0..<input[0] {
        if i == j { continue }
        if orders[i] == orders[j] { cnt += 1 }
    }
}
print(cnt/2)