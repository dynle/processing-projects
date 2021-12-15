class Score extends Object {
  void update(){
    scoreObj.score++;
  }
  
  void display(){
    //show CLEAR text and stop the movement of the balls if done
    if(scoreObj.score == numObs){
      fill(243,247,10);
      textSize(50);
      textAlign(CENTER);
      text("CLEAR!",300,300);
      for(Object ball : ballArray){
        ball.speedX = 0;
        ball.speedY = 0;
      }
    }
  }
}
