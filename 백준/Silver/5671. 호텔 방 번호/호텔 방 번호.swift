import Foundation

while let read = readLine() {
    let input = read.split(separator: " ").map{Int(String($0))!}
    var cnt = 0
    for n in input[0]...input[1] {
        let n_list = String(n).map{String($0)}
        var temp:Set<String> = Set<String>()
        for c in n_list { temp.insert(c) }
        if temp.count == n_list.count { cnt += 1 }
    }
    print(cnt)
}