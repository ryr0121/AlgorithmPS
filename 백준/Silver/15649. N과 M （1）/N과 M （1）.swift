let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let M = input[1]

var nums:[Int] = Array(repeating: 0, count: M)
var ch:[Bool] = Array(repeating: false, count: N)

getResult(0)

func getResult(_ idx: Int) -> Void {
    if(idx == M) {
        var str = ""
        for i in 0..<M { str += "\(nums[i]) " }
        print(str)
        return
    }
    for i in 0..<N {
        if(!ch[i]) {
            nums[idx] = i+1
            ch[i] = true
            getResult(idx+1)
            ch[i] = false
        }
    }
}