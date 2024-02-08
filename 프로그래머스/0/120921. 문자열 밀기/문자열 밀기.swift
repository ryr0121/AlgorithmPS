import Foundation

func solution(_ A:String, _ B:String) -> Int {
    if A == B { return 0 }
    else{
        var a = A.map{String($0)}
        var temp = a
        for r in 1...a.count {
            for i in 0..<a.count { temp[(i+r)%a.count] = a[i] }
            if temp.joined(separator: "") == B { return r }
            temp = a
        }
        return -1
    }
}