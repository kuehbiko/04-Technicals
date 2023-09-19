print('''
*******************************************************************************
          |                   |                  |                     |
 _________|________________.=""_;=.______________|_____________________|_______
|                   |  ,-"_,=""     `"=.|                  |
|___________________|__"=._o`"-._        `"=.______________|___________________
          |                `"=._o`"=._      _`"=._                     |
 _________|_____________________:=._o "=._."_.-="'"=.__________________|_______
|                   |    __.--" , ; `"=._o." ,-"""-._ ".   |
|___________________|_._"  ,. .` ` `` ,  `"-._"-._   ". '__|___________________
          |           |o`"=._` , "` `; .". ,  "-._"-._; ;              |
 _________|___________| ;`-.o`"=._; ." ` '`."\` . "-._ /_______________|_______
|                   | |o;    `"-.o`"=._``  '` " ,__.--o;   |
|___________________|_| ;     (#) `-.o `"=.`_.--"_o.-; ;___|___________________
____/______/______/___|o;._    "      `".o|o_.--"    ;o;____/______/______/____
/______/______/______/_"=._o--._        ; | ;        ; ;/______/______/______/_
____/______/______/______/__"=._o--._   ;o|o;     _._;o;____/______/______/____
/______/______/______/______/____"=._o._; | ;_.--"o.--"_/______/______/______/_
____/______/______/______/______/_____"=.o|o_.--""___/______/______/______/____
/______/______/______/______/______/______/______/______/______/______/_____ /
*******************************************************************************
''')
print("Welcome to Treasure Island.")
print("Your mission is to find the treasure.") 

#https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Treasure%20Island%20Conditional.drawio#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1oDe4ehjWZipYRsVfeAx2HyB7LCQ8_Fvi%26export%3Ddownload

#Write your code below this line 👇

c1 = input('You approach a crossroads. Left or right? ').lower()
if c1 == 'left': 
  
  c2 = input('Excellent. There is a rushing river before of you. Swim or wait? ').lower()
  if c2 == 'wait': 
    
    c3 = input('You survived! Poof! There are 3 doors in front of you! Quick pick a colour: red, yellow or blue? ').lower()
    if c3 == 'red': 
      print('Roaring flame bursts outwards. You burn and die. Game over :c')
    elif c3 == 'blue': 
      print('You make it one step before you are trampled by very big frogs. Wrong choice! Game over :c')
    elif c3 == 'yellow': 
      print('You found the treasure!!!!!')
    else: 
      print("Too busy trying to find a door that isn't there, you fail to notice the tiger lurking in the tall grass and it eats you. Nom. Game over :c")
  
  else: 
    print('You almost make it. Suddenly, a piranha leaps into the air and...bites your nose off! Game over :c')

else: 
  print('You fall into a hole and die. Game over :c')
