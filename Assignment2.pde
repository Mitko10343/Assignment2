//Declaring objects
Button Play;
Button Exit;
Button Instructions;

void setup()
{
   size(600,800);
   
   
   //Creating objects
   Play = new Button(400,100,100,100,"Play Game");
   Instructions = new Button(400,100,300,100,"Instructions");
   Exit = new Button(400,100,500,100,"Exit");
   
}

int gamestate =0;

void draw()
{
  //Switch statement to control what screen to be displayed
  switch(gamestate)
  {
    case 0:
    {
      background(0);
      Play.displayButton();
      break;
    }
  }//end of the switch statement
  
}