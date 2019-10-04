float i=0;

void setup() {
  size(400, 400);
  frameRate(60);
}

void draw() {
  background(256, 15, 192);
  dessinerLigne(100+i, 50+i, 300-i, 50+i, "a");
  dessinerLigne(300-i, 50+i, 300-i, 300-i, "b");
  dessinerLigne(300-i, 300-i, 100+i, 300-i, "c");
  dessinerLigne(100+i, 300-i, 100+i, 50+i, "d");
  dessinerLigne(100+i, 50+i, 300-i, 300-i, "e");
  dessinerBoite(100+i, 50+i, "Une");
  dessinerBoite(300-i, 50+i, "Deux");
  dessinerBoite(300-i, 300-i, "Trois");
  dessinerBoite(100+i, 300-i, "Quatre");
  i=80*sin(0.05);

}

void dessinerLigne(float xa, float ya, float xb, float yb, String texte) {
  textAlign(CENTER, CENTER);
  float xm = (xa+xb)/2;
  float ym = (ya+yb)/2;
  fill(0, 0, 0);
  line(xa, ya, xb, yb);
  fill(0, 0, 230);
  ellipse(xm, ym, 20, 20);
  fill(255, 255, 255);
  text(texte, xm, ym);
}

void dessinerBoite(float x, float y, String texte) {
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  
  fill(255, 255, 255);
  rect(x, y, 50, 25);
  fill(0, 0, 0);
  text(texte, x, y);
}
