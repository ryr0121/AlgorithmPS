import Foundation

func solution(_ n:Int) -> Int
{
    let n_list = String(n, radix: 2).map{String($0)}
    var n_cnt = 0
    for c in n_list {
        if(c == "1") { n_cnt += 1 }
    }
    
    var answer = n+1
    while(true) {
        let a_list = String(answer, radix: 2).map{String($0)}
        var a_cnt = 0
        for c in a_list {
            if(c == "1") { a_cnt += 1 }
        }
        
        if(n_cnt == a_cnt) { break }
        else { answer += 1 }
    }
    
    return answer
}