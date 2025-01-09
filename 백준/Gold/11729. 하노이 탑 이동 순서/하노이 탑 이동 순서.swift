import Foundation

let N = Int(readLine()!)!
var answer = ""

answer += "\(Int(pow(2.0, Double(N))) - 1)\n"
hanoi(1,3,N)
print(answer)

func hanoi(_ start: Int, _ end: Int, _ n: Int) -> Void {
    if(n == 1) {
        answer += "\(start) \(end)\n"
        return
    }

    hanoi(start, 6-start-end, n-1)
    answer += "\(start) \(end)\n"
    hanoi(6-start-end, end, n-1)
}