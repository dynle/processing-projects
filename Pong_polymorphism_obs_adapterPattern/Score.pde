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
      for(Moving obj : movingObjs){
        obj.setSpeedX(0);
        obj.setSpeedY(0);
      }
    }
  }
}
