class Button
{
  float W,H;
  float x,y;
  String Content;
  
  Button(float W,float H, float x, float y, String Content)
  {
    this.W =W;
    this.H =H;
    this.x = x;
    this.y = y;
    this.Content = Content;
  }
  
  
  void displayButton()
  {
    fill(0);
    rect(x,y,W,H);
    strokeWeight(3);
    stroke(255);
    fill(255);
    text(Content,x+((W/2)-70),y+((H/2)+10));
    textSize(25);
  }
}