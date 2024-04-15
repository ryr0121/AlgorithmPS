import Foundation

let n = Int(readLine()!)!
var result = 0

for _ in 0..<n {
   var input = readLine()!.split(separator: " ").map { Int(String($0))! }
   var price = 0
   input.sort()
   
   if input.max() == input.min() { price = 10000 + input.max()!*1000 }
   else {
       if (input[0] == input[1]) || (input[2] == input[1]) { price = 1000 + input[1]*100 }
       else { price = input.max()!*100 }
   }
   
   if result < price { result = price }
}
print(result)
