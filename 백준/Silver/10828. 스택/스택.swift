import Foundation

let n = Int(readLine()!)!
var stack:[Int] = []

for _ in 0..<n {
    let cmd = readLine()!.split(separator: " ").map{String($0)}
    switch(cmd[0]) {
        case "push": stack.append(Int(cmd[1])!)
        case "top": 
        if (stack.count > 0) { print(stack[stack.count-1]) }
        else { print(-1) }
        case "size": print(stack.count)
        case "empty": print((stack.count == 0) ? 1 : 0)
        case "pop": 
        if (stack.count > 0) { print(stack.removeLast()) }
        else { print(-1) }
        default: break
    }
}