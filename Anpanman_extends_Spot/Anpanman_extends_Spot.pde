Spot sp1, sp2, sp3;  // Declare the objects
Anpanman an1,an2;
   
void setup() { 
  size(600, 600);
  noStroke();  
  sp1 = new Spot(20, 50, 40, 0.5);  // Construct sp1
  sp2 = new Spot(50, 50, 10, 2.0);  // Construct sp2
  sp3 = new Spot(80, 50, 30, 1.5);  // Construct sp3
  an1 = new Anpanman(350,200,4);
  an2 = new Anpanman();
} 
   
void draw() { 
  fill(0, 15);
  rect(0, 0, width, height);
  fill(255); 
  sp1.move();
  sp2.move();
  sp3.move(); 
  an1.move();
  an2.move();
  sp1.display();
  sp2.display();
  sp3.display(); 
  an1.display();
  an2.display();
}
