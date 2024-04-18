import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let songs = readLine()!.split(separator: " ").map{Int(String($0))!}
let max_song = songs.max()!

var s = songs.min()!
var e = songs.reduce(0){$0+$1}
var m = (s+e)/2

var min_vol = 0
while s <= e {
    if (m >= max_song) && isPossible(m) { e = m-1; min_vol = m;  }
    else { s = m+1 }
    m = (s+e)/2
}
print(min_vol)


func isPossible(_ vol: Int) -> Bool {
    var sum = 0
    var cnt = 1
    for i in 0..<songs.count {
        if (sum+songs[i]) > vol { cnt += 1; sum = songs[i]; }
        else { sum += songs[i] }
    }
    return input[1] >= cnt
}
