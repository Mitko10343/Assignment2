class Button
{
  float W,H;
  float x,y;
  String Content;
  int game_state;
  
  Button(float W,float H, float x, float y, String Content,int game_state)
  {
    this.W =W;
    this.H =H;
    this.x = x;
    this.y = y;
    this.Content = Content;
    this.game_state = game_state;
  }
  
  
  void displayButton()
  {
    fill(0);
    strokeWeight(3);
    stroke(255);
    if(mouseX > x && mouseX < x+W)
    {
      if(mouseY > y && mouseY < y+H)
      {
         fill(50);
      }
    }
    rect(x,y,W,H);
    fill(255);
    text(Content,x+((W/2)-70),y+((H/2)+10));
    textSize(25);    
  }
  
  
  void mousePressed()
  {
    if(mouseX > x && mouseX < x+W)
    {
      if(mouseY > y && mouseY < y+H)
      {
        if(mousePressed)
        {
          gamestate = game_state ;
        }
      }
    }
  }
}