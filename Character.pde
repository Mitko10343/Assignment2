class Char
{
  int x = width/2;
  int y = height-50;
  int movement = 0;
  

  
  void drawChar()
  {
    fill(200);
    rect(x,y,30,40);
    ellipse(x+15,y-10,20,20);
  }
  
  void updateChar()
  {
    if(movement ==0)
    {
      x = x -5;
    }
    
    if(movement == 1)
    {
      x = x + 5;
    }
    
    
    if(x+40 < 0)
    {
      x = width+40;
 
    }
    
    if(x+40 > width);
    {
      x = 0 - 40;

    }
    
}
  
  void keyPressed()
  {
    if(keyPressed)
    {

        if(movement == 0)
        {
          movement =1;
        }
        else
        {
          movement = 0;
        }
      
    }
  }
}