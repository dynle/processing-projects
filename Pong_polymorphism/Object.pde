abstract class Object {
  float x;
  float y;
  
  //ball
  float speedX = random(3, 5);  // Speed along the x-axis
  float speedY = random(-2, 2);  // Speed along the y-axis
  float diameter;
  float radius;
  
  //paddle
  int w = 10;  // Width of the paddle
  int h = 80;  // Height of the paddle
  int spd=0;
  
  Object(){
    this.diameter = 15.0;
    this.radius = this.diameter/2;
  }
  
  Object(float _diameter){
    this.diameter = _diameter;
    this.radius = this.diameter/2;
  }
  
  abstract void update();
  abstract void display();
  
  // Change ball direction when paddle is hit
  // and bump it back to the edge of the paddle
  void hit(Object p) {
    speedX = speedX * -1;
    x += speedX;
  }
}
