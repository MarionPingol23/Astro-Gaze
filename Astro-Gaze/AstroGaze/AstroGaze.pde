//MarionPingol

//Variables
//0: Initial Screen
//1: Game Screen
//2: Game-over Screen

int gameScreen = 0;

int astroX, astroY;
int astroSize = 15;
int astroColor = color(0);

//Implements Gravity
float gravity = 1;
float astroSpeedVert = 0;


void setup(){
  
  size(500,700);

  astroX=width/4;
  astroY=height/5;

  applyGravity();
  keepInScreen();


}



void draw(){
  
  //Display the Contents of the Screen
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen ==2 ) {
   gameOverScreen();
  }
  
  
  
}

void initScreen(){
 background(0);
 textAlign(CENTER);
 
 fill(265,0,0);
 textSize(35);
 text("Astro Gaze",250,150);
 
 fill(50,200,50);
 textSize(25);
 text("Click to start",255,450);
  
}

void gameScreen(){
  background(255);
  
  drawAstro();
}

void gameOverScreen(){
  
  
  
  
}

public void mousePressed(){
  //If we are on the Initial Screen when clicked, Start the Game
  if (gameScreen==0){
    startGame();
  }
}

//This method sets the neccesary variables to start the game
void startGame(){
   gameScreen=1;
  
}

// Functions

void drawAstro(){
  fill(astroColor);
  ellipse(astroX, astroY, astroSize, astroSize);
  
}
void applyGravity(){
  astroSpeedVert += gravity;
  astroY += astroSpeedVert;
    
}

//void makeBounceBottom(float surface){
  astroY = surface-(astroSize/2);
  astroSpeedVert*=-1;
  
  //Gotta Fix this
}
//void makeBounceTop(float surface){
  astroY = surface+(astroSize/2);
  astroSpeedVert*=-1;
  
  
}
  //Keeps ball in the screen
void keepInScreen(){
  
  if (astroY+(astroSize/2) > height){
    makeBounceBottom(height);
  }
  if (astroY-(astroSize/2) < 0){
    makeBounceTop(0);
  }
}
  
  

  