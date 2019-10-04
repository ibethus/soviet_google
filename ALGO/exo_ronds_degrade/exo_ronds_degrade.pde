void setup() {
  fullScreen();
}

void draw() {
  noStroke();
  background(50, 100, 200);
  dessinerCercle();
  dessinerCercle2();
  dessinerCercle3();
  dessinerCercle4();
  dessinerCercle5();
}

void dessinerCercle() {
  float r = width/40;
  float x = r;
  float c = 0;
  while ((x + r) <= width) {
    fill(c);
    ellipse(x, height/2, r*2, r*2);
    x += r*2;
    c += 255/20;
    println(c);
  }
}
  void dessinerCercle2() {
  float r = width/40;
  float x = r;
  float c = 0;
  while ((x + r) <= width) {
    fill(c, 0, 0);
    ellipse(x, height/4, r*2, r*2);
    x += r*2;
    c += 255/20;
    println(c);
  }
}
  void dessinerCercle3() {
  float r = width/40;
  float x = r;
  float c = 0;
  while ((x + r) <= width) {
    fill(0, c, 0);
    ellipse(x, height/7, r*2, r*2);
    x += r*2;
    c += 255/20;
    println(c);
  }
}
  void dessinerCercle4() {
  float r = width/40;
  float x = r;
  float c = 0;
  while ((x + r) <= width) {
    fill(0, 0, c);
    ellipse(x, height/2.5, r*2, r*2);
    x += r*2;
    c += 255/20;
    println(c);
  }
}
 void dessinerCercle5() {
  float r = width/40;
  float x = r;
  float c = 0;
  while ((x + r) <= width) {
    fill(0, c, c);
    ellipse(x, height-200, r*2, r*2);
    x += r*2;
    c += 255/20;
    println(c);
  }
}
