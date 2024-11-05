let N = Int(readLine()!)!
var a = readLine()!.split(separator: " ").map{Int($0)!}
var stack:[Int] = []

for i in 0..<N {
    while(!stack.isEmpty && a[stack[stack.count-1]] < a[i]) {
        a[stack.removeLast()] = a[i]
    }
    stack.append(i)
}

while(!stack.isEmpty) { a[stack.removeLast()] = -1 }

var res = ""
for num in a { res += "\(num) " }
print(res)