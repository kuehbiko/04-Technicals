string1 = input('Greeting: ')
string1 = string1.lower().strip()

if string1[:5]=='hello':
    print('$0')
elif string1[0]=='h':
    print('$20')
else:
    print('$100')
