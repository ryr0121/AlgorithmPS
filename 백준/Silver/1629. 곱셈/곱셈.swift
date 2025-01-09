let input = readLine()!.split(separator: " ").map{Int($0)!}
let a = input[0]
let b = input[1]
let c = input[2]

print(getResult(a,b,c))

func getResult(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if(b == 1) { return a % c }

    var res = getResult(a, b/2, c)
    res = res * res % c

    if(b%2 == 0) { return res }
    else { return res * a % c }
}