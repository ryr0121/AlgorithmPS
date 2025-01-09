import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let r = input[1]
let c = input[2]

var count = 0
var size = Int(pow(2.0, Double(N)))
z(size, r, c)

print(count)

func z(_ size: Int, _ r: Int, _ c: Int) {
    if(size == 1) { return }

    let half = size/2
    if(r < half && c < half) {
        z(half, r, c)
        
    } else if(r < half && c >= half) {
        count += size * size / 4
        z(half, r, c-half)
        
    } else if(r >= half && c < half) {
        count += (size * size / 4) * 2
        z(half, r-half, c)
        
    } else {
        count += (size * size / 4) * 3
        z(half, r-half, c-half)
    }
}