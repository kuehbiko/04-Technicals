string1 = input('File Name: ')
string1 = string1.strip().lower().split('.')
ext1 = string1[-1]

if ext1 in ['gif', 'jpeg', 'png']: print(f'image/{ext1}')
elif ext1 in ['pdf', 'zip']: print(f'application/{ext1}')
elif ext1=='jpg': print('image/jpeg')
elif ext1=='txt': print('text/plain')
else: print('application/octet-stream')
