Anpanman apm1, apm2, apm3, apm4;

void setup() {
  size(600, 600);
  apm1 = new Anpanman(150, 200, 3);
  apm2 = new Anpanman(450, 200, 5);
  apm3 = new Anpanman(250, 200, 2);
  apm4 = new Anpanman(350, 200, 4);
}

void draw() {
  background(0);
  apm1.move();
  apm1.show(); //capsulation

  apm2.move();
  apm2.show();

  apm3.move();
  apm3.show();

  apm4.move();
  apm4.show();
}
