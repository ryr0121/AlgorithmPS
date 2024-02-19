import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var max_prior = priorities.max()!
    
    var result: [Int] = []
    var s = 0
    var cnt = 0
    while result.count != priorities.count {        
        for i in s..<s+priorities.count {
            if priorities[i%priorities.count] == max_prior { 
                cnt += 1
                result.append(i%priorities.count)  
                s = i%priorities.count
                if (i%priorities.count) == location { return cnt }
            }
        }
        max_prior -= 1
    }
    return 0
}