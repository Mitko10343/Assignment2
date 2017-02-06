class Char
{
  int x = width/2;
  int y = height-50;
  int movement = 0;
  int speed = 5;
  

  
  void drawChar()
  {
    fill(200);
    rect(x,y,30,40);
    ellipse(x+15,y-10,20,20);
  }
  
  void updateChar()
  {
   /* if(movement ==0)
    {
      x = x -5;
    }
    
    if(movement == 1)
    {
      x = x + 5;
    }
    */
    
    if(x+40 < 0)
    {
      x = width+20;
    }
    if(x+40 >width+60)
    {
      x = -20;
    }
    
    
    
}
  
  void keyPressed()
  {
    if(keyPressed)
    {
        
      if(key == 'a' || key == 'A')
      {
        x = x -speed;
      }
      if(key == 'd' || key == 'D')
      {
        x = x +speed;
      }     
    }
  }
}