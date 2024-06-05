import Foundation

for a in 2...100 {
    for b in 2...100 {
        for c in 2...100 {
            if b > c { continue }
            for d in 2...100 {
                if c > d { continue }
                let left = a*a*a
                let right = b*b*b + c*c*c + d*d*d
                if (left == right) && (b<c) && (c<d) {
                  print("Cube = \(a), Triple = (\(b),\(c),\(d))")
                }
            }
        }
    }
}