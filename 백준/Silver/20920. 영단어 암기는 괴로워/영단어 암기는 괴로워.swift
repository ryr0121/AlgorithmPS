let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]
var words:[String:Int] = [:]
for _ in 0..<n { 
    let w = String(readLine()!)
    if w.count >= m {
        if let e = words[w] { words[w] = e+1 }
        else { words[w] = 1 }
    }
}

var s_words = words.sorted{ 
    if ($0.value == $1.value) {
        if ($0.key.count == $1.key.count) { return $0.key < $1.key } 
        else { return $0.key.count > $1.key.count }
    } else { return $0.value > $1.value }  
}

for word in s_words { print(word.key) }