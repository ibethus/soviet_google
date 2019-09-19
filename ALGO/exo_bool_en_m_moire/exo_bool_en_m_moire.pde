/*clic dans le carré = blanc, relacher = noir, clic = blanc, etc. Il faut donc mémoriser l'état (allumé ou pas).
 L'état sert à décider d ela couleur lors du clic, il doit donc pouvoir changer d'état.*/

int X= 200;
int Y = 200;
int W = 300;
int H = 200;

boolean estAllume = false;

void setup() {
  size(1000, 600);
}

void draw() {
  background(120); 
  if (estAllume) {
    fill(0);
  } else {
    fill(255);
  }
  rect(X, Y, W, H);
}

boolean pointeurDansRectangle(int x, int y, int w, int h) {
  return (x<mouseX)
    && (mouseX<x+w)
    && (y<mouseY)
    && (mouseY<y+h);
}

void mousePressed() {
  if (pointeurDansRectangle(X, Y, W, H)) {
    estAllume = !estAllume;
  }
}
