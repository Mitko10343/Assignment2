class Candy 
{
  int W,H;
  int speed=10;
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
    if(signal == 2)
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