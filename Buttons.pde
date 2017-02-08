class Button
{
  //declaring the variables
  float W,H;
  float x,y;
  String Content;
  int game_state;
  
  //Decaring a constructor for the class
  Button(float W,float H, float x, float y, String Content,int game_state)
  {
    this.W =W;
    this.H =H;
    this.x = x;
    this.y = y;
    this.Content = Content;
    this.game_state = game_state;
  }
  
  //A method to draw the button 
  void displayButton()
  {
    fill(0);
    strokeWeight(3);
    stroke(255);
    
    //If the  ouse is hovered over the button , then the background of the button changes
    if(mouseX > x && mouseX < x+W)
    {
      if(mouseY > y && mouseY < y+H)
      {
         fill(50);
      }
    }
    rect(x,y,W,H);
    fill(255);
    textAlign(CENTER);
    text(Content,width/2,y+((H/2)+10));
    textSize(25);    
  }
  
  //A function that checks if the mouse is clicked on the button,it changes the gamestate of the program
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