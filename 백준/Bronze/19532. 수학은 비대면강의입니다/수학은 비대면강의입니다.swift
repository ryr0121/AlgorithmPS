import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var x_n = input[0] - input[3] // a-d
var y_n = input[1] - input[4] // b-e
var n = input[2] - input[5] // c-f

var res = [0,0]

for x in -999...999 {
    for y in -999...999 {
        if (x_n*x + y_n*y) == n { 
            let c1 = input[0]*x + input[1]*y
            let c2 = input[3]*x + input[4]*y
            if (c1==input[2]) && (c2==input[5]) {
                res = [x,y]; break;
            }
        } 
    }
}
print("\(res[0]) \(res[1])")