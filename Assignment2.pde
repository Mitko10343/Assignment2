//Declaring objects
Button Play;
Button Exit;
Button Instructions;
Projectile Projectile;
Projectile projectile2;
Char character;
Candy candy;

//Declaring Array List
ArrayList<Projectile> projectile = new ArrayList<Projectile>();

void setup()
{
   size(600,800);
   
   PFont font;
   
   font = loadFont("Stencil-48.vlw");
   textFont(font,16);
   
   //Creating objects
   Play = new Button(400,100,100,100,"Play Game",1);
   Instructions = new Button(400,100,100,300,"Instructions",2);
   Exit = new Button(400,100,100,500,"Exit",3);
   character = new Char();
   candy = new Candy(random(50,width-50),-20,30,20);
   
}


int movement =0;
int gamestate =0;
int signal =0;
int go=0;
int score=1;
int level=1;
int max_level=5;

void draw()
{
  //making an array list with objects
  for(int i=0; i<max_level; i++)
  {
     projectile.add( new Projectile(random(20,width -20),random(-200,-25),20,20));
  }
  
  
  //Switch statement to control what screen to be displayed
  switch(gamestate)
  {
    case 0:
    {
      background(0);
      backgroundGrid();
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
      backgroundGrid();
      //increment the player score by one every 2 seconds
      if(frameCount%120 == 0)
      {
        score++;
      }
      
      text("Score:"+score, 10,30,255);
      text("Level:"+level,width-100,30,255);
      character.drawChar();
      character.keyPressed();
      character.updateChar(); 
      
      for(int i=0; i<level;i++)
      {
        Projectile p = projectile.get(i);
        p.drawProjectile();
        p.updateProjectile();
        p.projectileCollision();
        
      }
      candy.drawCandy();
      candy.updateCandy();
      candy.candyCollision();
   
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
    
    case 4:
    {
      clear();
      textAlign(CENTER);
      text("Game Over",width/2,height/2);
      text("Your Score is :" + score,width/2,(height/2)-100);
      break;
    }
  }//end of the switch statement
 
}


void backgroundGrid()
{
  for(int i=0; i<width; i+=25)
  {
    for(int j=0; j<height; j+=25)
    {
      noStroke();
      fill(89,216,252,150);
      ellipse(i,j,2,2);
    }
  }
}