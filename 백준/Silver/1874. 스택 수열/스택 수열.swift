var n = Int(readLine()!)!
var nums:[Int] = []
for _ in 0..<n { nums.append(Int(readLine()!)!) }

var stack:[Int] = []
var res = ""
var target = 0;

for i in 1...n {
    stack.append(i)
    res += "+\n"
    while(!stack.isEmpty && stack[stack.count-1] == nums[target]) {
        stack.removeLast()
        res += "-\n"
        target += 1
    }
}
if(!stack.isEmpty) { print("NO") }
else { print(res) }