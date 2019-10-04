void setup() {
  size(600, 400);
}

void draw() {
  background(100, 0, 200);
  for (int i=10; i>=0; i--) {
    int y = abs(i*30)+30;
    y+=20;
    fill(255);
    textSize(20);
    textAlign(CENTER);
    text(i, 300, y);
  }
}
