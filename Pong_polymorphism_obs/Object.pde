abstract class Object {
  float x;
  float y;
  
  //ball
  float speedX = random(3, 8);  // Speed along the x-axis
  float speedY = random(-2, 2);  // Speed along the y-axis
  float diameter;
  float radius;
  
  //paddle
  int paddle_w = 10;  // width of the paddle
  int paddle_h = 80;  // height of the paddle
  
  //obstacle
  int obstacle_w = 20; //width of the obstacle
  int obstacle_h = (int)random(30,100); //height of the obstacle
  boolean alive = true;
  
  //score
  int score = 0;
  
  abstract void update();
  abstract void display();
  
  // Change ball direction when paddle is hit
  // and bump it back to the edge of the paddle
  void hit(Object p) {
    speedX = speedX * -1;
    x += speedX;
  }
}
