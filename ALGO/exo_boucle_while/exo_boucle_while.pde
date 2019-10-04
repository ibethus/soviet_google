void setup() {
  fullScreen();
}

void draw() {
  background(100);
  fill(255);
  stroke(255);
  tracerLignesHorizontales();
  tracerLignesVerticales();
}

void tracerLignesHorizontales() {
  int y = 50;
  while (y <= height) {
    text("y=" + y, 5, y-5);
    line(0, y, width, y);
    y += 50;
  }
}
  void tracerLignesVerticales(){
    int x = 50;
  while (x <= width) {
    text("x=" + x, x+5, 45);
    line(x, 0, x, height);
    x += 50;
  }
}
