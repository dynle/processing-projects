abstract class Object {
  float x;
  float y;
  
  //paddle
  int paddle_w = 10;  // Width of the paddle
  int paddle_h = 80;  // Height of the paddle
  int spd=0;
  
  //obstacle
  int obstacle_w = 20;
  int obstacle_h = (int)random(30,100);
  boolean alive = true;
  
  //score
  int score = 0;
  
  abstract void update();
  abstract void display();
}
