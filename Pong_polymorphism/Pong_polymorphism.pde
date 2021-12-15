Object ball, paddle;
int numBalls = 3;
Object[] ballArray = new Object[numBalls];

void setup() {
  size(600, 600);
  background(0);
  paddle = new ObjectPaddle();
  
  for (int i=0; i<ballArray.length;i++){
    ballArray[i] = new ObjectBall(random(10,50));
  }
  noCursor();
}

void draw() {
  boolean collision;
  
  background(0);
  paddle.update();
  paddle.display();
  
  for(Object ball : ballArray){
    ball.update();
    ball.display();
    
    // Set variable to true if shapes are overlapping, false if not
    collision = hitPaddle(paddle, ball);
                                
    if (collision == true) {
      ball.hit(paddle);
    }
  }
}

boolean hitPaddle(Object p, Object b) {
 
  float circleDistanceX = abs(b.x - p.x - p.w/2);
  float circleDistanceY = abs(b.y - p.y - p.h/2);
 
  if (circleDistanceX > (p.w/2 + b.radius)) { return false; }
  if (circleDistanceY > (p.h/2 + b.radius)) { return false; }
  if (circleDistanceX <= p.w/2) { return true; }
  if (circleDistanceY <= p.h/2) { return true; }
 
  float cornerDistance = pow(circleDistanceX - p.w/2, 2) + pow(circleDistanceY - p.h/2, 2);
  if (cornerDistance <= pow(b.radius, 2)) {
    return true; 
  } else {
    return false;
  }
}
