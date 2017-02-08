class Char
{
  //Variables declared
  int xpos = width/2;
  int ypos = height-50;
  int movement = 0;
  int speed = 5;
  

  //Drawing the character
  void drawChar()
  {
    fill(200);
    rect(xpos,ypos,30,40);
    ellipse(xpos+15,ypos-10,20,20);
  }
  
  //Updates the position of the character so that if it goes into one side of the screen
  //it will come out from the opposite side
  void updateChar()
  {
     
    if(xpos+40 < 0)
    {
      xpos = width+20;
    }
    if(xpos+40 >width+60)
    {
      xpos = -20;
    }
  }
  
  //function that updates the characters position if the user presses some keys
  void keyPressed()
  {
    if(keyPressed)
    {
        
      if(key == 'a' || key == 'A')
      {
        xpos = xpos -speed;
      }
      if(key == 'd' || key == 'D')
      {
        xpos = xpos +speed;
      }     
    }
  }

  
}