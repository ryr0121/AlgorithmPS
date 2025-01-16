let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let m = input[1]

let a = readLine()!.split(separator: " ").map{Int($0)!}
let b = readLine()!.split(separator: " ").map{Int($0)!}
var answer:[Int] = []

var aIdx = 0, bIdx = 0

for _ in 0..<(n+m) {
    if(aIdx == n) { 
        answer.append(b[bIdx]) 
        bIdx += 1
        
    } else if(bIdx == m) {
        answer.append(a[aIdx]) 
        aIdx += 1
        
    } else if(a[aIdx] <= b[bIdx]) {
        answer.append(a[aIdx]) 
        aIdx += 1
        
    } else {
        answer.append(b[bIdx]) 
        bIdx += 1
    }
}

var str = ""
for n in answer { str += "\(n) " }
print(str)