# Assignment2

#Youtube Link:
	Link: https://www.youtube.com/watch?v=a_gnDvb5xls
#Concept
For our OOP assignment we had to create a game that implemented everything
we had learned so far  in the course. 

Some of the Ideas that came to mind were some racing games I had played online,
but then I decided with some of the facebook messenger games.
I look through most of the games on messenger and the game I used to base my assignment
on was 'Kaburin Dodge'.
The aim of the game is to avoid the meteorites that fall from the sky and trying 
to catch candy .

#Features
The game has a number of features

*A main menu:
		-The game has a main menu with a number of options.
		
*Instruction Menu:
		-The Instruction menu can be accessed from the main menu
		 and it tells the user how the game should be played

*Actuall Game:
		-The game can be played by clicking the 'Play' button
		 in the main menu. 
		 
#Controls
	'A' = Left;
	'D' = Right;
	
#Functionality
The game uses a switch statement to change between game states. Each button in the
main menu changes the gamestate of the game and in turn the screen displayed
is changed.

-case 0:
	This case is the main menu wich has 3 buttons:Play Game, Instructions and
	exit. When a button is clicked then the gamestate is changes and the 
	screen is changed.
	
	
-case 1:
	This is the game case. When the Play button is pressed this case is accessed
	and the user can then play the actual game.
	
	
-case 2:
	This is the instruction menu. It contains a simple description of what the
	game does and how to play it.
	
	
-case 3:
	This case is accessed when the exit button is clicked. It just exits the program.

-case 4:
	Case 4 is the game over screen. It is accesed after the character dies. This screen
	tells the user their final score and offers them a chance to play again.
	

-case 5: 
    If the user chooses to play again,then this case is accesed. All this case does is 
	reset some of the variables to the original ones and then sets the gamestate to 1.
	
	
#Key Features:
	*The program contains inheritance in most classes as the extend from the Character
	 class.
	
	*Polymorphism is used with the buttons and projectile objects.
	
	*The use of ArrayLists, if statements, for loops, switch cases, classes and methods
	 is implemented in the program.
	 
	*The program keeps track of the user score and displays it when the user looses the game.
	
	*User interactive Menu.