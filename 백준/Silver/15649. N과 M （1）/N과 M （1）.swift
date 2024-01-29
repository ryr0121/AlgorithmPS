import Foundation

func solution(_ n: Int, _ m: Int) -> Void {
    let temp:[Int] = []
    dfs(arr: temp, m: m, n: n)
}

func dfs(arr: [Int], m: Int, n: Int) -> Void {
    if (arr.count == m) {
        var str = ""
        for a in arr { str += "\(a) " }
        print(str)
        return
    }

    var temp = arr
    for p in 1...n {
        if !temp.contains(p) {
            temp.append(p)
            dfs(arr: temp, m: m, n: n)
            temp.remove(at: temp.count-1)
        }
    }
}

let input = readLine()!.components(separatedBy: " ")
solution(Int(input[0])!, Int(input[1])!)