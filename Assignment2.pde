//Declaring objects
Button Play;
Button Exit;
Button Instructions;

Projectile Projectile;

void setup()
{
   size(600,800);
   
   
   //Creating objects
   Play = new Button(400,100,100,100,"Play Game",1);
   Instructions = new Button(400,100,100,300,"Instructions",2);
   Exit = new Button(400,100,100,500,"Exit",3);
   Projectile = new Projectile(random(20,width -20),-25,20,20);
}

int gamestate =0;

void draw()
{
  //Switch statement to control what screen to be displayed
  switch(gamestate)
  {
    case 0:
    {
      background(0);
      Play.displayButton();
      Play.mousePressed();
      Instructions.displayButton();
      Instructions.mousePressed();
      Exit.displayButton();
      Exit.mousePressed();
      break;
    }
    
    case 1:
    {
      background(255);  
      Projectile.drawProjectile();
      Projectile.updateProjectile();
      break;
    }
    
    case 2:
    {
      background(150);
      break;
    }
    
    case 3:
    {
      exit();
      break;
    }
  }//end of the switch statement
  
}