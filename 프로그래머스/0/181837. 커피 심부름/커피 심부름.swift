import Foundation

func solution(_ order:[String]) -> Int {
    var answer = 0
    for o in order {
        if(o.contains("americano")) { answer += 4500 }
        else if(o.contains("cafelatte")) { answer += 5000 }
        else if(o == "anything") { answer += 4500 }
    }
    return answer
}