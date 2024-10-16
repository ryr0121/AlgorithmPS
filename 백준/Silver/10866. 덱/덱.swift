import Foundation

let N = Int(readLine()!)!
var deque:[Int] = []

for _ in 0..<N {
    let cmd = readLine()!.split(separator: " ").map{String($0)}
    switch (cmd[0]) {
        case "push_front":
        var temp = [Int(cmd[1])!]
        for n in deque { temp.append(n) }
        deque = temp

        case "push_back": deque.append(Int(cmd[1])!)

        case "pop_front":
        if (deque.isEmpty) { print(-1) }
        else { print(deque.removeFirst()) }

        case "pop_back":
        if (deque.isEmpty) { print(-1) }
        else { print(deque.removeLast()) }

        case "size": print(deque.count)

        case "empty": print(deque.isEmpty ? 1 : 0)

        case "front":
        if (deque.isEmpty) { print(-1) }
        else { print(deque[0]) }

        case "back":
        if (deque.isEmpty) { print(-1) }
        else { print(deque[deque.count-1]) }

        default: break
    }
}