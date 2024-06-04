import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var res = 0

for h in 0...input[0] {
    let hour = (h<10) ? "0\(h)" : "\(h)"
    for m in 0...59 {
        let min = (m<10) ? "0\(m)" : "\(m)"
        for s in 0...59 {
            let sec = (s<10) ? "0\(s)" : "\(s)"
            if hour.contains("\(input[1])") 
                || min.contains("\(input[1])") 
                || sec.contains("\(input[1])") { res += 1 }
        }
    }
}
print(res)