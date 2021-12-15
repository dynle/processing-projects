class Lives{
  int lives;
  
  //default constructor
  Lives(){
    this.lives = 3;
  }
  
  //constructor
  Lives(int _lives){
    this.lives = _lives;
  }
  
  void decrease(){
    this.lives--;
  }
}
