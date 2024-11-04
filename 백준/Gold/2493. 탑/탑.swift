let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int($0)!}
var stack:[[Int]] = [] // 위치, 높이
var res = ""

for i in 1...N {
    let top = arr[i-1]
    while(!stack.isEmpty) {
        if(stack[stack.count-1][1] > top) {
            res += "\(stack[stack.count-1][0]) "
            break
        }
        stack.removeLast()
    }
    if(stack.isEmpty) { res += "0 " }
    stack.append([i,top])
}
print(res)