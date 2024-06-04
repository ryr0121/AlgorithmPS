import Foundation

let n = Int(readLine()!)!
for _ in 0..<n {
    let nums = readLine()!.split(separator: " ").map{Int(String($0))!}
    var cnt = 0
    for a in 1..<nums[0] {
        for b in 1..<nums[0] {
            let res = Double(a*a+b*b+nums[1])/Double(a*b)
            // print("\(a), \(b) - \(res) : \((Double(Int(res)) == res))")
            if (a < b) && (Double(Int(res)) == res) { cnt += 1 }
        }
    }
    print(cnt)
}