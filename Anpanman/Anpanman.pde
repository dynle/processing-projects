void setup(){
  size(400,400);
}

void draw(){
  background(255);
  strokeWeight(3);
  stroke(0);
  fill(255,165,79);
  ellipse(200,200,300,280); //face
  
  fill(0,0,0);
  ellipse(165,140,24,43); //eye
  ellipse(235,140,25,43); ///eye
  
  fill(255,0,0);
  ellipse(200,210,90,80); //nose
  arc(106,210,95,95,-PI/2,PI/2);
  arc(294,210,95,95,PI/2,PI*1.5);
  
  noFill();
  arc(200,220,160,120,PI/6,PI*5/6); //mouse
  arc(160,125,70,100,PI*1,PI*1.9); //left eyebrow
  arc(240,125,70,100,PI*1.1,PI*2); // right eyebrow
  
  noStroke();
  fill(255,0,0);
  arc(106,210,95,96,PI/2,PI*1.5); //cheek
  arc(294,210,95,96,-PI/2,PI/2); //cheek
  
  fill(255,255,255);
  rect(77,188,19,17);
  rect(180,188,27,20);
  rect(270,188,19,17);
}
