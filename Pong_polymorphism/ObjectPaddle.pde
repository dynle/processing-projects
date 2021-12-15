class ObjectPaddle extends Object{
  
  ObjectPaddle() {
    this.x = (int)(width-w*2);
    this.y = (int)(height/2);
  }

  // Change paddle position with cursor
  void update() {
    if (keyPressed){
      switch(keyCode){
        case 38:
          y -= 12;
          break;
        case 40:
          y += 12;
          break;
      }
      y = constrain(y,0,height-h);
    }
  }

  // Draw paddle to the display window
  void display() {
    fill(102);
    noStroke();
    rect(x, y, w, h);
  }
  
  void hit(ObjectPaddle p){}
}
