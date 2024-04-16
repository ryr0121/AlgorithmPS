import Foundation

solution()

func solution() -> Void {
    var arr: [[Int]] = []
    for _ in 0..<9 { arr.append(readLine()!.split(separator: " ").map{Int(String($0))!}) }

    // 행 검사
    for i in 0..<9 {
        if !check(arr[i]) { print("NO"); return; }
    }

    // 열 검사
    for i in 0..<9 {
        var temp: [Int] = []
        for j in 0..<9 { temp.append(arr[i][j]) }
        if !check(temp) { print("NO"); return; }
    }

    // 3x3 검사 0-2/3-5/6-8
    let range = [ [0,3], [3,6], [6,9] ]
    for cr in range { //0..<3
        for rr in range { // 0..<3
            var temp: [Int] = []
            for c in cr[0]..<cr[1] {
                for r in rr[0]..<rr[1] {
                    temp.append(arr[c][r])
                }
            }
            if !check(temp) { print("NO"); return; }
        }
    }
    
    print("YES")
}

func check(_ nums: [Int]) -> Bool {
    var ch = Array(repeating: "0", count: 9)
    for n in nums { ch[n-1] = "1" }
    return !ch.contains("0")
}
