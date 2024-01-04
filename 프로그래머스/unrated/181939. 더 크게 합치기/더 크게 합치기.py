def solution(a, b):
    a_b = int(str(a)+str(b))
    b_a = int(str(b)+str(a))
    
    return b_a if (a_b < b_a) else a_b