import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    var answer:[String] = []
    for i in 0..<picture.count {
        let list = picture[i].map{String($0)}
        var tmp = ""
        for s in list {
            for _ in 0..<k { tmp += s }
        }
        for _ in 0..<k { answer.append(tmp) }
    }
    return answer
}