let input = readLine()!.split(separator: " ").map{String($0)}
let N = Int(input[0])!, game = input[1]
var players = Set<String>()
for _ in 0..<N { players.insert(readLine()!) }

switch(game) {
    case "Y": print(players.count)
    case "F": print(players.count/2)
    case "O": print(players.count/3)
    default: break
}