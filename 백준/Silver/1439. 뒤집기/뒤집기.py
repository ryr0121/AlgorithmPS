c = list(input())
n0 = 0
n1 = 0

lastC = -1
for i in range(0,len(c)):
	if lastC == c[i]:
		continue
	else:
		if c[i] == '0':
			n0 += 1
		else:
			n1 += 1
	lastC = c[i]

print(n0 if n0<n1 else n1)