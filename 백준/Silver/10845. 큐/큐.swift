import Foundation

let n = Int(readLine()!)!
var queue:[Int] = []

for _ in 0..<n {
    let cmd = readLine()!.split(separator: " ").map{String($0)}
    switch (cmd[0]) {
        case "push": queue.append(Int(cmd[1])!)

        case "pop":
        if (queue.isEmpty) { print(-1) }
        else { print(queue.removeFirst()) }
        
        case "size": print(queue.count)

        case "empty": print(queue.isEmpty ? 1 : 0)
        
        case "front":
        if (queue.isEmpty) { print(-1) }
        else { print(queue[0]) }
        
        case "back":
        if (queue.isEmpty) { print(-1) }
        else { print(queue[queue.count-1]) }

        default: break
    }
}