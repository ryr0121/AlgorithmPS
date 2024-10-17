let n = Int(readLine()!)!
var d = Array(repeating: 0, count: 1000001)
if (n > 1) {
    for i in 2...n {
        d[i] = d[i-1] + 1
        if (i%2 == 0) { d[i] = [d[i], d[i/2]+1].min()! }
        if (i%3 == 0) { d[i] = [d[i], d[i/3]+1].min()! }
    }
}
print(d[n])