let T = Int(readLine()!)!
for _ in 0..<T {
    let N = Int(readLine()!)!
    let list = [0]+readLine()!.split(separator: " " ).map{Int(String($0))!}
    var team = Array(repeating: -1, count: N+1)

    func dfs(_ next: Int ) -> Int {
        if team[next] == -1 { team[next] = 0 } 
        else if team[next] == 0 {
            team[next] = 1
            return next
        } 
        else { return -1 }
        
        var ret = dfs(list[next])
        if ret == -1 { team[next] = 2 } 
        else {
            team[next] = 1
            if next == ret { ret = -1}
        }
        return ret
    }
    var ans = 0
    for i in 1...N {
        dfs(i)
        ans += (team[i] == 1) ? 0 : 1
    }
    print(ans)
}