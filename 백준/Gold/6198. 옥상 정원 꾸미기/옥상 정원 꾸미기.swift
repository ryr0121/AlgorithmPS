let N = Int(readLine()!)!
var stack:[Int] = []
var res = 0

for _ in 0..<N {
    let h = Int(readLine()!)!
    while(!stack.isEmpty && stack[stack.count-1] <= h) { stack.removeLast() }
    stack.append(h)
    res += stack.count - 1
}
print(res)