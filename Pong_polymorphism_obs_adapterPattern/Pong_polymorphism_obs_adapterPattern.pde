Moving[] movingObjs; //interface array
Object[] obsArray; //obstacles array
Object paddle, scoreObj;

int numObs = 20;  //number of obstacles
int numObjs = 5; //number of flying objects
boolean collisionObs;
boolean collisionObjs;

void setup() {
  size(600, 600);
  background(0);
  
  paddle = new ObjectPaddle();
  movingObjs = new Moving[numObjs];
  obsArray = new Object[numObs];
  scoreObj = new Score();
  
  for(int i=0;i<movingObjs.length;i++){
    float rand = random(-1.0,1.0);
    if(rand<0) movingObjs[i] = new MovingBall();
    else movingObjs[i] = new MovingPackman();
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
  
  //show objects and obstacles
  for(Moving obj : movingObjs){
    obj.move();
    obj.show();
    
    collisionObjs = hitJudgement(paddle, obj);
                                
    if (collisionObjs == true) {
      obj.hit(paddle);
    }
    
    for(Object obstacle : obsArray){
      obstacle.display();
    
      if(obstacle.alive==true){
        collisionObs = hitJudgement(obstacle, obj);
      
        if (collisionObs == true){
          scoreObj.score++;
          obj.hit(obstacle);
          obstacle.update();
        }
      }
    }
  }
  
  scoreObj.display();
}

boolean hitJudgement(Object p, Moving b) {
 
  float circleDistanceX = abs(b.getX() - p.x - p.paddle_w/2);
  float circleDistanceY = abs(b.getY() - p.y - p.paddle_h/2);
 
  if (circleDistanceX > (p.paddle_w/2 + b.getRad())) { return false; }
  if (circleDistanceY > (p.paddle_h/2 + b.getRad())) { return false; }
  if (circleDistanceX <= p.paddle_w/2) { return true; }
  if (circleDistanceY <= p.paddle_h/2) { return true; }
 
  float cornerDistance = pow(circleDistanceX - p.paddle_w/2, 2) + pow(circleDistanceY - p.paddle_h/2, 2);
  if (cornerDistance <= pow(b.getRad(), 2)) {
    return true; 
  } else {
    return false;
  }
}
