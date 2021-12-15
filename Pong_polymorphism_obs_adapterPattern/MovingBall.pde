class MovingBall implements Moving {
  private ObjectBall ball;
  
  MovingBall(){
    ball = new ObjectBall(random(30,50));
  }
  
  void move(){
    ball.move();
  }
  
  void show(){
    ball.display();
  }
  
  void hit(Object p){
    ball.hit(p);
  }
  
  float getX(){
    return ball.x;
  }
  
  float getY(){
    return ball.y;
  }
  
  float getRad(){
    return ball.radius;
  }
  
  float setSpeedX(float num){
    return ball.speedX = num;
  }
  
  float setSpeedY(float num){
    return ball.speedY = num;
  }
}
