class Projectile
{
  float x,y;
  float W,H;
  
  Projectile(float x, float y, int W,int H)
  {
    this.x = x;
    this.y = y;
    this.W =W;
    this.H =H;
  }
  
  void drawProjectile()
  {
    fill(255,0,0);
    stroke(170);
    ellipse(x,y,W,H);
  }
  
  void updateProjectile()
  {
    y = y+5;
    if(y != height)
    {
      signal =1;
    }
    else
    {
      signal =0;
    }
    if(isDead())
    {
      y = -25;
      x = random(40,width-40);
    }
  }
  
  Boolean isDead()
  {
    if(y == height)
    {
      return true;
      
    }
    return false;
  }
}