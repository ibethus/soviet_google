Walker w1;

void setup() {
  size(1000, 600);
  background(255);
  w1 = new Walker();
}

void draw(){
  w1.step();
  w1.display();
}
