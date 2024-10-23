let N = Int(readLine()!)!

var level = 0
var end = 1
while true {
    end += level*6
    if N <= end { break }
    level += 1
}
print(level+1)