ropes = []
for _ in range(int(input())):
    ropes.append(int(input()))
ropes.sort(reverse=True)

possibleWeights = []
for i in range(len(ropes)):
    possibleWeights.append(ropes[i]*(i+1))

print(max(possibleWeights))