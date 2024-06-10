import Foundation

let word = readLine()!.map{String($0)}

var res = Array(repeating: "z", count: 50).joined()
let len = word.count
for s in 1...(len-2) {
    for e in 2...(len-1) {
        if (s>=e) { continue }
        let left = getRevesedStr(0,s)
        let mid = getRevesedStr(s,e)
        let right = getRevesedStr(e,len)

        if res > (left+mid+right) { res = left+mid+right }
    }
}
print(res)

func getRevesedStr(_ s: Int, _ e: Int) -> String {
    var res:[String] = []
    for i in s..<e { res.append(word[i]) }
    return res.reversed().joined()
}