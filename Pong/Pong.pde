Paddle paddle1, paddle2;
Ball ball;
Lives lives;

void setup(){
  size(600,400);
  noCursor();
  background(0);
  
  paddle1 = new Paddle(18);
  paddle2 = new Paddle(580);
  ball = new Ball();
  lives = new Lives(3);
  ball.init();
}

void draw(){
  if(lives.lives>0){
    fill(255);
    rect(0,0,600,400);
    fill(0);
    text(lives.lives+" lives remaining",200,20);
    ellipse(ball.ballX,ball.ballY,10,10);
    
    ball.wallY();
    ball.move();
    
    paddle1.show();
    paddle2.show();
    
    paddle1.move();
    paddle2.move();
    
    paddle1.direction();
    paddle2.direction();
    
    paddle1.judge();
    paddle2.judge();
}
}
