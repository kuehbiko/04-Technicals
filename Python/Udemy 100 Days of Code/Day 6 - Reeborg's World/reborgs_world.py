# we are given a set of pre-defined functions
# we need to use these functions to create an algorithm for Reeborg to find its way out of a maze

# define turn_right with the given function, turn_left()
def turn_right:
    turn_left()
    turn_left()
    turn_left()

while front_is_clear(): # ensures that Reeborg moves forward if there are no walls around it
    move()
    
turn_left()
    
while not at_goal(): # if it encounters a wall, enter another while loop to systematically check which direction is free
    if right_is_clear(): 
        turn_right()
        move()
    elif front_is_clear():
        move()
    else:
        turn_left()
