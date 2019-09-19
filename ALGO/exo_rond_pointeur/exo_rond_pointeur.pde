int X = 200;
int Y = 100;
int W = 200;
int H = 200;
int X2 = 600;
int Y2 = 300;
int W2 = 150;
int H2 = 150;

void setup() {
  size (1000, 600);
}
void draw() {
  background(120); 
  if (pointeurDansRectangle (X, Y, W, H)) {
    fill(0);
  } else {
    fill(255);
  }
  rect(X, Y, W, H);

  if (pointeurDansRectangleDeux (X2, Y2, W2, H2)) {
    fill(0);
  } else {
    fill(255);
  }
  rect(X2, Y2, W2, H2);
}
boolean pointeurDansRectangle(int x, int y, int w, int h) {
  return (x<mouseX)
    && (mouseX<x+w)
    && (y<mouseY)
    && (mouseY<y+h);
}
boolean pointeurDansRectangleDeux(int xb, int yb, int wb, int hb) {
  return (xb<mouseX)
    && (mouseX<xb+wb)
    && (yb<mouseY)
    && (mouseY<yb+hb);
    // On pourrait écrire une fonction dansIntervalle(mouseX, x, x+w) que l'on répète dans pointeurDansRectangle.
}
