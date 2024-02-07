import Foundation

func solution(_ letter:String) -> String {
    let morse:[String:String] = [
        ".-":"a", "-...":"b", "-.-.":"c", "-..":"d", ".":"e", "..-.":"f",
        "--.":"g", "....":"h", "..":"i", ".---":"j", "-.-":"k", ".-..":"l",
        "--":"m", "-.":"n", "---":"o", ".--.":"p", "--.-":"q", ".-.":"r",
        "...":"s", "-":"t", "..-":"u", "...-":"v", ".--":"w", "-..-":"x",
        "-.--":"y", "--..":"z"
    ]
    
    let message = letter.split(separator: " ")
    var result = ""
    for msg in message {
        for k in morse.keys {
            if msg == k { result += String(morse[k]!) }
        }
    }
    return result
}