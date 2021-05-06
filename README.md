#MARS ROVER CHALLENGE

##Brief

A squad of robotic rovers are to be landed by NASA on a plateau on Mars.

This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover's position is represented by a combination of an x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot.

'M' means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

Input:

The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.

The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover's position, and the second line is a series of instructions telling the rover how to explore the plateau.

The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover's orientation.

Each rover will be finished sequentially, which means that the second rover won't start to move until the first one has finished moving.

Output:

The output for each rover should be its final co-ordinates and heading.

###Example

Test Input: | Expected Output:

5 5

1 2 N

LMLMLMLMM -> 1 3 N

3 3 E

MMRMMRMRRM -> 5 1 E

Expected Output:

1 3 N

5 1 E

###If I Had More Time...

Given longer to work on this challenge I think I would create a new class "NasaControl" that would hold the information in relation to the plateau.

From this class I could then initialize two rovers and begin to work on a method to allow them to both travel across the same plateau simultaneously. I would then also code in a check to throw an error if the rovers collide.

There are also some edge cases I would like to get round to checking, for example The exact data types of the inputs and putting in some checks to catch invalid inputs.

Also how exactly the user of this program would interact with the rovers, I think I would change it around to simplify how the user enters in the plateau_area, starting_point & the instructions!

###How I found this challenge...

Overall I had fun with this challenge, It was a bit of a head-scratcher at first. The toughest part was figuring out how to take the string of instructions and turn them into the final coordinates of the rover.

Taking a TTD approach proved to be very helpful in slowly but surely building out the algorithm needed to manoeuvre the rover around the grid! This helped to remind me the beauty of testing. Testing was also very handy in the refactoring and tidying process, as any changes made could be tested to make sure the code still ran properly!
