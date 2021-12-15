int numBalls = 2; //number of balls
int numObs = 20; //number of obstacles
boolean collisionBall;
boolean collisionObs;

Object ball, paddle, scoreObj;
Object[] ballArray;
Object[] obsArray;

void setup() {
  size(600, 600);
  background(0);
  
  paddle = new ObjectPaddle();
  ballArray = new Object[numBalls];
  obsArray = new Object[numObs];
  scoreObj = new Score();
  
  for (int i=0; i<ballArray.length;i++){
    ballArray[i] = new ObjectBall(random(10,30));
  }
  
  for (int i=0;i<obsArray.length;i++){
    obsArray[i] = new ObjectObstacle();
  }
  noCursor();
}

void draw() {
  background(0);
  
  //add score
  fill(243,247,10);
  textSize(20);
  textAlign(CENTER);
  text("score: "+scoreObj.score+"/"+numObs,300,30);
  
  paddle.update();
  paddle.display();
  
  //show balls and obstacles
  for(Object ball : ballArray){
    ball.update();
    ball.display();
    
    collisionBall = hitJudgement(paddle, ball);
                                
    if (collisionBall == true) {
      ball.hit(paddle);
    }
    
    for(Object obstacle : obsArray){
    obstacle.display();
    
      if(obstacle.alive==true){
        collisionObs = hitJudgement(obstacle, ball);
      
        if (collisionObs == true){
          scoreObj.update();
          ball.hit(obstacle);
          obstacle.update();
        }
      }
    }
  }
  
  scoreObj.display();
}

boolean hitJudgement(Object p, Object b) {
 
  float circleDistanceX = abs(b.x - p.x - p.paddle_w/2);
  float circleDistanceY = abs(b.y - p.y - p.paddle_h/2);
 
  if (circleDistanceX > (p.paddle_w/2 + b.radius)) { return false; }
  if (circleDistanceY > (p.paddle_h/2 + b.radius)) { return false; }
  if (circleDistanceX <= p.paddle_w/2) { return true; }
  if (circleDistanceY <= p.paddle_h/2) { return true; }
 
  float cornerDistance = pow(circleDistanceX - p.paddle_w/2, 2) + pow(circleDistanceY - p.paddle_h/2, 2);
  if (cornerDistance <= pow(b.radius, 2)) {
    return true; 
  } else {
    return false;
  }
}
