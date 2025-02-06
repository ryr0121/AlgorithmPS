import Foundation

func solution(_ X:String, _ Y:String) -> String {
    let x = X.map{String($0)}
    let y = Y.map{String($0)}
    var x_ch = Array(repeating: 0, count: 10) // 0...9
    var y_ch = Array(repeating: 0, count: 10) // 0...9
    
    for c in x { x_ch[Int(c)!] += 1 }
    for c in y { y_ch[Int(c)!] += 1 }
    
    var answer = ""
    var isAllZero = true  // 모두 0으로만 구성되어 있는지 검사
    for i in stride(from: 9, to: -1, by: -1) {
        if(x_ch[i] > 0 && y_ch[i] > 0) {
            for _ in 0..<[x_ch[i],y_ch[i]].min()! { answer += "\(i)" }
            if(i > 0) { isAllZero = false }
        }
    }
    
    if(answer.isEmpty) { return "-1" }
    if(isAllZero) { return "0" }
    return answer
}