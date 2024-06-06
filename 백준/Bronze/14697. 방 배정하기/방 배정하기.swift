import Foundation

let info = readLine()!.split(separator: " ").map{Int(String($0))!}
var res = 0

for a in 0...300 {
    let an = info[0]*a
    if an > info[3] { continue }
    for b in 0...300 {
        let bn = info[1]*b
        if bn > info[3] { continue }
        for c in 0...300 {
            let cn = info[2]*c
            if cn > info[3] { continue }
            if (an+bn+cn) == info[3] {
                res = 1; break;
            }
        }
    }
}
print(res)