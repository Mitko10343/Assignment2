//Declaring objects
Button Play;
Button Exit;
Button Instructions;
Projectile Projectile;
Char character;

//Declaring Array List
ArrayList<Projectile> projectile;

void setup()
{
   size(600,800);
   
   
   //Creating objects
   Play = new Button(400,100,100,100,"Play Game",1);
   Instructions = new Button(400,100,100,300,"Instructions",2);
   Exit = new Button(400,100,100,500,"Exit",3);
   character = new Char();
   
   //Projectile = new Projectile(random(20,width -20),-25,20,20);
   
   //Creating an ArryaList
   projectile = new ArrayList<Projectile>();
   for(int i=0; i<10;i++)
    {
      projectile.add(new Projectile(random(20,width -20),random(-405,-25),20,20));
    }
}

int movement =0;
int gamestate =0;
int signal =0;

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
      
      background(0);  
      character.drawChar();
      character.mousePressed();
      character.updateChar(); 
      
      for(int i=0; i<projectile.size(); i++)
      {
        Projectile p =projectile.get(i);

        p.drawProjectile();
        p.updateProjectile();

      }
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