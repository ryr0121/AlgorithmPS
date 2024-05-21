class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        var chars = String(x).split(separator: "")

        for i in 0..<(chars.count/2) {
            if chars[i] != chars[chars.count-1-i] {
                return false
            }
        }
        
        return true
    }
}