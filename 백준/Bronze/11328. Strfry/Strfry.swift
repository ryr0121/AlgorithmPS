import Foundation

let n = Int(readLine()!)!
for _ in 0..<n {
    let ab = readLine()!.split(separator: " ").map{String($0)}
    
    let a = ab[0].map{String($0)}
    let b = ab[1].map{String($0)}
    
    var a_alp = Array(repeating: 0, count: 26)
    var b_alp = Array(repeating: 0, count: 26)

    if (a.count != b.count) {
        print("Impossible")
        
    } else {
        for c in a {
            let idx = Int(UnicodeScalar(c)!.value)-97
            a_alp[idx] += 1
        }
    
        for c in b {
            let idx = Int(UnicodeScalar(c)!.value)-97
            b_alp[idx] += 1
        }
    
        var answer = "Possible"
        for i in 0..<26 {
            if (a_alp[i] != b_alp[i]) { 
                answer = "Impossible"
                break
            }
        }
        print(answer)
    }
}