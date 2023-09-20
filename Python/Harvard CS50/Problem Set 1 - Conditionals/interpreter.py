string1 = input('Expression: ')
string1 = string1.split(' ')

x = float(string1[0])
y = string1[1]
z = float(string1[2])

if y=='+': print(x+z)
elif y=='-': print(x-z)
elif y=='*': print(x*z)
else: print(x/z)
