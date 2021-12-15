class FlyingObject{
  float x;
  float y;
  float speedX = random(3, 8);  // Speed along the x-axis
  float speedY = random(-2, 2);  // Speed along the y-axis
  float diameter;
  float radius = diameter/2;
  
  // Change flying object position
  void move() {
    // Update ball coordinates
    x = x + speedX;
    y = y + speedY;

    // Reset position if ball leaves the screen
    if (x > width + radius) {
      x = -radius;
      y = random(height*0.25, height*0.75);
      speedX = random(5, 15);
      speedY = random(-6, 6);
    }

    // If object hits the left edge, change direction of X
    if (x < radius) {
      x = radius;
      speedX = speedX * -1;
    } 

    // If object hits top or bottom, change direction of Y  
    if (y > height - radius){
      y = height - radius;
      speedY = speedY * -1;
    } else if (y < radius) {
      y = radius;
      speedY = speedY * -1;
    }
  }
  
  // Change object direction when paddle is hit
  // and bump it back to the edge of the paddle
  void hit(Object p) {
    speedX = speedX * -1;
    x += speedX;
  }
}
