import Foundation

var ab = readLine()!.split(separator: " ").map{Int(String($0))!}
ab.sort()

if (ab[0] == ab[1]) {
    print(0)
} else {
    var cnt = 0
    var answer = ""
    for n in (ab[0]+1)..<ab[1] {
        cnt += 1
        answer += "\(n) "
    }
    print(cnt)
    print(answer)
}