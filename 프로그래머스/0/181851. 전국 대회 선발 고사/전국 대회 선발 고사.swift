import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    var possibles:[Int:Int] = [:] // key: 등수, value: 학생 번호
    
    for i in 0..<rank.count {
        if(attendance[i]) { possibles[rank[i]] = i }
    }
    let s_possibles = possibles.sorted{$0.key < $1.key}
    
    return s_possibles[0].value*10000 + s_possibles[1].value*100 + s_possibles[2].value
}