void setup(){
  size(400,400);
}

void draw(){
  background(255);
  //ellipse(mouseX,mouseY,300,200);
  drawAnpanman(mouseX,mouseY);
}

void drawAnpanman(int x, int y){
  strokeWeight(3);
  stroke(0);
  
  fill(255,165,79);
  ellipse(x,y,300,280); //face
  
  fill(0,0,0);
  ellipse(x-35,y-60,25,43); //eye
  ellipse(x+35,y-60,25,43); ///eye
  
  fill(255,0,0);
  ellipse(x,y+10,90,80); //nose
  arc(x-94,y+10,95,95,-PI/2,PI/2);
  arc(x+94,y+10,95,95,PI/2,PI*1.5);
  
  noFill();
  arc(x,y+20,160,120,PI/6,PI*5/6); //mouse
  arc(x-40,y-75,70,100,PI*1,PI*1.9); //eyebrow
  arc(x+40,y-75,70,100,PI*1.1,PI*2); //eyebrow
  
  noStroke();
  fill(255,0,0);
  arc(x-94,y+10,95,96,PI/2,PI*1.5); //cheek
  arc(x+94,y+10,95,96,-PI/2,PI/2); //cheek
  
  fill(255,255,255);
  rect(x-123,y-12,19,17); //square hikari
  rect(x-20,y-12,27,20);
  rect(x+70,y-12,19,17);
}
