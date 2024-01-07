def solution(numbers):
    max = 0
    for p in range(0, len(numbers)):
        for q in range(p+1, len(numbers)):
            if numbers[p]*numbers[q] > max:
                max = numbers[p]*numbers[q]
    return max