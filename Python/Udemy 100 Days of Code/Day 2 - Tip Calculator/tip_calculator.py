#If the bill was $150.00, split between 5 people, with 12% tip. 

#Each person should pay (150.00 / 5) * 1.12 = 33.6
#Format the result to 2 decimal places = 33.60

#Tip: There are 2 ways to round a number. You might have to do some Googling to solve this.💪

#Write your code below this line 👇
#==================================

print('Welcome to the tip calculator!')

# input() takes input a string so convert numbers to float/int
# also convert tip to percentage
bill = float(input('What was the total bill?\n'))
tip = 1 + float(input('What percentage tip would you like to give?\n'))*0.01
people = int(input('How many people are splitting the bill?\n'))

bill_per_person = round(((bill*tip)/people), 2)

print(f'Each person should pay ${bill_per_person}!')
