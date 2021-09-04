PImage img;
PImage img2;
PImage img3;


float buttonX = 320;
float buttonY = 560;

float reverseX;
float reverseY;

float limit;
float weightLimit;

int value = 255;
void setup(){
  size(360,736,FX2D);
  img = loadImage("iphone2.png");
  img2 = loadImage("target1.png");
  img3 = loadImage("target.png");
  
  image(img2,20,170,318,241);  
  
  fill(189,39,27);
  noStroke();
 
  
 
}


void draw(){
  background(255);
  image(img3,20,560,110,146);
  image(img,0,0,360,736); 
  fill(value);
 // rect(50,20,400,730);
  
  //image(img,-50,0,600,800);
  
  
  //"X" button to close ad
  fill(90);
  stroke(150);
  strokeWeight(2);
  circle(buttonX,buttonY,20);
  fill(230);
  text("x",buttonX - 3,buttonY + 3);
  
  reverseX = map(mouseX,0,360,335,125);
  reverseY = map(mouseY,576,696,696,576);
  
  if(mouseX > 125 && mouseX < 335){
    if(mouseY < 696 && mouseY >576){
      noFill();
      fill(reverseX,50);
      stroke(mouseX,0,20);
      strokeWeight(weightLimit);
      circle(reverseX,reverseY,20);
      stroke(reverseX,0,20);
      circle(mouseX,mouseY,20);
    }
  }
  
  noFill();
  stroke(100+mouseX,mouseX,mouseX);
  strokeWeight(weightLimit);


  limit = map(mouseX,0,360,0,150);
  weightLimit = map(mouseX,125,335,1,32);
  
  
  fill(189,39,27);
  stroke(255);
  strokeWeight(4);
  rect(buttonX-65, buttonY+100,70,25);
  fill(255);
  text("CLICK", buttonX-47,buttonY+116);
  println(mouseX,mouseY);
}
