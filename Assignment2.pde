//Declaring objects
Button Play;
Button Exit;
Button Instructions;
Projectile Projectile;
Char character;
Candy candy;

//Declaring Array List
//ArrayList<Projectile> projectile;

void setup()
{
   size(600,800);
   
   
   //Creating objects
   Play = new Button(400,100,100,100,"Play Game",1);
   Instructions = new Button(400,100,100,300,"Instructions",2);
   Exit = new Button(400,100,100,500,"Exit",3);
   character = new Char();
   
   Projectile = new Projectile(random(20,width -20),-25,20,20);
   candy = new Candy(random(50,width-50),-20,30,20);
   
}

int movement =0;
int gamestate =0;
int signal =0;
int go=0;

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
      character.keyPressed();
      character.updateChar(); 
      Projectile .drawProjectile();
      Projectile .updateProjectile();
      candy.drawCandy();
      candy.updateCandy();
   
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
 
  println(signal);
}