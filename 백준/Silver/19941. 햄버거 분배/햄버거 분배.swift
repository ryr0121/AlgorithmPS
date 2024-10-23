let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0], K = input[1]
var arr = readLine()!.map{String($0)}
var res = 0

for i in 0..<N {
    if arr[i] == "P" {
        for j in (i-K)...(i+K) {
            if (j < 0) || (j == i) || (j >= N) { continue }
            if arr[j] == "H" {
                res += 1
                arr[j] = "X"
                break
            }
        }
    }   
}
print(res)