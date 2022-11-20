import sys


def stackFunc(s, inputs):
    if inputs[0] == "push":
        s.append(int(inputs[1]))
    elif inputs[0] == "pop":
        if len(s) > 0:
            print(s.pop())
        else:
            print(-1)
    elif inputs[0] == "size":
        print(len(s))
    elif inputs[0] == "empty":
        if len(s) == 0:
            print(1)
        else:
            print(0)
    elif inputs[0] == "top":
        if len(s) == 0:
            print(-1)
        else:
            print(s[-1])


input = sys.stdin.readline
n = int(input())
s = []

for i in range(n):
    inputs = input().split()
    stackFunc(s, inputs)