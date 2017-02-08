class Candy extends Char
{
  int W,H;
  int speed=5;
  float x,y;
  
  Candy(float x,float y,int W, int H)
  {
    this.x = x;
    this.y = y;
    this.W = W;
    this.H = H;
  }
  
  
  void drawCandy()
  {
    fill(0,255,0);
    stroke(0,0,150);
    ellipse(x,y,W,H);
  }
  
  void updateCandy()
  {
    if(signal == 4)
    {
      go = 1;
    }
    
    if( go == 1)
    {
      y = y+speed;
    }
    
    if(isDead())
    {
      y = -20;
    }
    
    
  }
  
  void candyCollision()
  {
    if(character.xpos +30> x - 10 && character.xpos < x + 10 && y > height - 100)
    {
       score += 25;
       y = -25;
       x = random(40,width-40);
       go =0;
       signal = 0;
    }
  }
  
  void resetCandy()
  {
      x = random(50,width-50);
      y = -20;
  }
  
  Boolean isDead()
  {
    if(y ==height)
    {
      go = 0;
      signal =0;
      return true;
    }
    return false;
  }
}