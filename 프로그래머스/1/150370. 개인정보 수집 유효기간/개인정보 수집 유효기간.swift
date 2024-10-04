import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy.MM.dd"
    
    let today_date = dateFormatter.date(from: today)
    
    var t:[String:Int] = [:]
    for term in terms {
        let v = term.split(separator: " ").map{String($0)}
        t[v[0]] = Int(v[1])!
    }
    
    var answer:[Int] = []
    for i in 0..<privacies.count {
        let v = privacies[i].split(separator: " ").map{String($0)}
        var p_date = dateFormatter.date(from: v[0])
        
        let add_v = Int(t[v[1]]!)
        let added_p_date = Calendar.current.date(byAdding: .month, value: add_v, to: p_date!)
        
        let compared = added_p_date!.compare(today_date!)
        if (compared == .orderedAscending || compared == .orderedSame) { answer.append(i+1) }
    }
    
    return answer
}