class Paddle {
  int paddleY=200;
  int paddleD=0;
  int paddleInitY;

  Paddle(int _paddleInitY) {
    this.paddleInitY = _paddleInitY;
  }

  void show() {
    rect(this.paddleInitY, paddleY-25, 2, 50);
  }

  void move() {
    //move paddle
    paddleY+=paddleD;
    //stop the paddle when wall
    if (paddleY<25||paddleY>375) {
      paddleY-=paddleD;
    }
  }

  void direction() {
    if (keyPressed) {
      switch(keyCode) {
      case 38:
        if(this.paddleInitY==18){
          if(ball.ballDX==-2){
            paddleD=-4;
          }else{
            paddleD=0;
          }
        }else{
          if(ball.ballDX==-2){
            paddleD=0;
          }else{
            paddleD=-4;
          }
        }
        break;
      case 40:
        if(this.paddleInitY==18){
          if(ball.ballDX==-2){
            paddleD=4;
          }else{
            paddleD=0;
          }
        }else{
          if(ball.ballDX==-2){
            paddleD=0;
          }else{
            paddleD=4;
          }
        }
        break;
      }
    } else {
      paddleD=0;
    }
  }

  void judge() {
    if (ball.ballX<25 && this.paddleInitY==18) {
      //ball bounce when paddle
      if (paddleY>ball.ballY-25&&paddleY<ball.ballY+25) {
        ball.ballDX=0-ball.ballDX;
      } else {
        //restart game if the ball does not touch the paddle
        lives.decrease();
        ball.init();
      }
    }

    if (ball.ballX>575 && this.paddleInitY==580) {
      //ball bounce when paddle
      if (paddleY>ball.ballY-25&&paddleY<ball.ballY+25) {
        ball.ballDX=0-ball.ballDX;
      } else {
        //restart game if the ball does not touch the paddle
        lives.decrease();
        ball.init();
      }
    }
  }
}
