class Char
{
  int x = width/2;
  int y = height-50;
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
  }
  
  void mousePressed()
  {
    if(mousePressed)
    {
     
        if(movement == 0)
        {
          movement =1;
        }
        if(movement == 1)
        {
          movement = 0;
        }
    
    }
  }
}