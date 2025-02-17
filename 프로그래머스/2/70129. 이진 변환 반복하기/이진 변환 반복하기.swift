import Foundation

func solution(_ s:String) -> [Int] {
    var str = s
    var answer = [0,0] // [이진 변환 횟수, 제거된 0의 개수]
    
    while(str != "1") {
        answer[0] += 1
        
        // 1. 모든 0 제거
        let list = str.map{String($0)}
        var tmp = ""
        
        for i in 0..<list.count {
            if(list[i] == "0") { answer[1] += 1 }
            else { tmp += list[i] }
        }
        
        // 2. 이진법 표현
        str = String(tmp.count, radix:2)
    }
    return answer
}