import Foundation

let n = Int(readLine()!)!
var called = readLine()!.split(separator: " ").map{Int(String($0))!}

var y_cost = 0
for n in called { y_cost += (n/30+1)*10 }

var m_cost = 0
for n in called { m_cost += (n/60+1)*15 }

if (y_cost < m_cost) { print("Y \(y_cost)") } 
else if (y_cost > m_cost) { print("M \(m_cost)") }
else { print("Y M \(y_cost)") }