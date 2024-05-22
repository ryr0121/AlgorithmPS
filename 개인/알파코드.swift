import Foundation

func DFS(_ l: Int, _ p: Int) -> Void {
    if l == code.count-1 {
        cnt += 1
        var str = ""
        for i in 0..<p { str += String(UnicodeScalar(res[i]+64)!) }
        print(str)
    } else {
        for i in 1...26 {
            if code[l] == i {
                res[p] = i
                DFS(l+1, p+1)
            } else if (i >= 10) && (code[l] == i/10) && (code[l+1] == i%10) {
                res[p] = i
                DFS(l+2, p+1)
            }
        }
    }
}

var code = readLine()!.split(separator: "").map{Int(String($0))!}
code.append(-1)
var res = Array(repeating: 0, count: code.count)
var cnt = 0

DFS(0,0)
print(cnt)
