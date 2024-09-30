import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{Int(String($0))!} // 수열
let oper_cnt = readLine()!.split(separator: " ").map{Int(String($0))!} // 연산자 별 개수(+,-,*,/)

// 사용 가능 개수 기준 연산자 배열 생성자
var opers:[String] = []
for i in 0..<4 {
    var oper = ""
    switch (i) {
        case 0: oper = "+"
        case 1: oper = "-"
        case 2: oper = "*"
        case 3: oper = "/"
        default: oper = ""
    }
    for _ in 0..<oper_cnt[i] { opers.append(oper) }
}

var arr = Array(repeating: "", count: n-1)
var ch = Array(repeating: true, count: n-1)

var max_res = -1000000000
var min_res = 1000000000

solution(0)
print(max_res)
print(min_res)

func solution(_ l: Int) -> Void {
    if(l == n-1) {
        // 구성된 연산자 순열에 기반하여 연산 진행 후, 최대/최소값 갱신
        var res = nums[0]
        for i in 0..<(n-1) {
            switch (arr[i]) {
                case "+": res += nums[i+1]
                case "-": res -= nums[i+1]
                case "*": res *= nums[i+1] 
                case "/": res /= nums[i+1] 
                default: res += 0
            }
        }        
        if (max_res < res) { max_res = res }
        if (min_res > res) { min_res = res }
    }
    else {
        for i in 0..<(n-1) {
            if (ch[i]) {
                ch[i] = false
                arr[l] = opers[i]
                solution(l+1)
                ch[i] = true
            }
        }
    }
}