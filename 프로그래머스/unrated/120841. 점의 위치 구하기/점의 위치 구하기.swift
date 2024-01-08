import Foundation

func solution(_ dot:[Int]) -> Int {
    if (dot[0]*dot[1] > 0) {
        return (dot[0] > 0 && dot[1] > 0) ? 1 : 3
    } else {
        if (dot[0] - dot[1] > 0) { return 4 }
        else { return 2 }
    }
}