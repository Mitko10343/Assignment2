class Candy
{
  int W,H;
  int speed=5;
  float y,x;
  Candy(int x,int y,int W, int H)
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
    y = y-speed;
    if(isDead())
    {
      y = -20;
    }
    
  }
  
  Boolean isDead()
  {
    if(y ==height)
    {
      return true;
    }
    return false;
  }
}