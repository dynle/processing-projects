class ObjectBall extends Object{
  
  //delete this
  ObjectBall() {
    this.x = -radius;
    this.y = height/2;
  }
  
  ObjectBall(float _diameter){
    super(_diameter);
    this.x = -radius;
    this.y = height/2;
  }
  
  // Change ball position
  void update() {
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

    // If ball hits the left edge, change direction of X
    if (x < radius) {
      x = radius;
      speedX = speedX * -1;
    } 

    // If ball hits top or bottom, change direction of Y  
    if (y > height - radius) {
      y = height - radius;
      speedY = speedY * -1;
    } else if (y < radius) {
      y = radius;
      speedY = speedY * -1;
    }
  }
  
  // Draw ball to the display window
  void display() {
    fill(255);
    noStroke();
    ellipse(x, y, diameter, diameter);
  }
}
