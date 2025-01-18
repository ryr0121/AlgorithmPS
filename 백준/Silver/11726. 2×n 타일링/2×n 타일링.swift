let n = Int(readLine()!)!
var d = Array(repeating: 0, count: n+1)

if(n == 1) { print(1) }
else if(n == 2) { print(2) }
else {
    d[1] = 1
    d[2] = 2
    
    for i in 3...n { d[i] = (d[i-1] + d[i-2])%10007 } 
    print(d[n])
}