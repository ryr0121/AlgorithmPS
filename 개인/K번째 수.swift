import Foundation

let tc = Int(readLine()!)!

for t in 1...tc {
   let input = readLine()!.split(separator: " ").map { Int(String($0))! } // n,s,e,k
   let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

   var temp: [Int] = []
   for i in input[1]...input[2] { temp.append(arr[i-1]) }
   temp.sort()
   print("#\(t) \(temp[input[3]-1])")
}
