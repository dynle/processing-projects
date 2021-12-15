class MovingPackman implements Moving {
  private ObjectPackman pman;
  
  MovingPackman(){
    pman = new ObjectPackman(random(30,50));
  }
  
  void move(){
    pman.attack();
  }
  
  void show(){
    pman.display();
  }
  
  void hit(Object p){
    pman.hit(p);
  }
  
  float getX(){
    return pman.x;
  }
  
  float getY(){
    return pman.y;
  }
  
  float getRad(){
    return pman.radius;
  }
  
  float setSpeedX(float num){
    return pman.speedX = num;
  }
  
  float setSpeedY(float num){
    return pman.speedY = num;
  }
}
