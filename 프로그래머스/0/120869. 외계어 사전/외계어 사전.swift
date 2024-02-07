import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    var spell_arr = spell.sorted()
    for d in dic {
        if d.count == spell.count {
            var temp = d.map{String($0)}
            temp.sort()
            if (temp == spell_arr) { return 1 }
        }
    }
    return 2
}