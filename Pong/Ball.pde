class Ball{
  //ball X direction speed 
  int ballDX;
  //ball Y direction speed
  int ballDY;

  //position of the ball
  int ballX;
  //position of the ball
  int ballY;

  void init() {
    //first positions of the ball on X-axis and Y-axis respectively
    ballX=250+int(random(100));
    ballY=10+int(random(380));
    
    //Randomly set direction and speed of X
    if (random(2)>1) {
      ballDX=2;
    } else {
      ballDX=-2;
    }

    //Randomly set direction and speed of Y 
    if (random(2)>1) {
      ballDY=2;
    } else {
      ballDY=-2;
    }
  }

  void wallY() {
    //rebound when the ball touches the wall on Y-axis
    if (ballY<5||ballY>395) {
      ballDY=0-ballDY;
    }
  }

  void move() {
    //move ball
    ballX+=ballDX;
    ballY+=ballDY;
  }
}
