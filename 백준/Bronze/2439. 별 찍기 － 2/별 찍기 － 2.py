n = int(input())
for p in range(0, n):
    whiteSpace = ""
    printVal = "*"
    for q in range(1, n-p): 
        whiteSpace += ' '
    for q in range(0, p): 
        printVal += '*'
    print(whiteSpace + printVal)