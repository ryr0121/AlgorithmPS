import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    // 모두 같음
    if(a == b && b == c && c == d) { return 1111*a }
    
    // 3개 같음, 1개 다름
    else if(a != b && b == c && c == d) { // a | b,c,d
        return Int(pow(Double(10*b+a), 2.0))
    }
    else if(b != a && a == c && c == d) { // b | a,c,d
        return Int(pow(Double(10*a+b), 2.0))
    }
    else if(c != a && a == b && b == d) { // c | a,b,d
        return Int(pow(Double(10*a+c), 2.0))
    }
    else if(d != a && a == b && b == c) { // d | a,b,c
        return Int(pow(Double(10*a+d), 2.0))
    }
    
    // 2개 같음, 2개 같음
    
    // a,b | c,d
    else if(a == b && c == d && a != c) { return (a+c)*abs(a-c) }
    // a,c | b,d
    else if(a == c && b == d && a != b) { return (a+b)*abs(a-b) }
    // a,d | b,c
    else if(a == d && b == c && a != b) { return (a+b)*abs(a-b) }
    
    // 2개 같음, 1개, 1개
    
    // a,b / c / d
    else if(a == b && a != c && a != d && c != d) { return c*d }
    // a,c / b / d
    else if(a == c && a != b && a != d && b != d) { return b*d }
    // a,d / b / c
    else if(a == d && a != b && a != c && c != d) { return b*c }
    // b,c / a / d
    else if(b == c && b != a && b != d && a != d) { return a*d }
    // b,d / a / c
    else if(b == d && b != a && b != c && a != c) { return a*c }
    // c,d / a / b
    else if(c == d && c != a && c != b && a != b) { return a*b }
    
    // 모두 다름
    else { return [a,b,c,d].min()! }
}