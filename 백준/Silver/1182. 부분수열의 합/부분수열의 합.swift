let ns = readLine()!.split(separator: " ").map{Int($0)!}
let N = ns[0]
let S = ns[1]
let nums = readLine()!.split(separator: " ").map{Int($0)!}
var answer = 0

getPartSum(0,0)
if(S == 0) { answer -= 1 }
print(answer)

func getPartSum(_ idx: Int, _ sum: Int) -> Void {
    if(idx == N) {
        if(sum == S) { answer += 1 }
        return
    }
    getPartSum(idx+1, sum)
    getPartSum(idx+1, sum+nums[idx])
}