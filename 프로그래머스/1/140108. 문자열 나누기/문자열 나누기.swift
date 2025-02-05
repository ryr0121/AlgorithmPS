import Foundation

func solution(_ s:String) -> Int {
    var answer = 0
    let list = s.map{String($0)}
    var cur_idx = 0
    
    outer: while(true) {
        if(list.count%2 == 0 && cur_idx == s.count) { break }
        else if(list.count%2 == 1 && cur_idx == s.count-1) {
            answer += 1
            break
        }
        
        var x = list[cur_idx]
        var same_cnt = 0
        var diff_cnt = 0
        for i in cur_idx..<list.count {
            if(list[i] == x) { same_cnt += 1 }
            else { diff_cnt += 1 }
            
            if(same_cnt == diff_cnt) {
                cur_idx = i+1
                answer += 1
                break
            } else {
                if(i == list.count-1) { 
                    answer += 1
                    break outer 
                }
            }
        }
    }
    return answer
}