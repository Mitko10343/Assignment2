//Declaring objects
Button Play;
Button Exit;
Button Instructions;
Button PlayAgain;
Button Back;
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
   PlayAgain = new Button(400,100,100,500,"Play Again",5);
   Back = new Button(200,50,200,50,"Back",0);
   character = new Char();
   candy = new Candy(random(50,width-50),-20,30,20);
   
}



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
      
      fill(0,0,255);
      text("Score:"+score, 50,30,255);
      text("Level:"+level,width-50,30,255);
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
      background(0);
      backgroundGrid();
      Back.displayButton();
      Back.mousePressed();
      
      fill(0,170,190);
      text("The point of the game is to avoid \n\n the red balls and collect \n\n the green ones",width/2,200);
      text("Using the keys 'A' and 'D' move \n\n left or right to move",width/2,400);
      text("Try catching the Green balls as \n\n they give you 25 points.",width/2,550);
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
      PlayAgain.displayButton();
      PlayAgain.mousePressed();
      break;
    }
    
    case 5:
    {
      reset();
    }
  }//end of the switch statement
 
}


void backgroundGrid()
{
  for(int i=-15; i<width+10; i+=30)
  {
    for(int j=10; j<height; j+=30)
    {
      noStroke();
      fill(89,216,252,150);
      ellipse(i,j,2,2);
    }
  }
}

void reset()
{  
   gamestate =1;
   signal =0;
   go=0;
   score=1;
   level=1;
   max_level=5;
}