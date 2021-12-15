class ObjectObstacle extends Object {
  ObjectObstacle(){
    this.x = (int)random(width*0.15,width*0.85);
    this.y = (int)random(obstacle_h/2,height-obstacle_h);
  }
  
  void update(){
    alive = false;
  }
  void display(){
    if(alive == true){
      fill(198,80,80);
      rect(x, y,obstacle_w,obstacle_h);
    }
  }
}
