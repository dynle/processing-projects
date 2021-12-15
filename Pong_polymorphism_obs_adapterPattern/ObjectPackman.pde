class ObjectPackman extends FlyingObject{
  int i = 0;
  PImage img;
  
  ObjectPackman(float _diameter) {
    this.diameter = _diameter;
    this.x = -radius;
    this.y = height/2;
  }

  void attack(){
    super.move();
  }
  
  void display(){
    //draw Packman
    fill(255,255,0);
    ellipse(x,y,diameter,diameter); //face
    fill(0); //black
    if(speedX >= 0){
      ellipse(x+5,y-10,diameter/8,diameter/8); //eye
      if(i%10 < 5){
        arc(x,y,diameter,diameter,-PI/6,PI/6); //mouth
      }else{
        strokeWeight(4); //mouth
        line(x,y,x+radius,y);
      }
    }else{
      ellipse(x-5,y-10,diameter/8,diameter/8); //eye
      if(i%10 < 5){
        arc(x,y,diameter,diameter,(10*PI)/12,(14*PI)/12); //mouth
      }else{
        strokeWeight(4); //mouth
        line(x,y,x-radius,y);
      }
    }
    i++;
  }
}
