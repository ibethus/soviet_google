void setup() {
  size(400, 400);
  frameRate(10);
}

void draw() {
  background(256, 15, 192);
  dessinerLigne(100, 200, 200, 300, "a");
  dessinerLigne(100, 200, 300, 100, "b");
  dessinerBoite(100, 200, "Une");
  dessinerBoite(200, 300, "Deux");
  dessinerBoite(300, 100, "Trois");
}

void dessinerLigne(float xa, float ya, float xb, float yb, String texte) {
  textAlign(CENTER, CENTER);
  fill(0, 0, 0);
  line(xa, ya, xb, yb);
  fill(0, 0, 230);
  ellipse((xa+xb)/2, (ya+yb)/2, 20, 20);
  fill(255, 255, 255);
  text(texte, (xb+xa)/2, (ya+yb)/2);
}

void dessinerBoite(float x, float y, String texte) {
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  fill(255, 255, 255);
  rect(x, y, 50, 25);
  fill(0, 0, 0);
  text(texte, x, y);
}
