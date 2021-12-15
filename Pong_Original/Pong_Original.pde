int ballDX;
int ballDY;
int paddleY1=200;
int paddleD1=0;
int paddleY2=200;
int paddleD2=0;
int ballX=250+int(random(100));
int ballY=10+int(random(380));
int lives=3;
void setup(){
  size(600,400);
  noCursor();
  background(0);
  if(random(2)>1){
    ballDX=2;
  }else{
    ballDX=-2;
  }
  if(random(2)>1){
    ballDY=2;
  }else{
    ballDY=-2;
  }
}
void draw(){
  if(lives>0){
    fill(255);
    rect(0,0,600,400);
    fill(0);
    text(lives+" lives remaining",200,20);
    ellipse(ballX,ballY,10,10);
    rect(18,paddleY1-25,2,50);
    rect(580,paddleY2-25,2,50);
    if(keyPressed){
      switch(keyCode){
        case 38:
          if(ballDX==-2){
            paddleD1=-4;
            paddleD2=0;
          }else{
            paddleD1=0;
            paddleD2=-4;
          }
          break;
        case 40:
          if(ballDX==-2){
            paddleD1=4;
            paddleD2=0;
          }else{
            paddleD1=0;
            paddleD2=4;
          }
          break;
      }
    }else{
      paddleD1=0;
      paddleD2=0;
    }
    if(ballY<5||ballY>395){
      ballDY=0-ballDY;
    }
    if(ballX<25){
      if(paddleY1>ballY-25&&paddleY1<ballY+25){
        ballDX=0-ballDX;
      }else{
        lives-=1;
        ballX=250+int(random(100));
        ballY=10+int(random(380));
        if(random(2)>1){
          ballDX=-2;
        }else{
          ballDX=2;
        }
        if(random(2)>1){
          ballDY=-2;
        }else{
          ballDY=2;
        }
      }
    }
    if(ballX>575){
      if(paddleY2>ballY-25&&paddleY2<ballY+25){
        ballDX=0-ballDX;
      }else{
        lives-=1;
        ballX=250+int(random(100));
        ballY=10+int(random(380));
        if(random(2)>1){
          ballDX=-2;
        }else{
          ballDX=2;
        }
        if(random(2)>1){
          ballDY=-2;
        }else{
          ballDY=2;
        }
      }
    }
    paddleY1+=paddleD1;
    if(paddleY1<25||paddleY1>375){
      paddleY1-=paddleD1;
    }
    paddleY2+=paddleD2;
    if(paddleY2<25||paddleY2>375){
      paddleY2-=paddleD2;
    }
    ballX+=ballDX;
    ballY+=ballDY;
  }
}
