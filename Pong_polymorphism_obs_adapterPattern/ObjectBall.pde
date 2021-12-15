class ObjectBall extends FlyingObject{
  
  ObjectBall(float _diameter) {
    this.diameter = _diameter;
    this.x = -radius;
    this.y = height/2;
  }
  
  // Draw ball to the display window
  void display() {
    fill(255);
    noStroke();
    ellipse(x, y, diameter, diameter);
  }
}
