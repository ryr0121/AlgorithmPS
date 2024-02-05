import Foundation

let n = Int(readLine()!)!
var minus = readLine()!.split(separator: " ").map { Int(String($0))! }
minus.sort()

if minus.count < 2 { print(minus[0]) }
else {
    var sum:[Int] = []

    var temp: [Int] = []
    if n%2 == 0 { for i in 0..<n { temp.append(minus[i]) } } 
    else { for i in 0..<n-1 { temp.append(minus[i]) } }
    
    for i in 0..<n/2 {
        sum.append(temp[i] + temp[temp.count-1-i])
    }

    if n%2 != 0 {
        if minus[n-1] > sum.max()! { print(minus[n-1]) }
        else { print(sum.max()!) }
    } else {
        print(sum.max()!)
    }    
}