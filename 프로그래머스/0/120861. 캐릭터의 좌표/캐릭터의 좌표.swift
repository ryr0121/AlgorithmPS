import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var x = 0
    var y = 0

    for k in keyinput {
        switch (k) {
            case "left": x -= 1
            case "right": x += 1
            case "up": y += 1
            case "down": y -= 1
            default: return []
        }
        if x < (-1)*(board[0]/2) { x = (-1)*board[0]/2 }
        else if x > board[0]/2 { x = board[0]/2 }

        if y < (-1)*(board[0]/2) { y = (-1)*board[1]/2 }
        else if y > board[0]/2 { y = board[1]/2 }
    }
    
    return [x,y]
}