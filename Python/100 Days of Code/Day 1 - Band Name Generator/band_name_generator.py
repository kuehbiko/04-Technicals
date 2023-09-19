#1. Create a greeting for your program.
#2. Ask the user for the city that they grew up in.
#3. Ask the user for the name of a pet.
#4. Combine the name of their city and pet and show them their band name.
#5. Make sure the input cursor shows on a new line!


print('Hello! This is the Band-Name-Generator-inator!')
city = input('First, which city did you grow up in? \n').capitalize()
pet = input('Next, what is the name of your first pet? \n').capitalize()
band_name = f'{city} {pet}'
print(f'Your new band name shall hereforth be {band_name}!')
