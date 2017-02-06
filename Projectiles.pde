class Projectile extends Char
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

   if(isDead())
    {
      y = -25;
      x = random(40,width-40);
    }
  }
  
  void projectileCollision()
  {
    if(y == ypos)
    {
      if((x+10)>xpos && xpos < (x-10))
      {
        gamestate = 4;
      }
    }
  }
  
  Boolean isDead()
  {
    if(y == height)
    {
      signal++;
      return true;
      
    }
    return false;
  }
}