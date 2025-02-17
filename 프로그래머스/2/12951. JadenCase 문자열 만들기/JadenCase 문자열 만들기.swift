func solution(_ s:String) -> String {
    var answer = ""
    let list = s.map{String($0)}
    var startFlag = true
    for i in 0..<list.count {
        if(list[i] == " ") { 
            answer += list[i]
            startFlag = true
        } else {
            if(startFlag) {
                let v = Int(UnicodeScalar(list[i])!.value)
                if(v >= 48 && v <= 57) { answer += list[i] }
                else { answer += list[i].uppercased() }
                startFlag = !startFlag

            } else { answer += list[i].lowercased() } 
        }  
    }
    return answer
}