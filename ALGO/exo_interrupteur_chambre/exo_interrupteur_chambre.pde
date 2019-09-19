//Etats
boolean estAllume1 = false;
boolean estAllume2 = false;
boolean estAllume3 = false;

//Tous les rectangles
final int  X1=950, Y1=60;
final int  H1=20, W1=20;
final int  X2=950, Y2=80;
final int  X3=950, Y3=500;
final int  X4=950, Y4=520;
final int  X5=50, Y5=300;

//Ellipses
final int X6 = 200, Y6 = 300, W6 = 150, H6 = 150; //Plafonnier 
final int X7 = 900, Y7 = 50; //Position lampe 1
final int W7 = 100, H7 = 100; //Taille des lampes de chevet
final int X8 = 900, Y8 = 550; //Position lampe 2

void setup() {
  size(1000, 600);
}

void draw() {
  background(120); 
  if (estAllume1) {
    fill(250, 200, 0);
  } else {
    fill(250);
  }
  ellipseUn(X6, Y6, H6, W6);
  if (estAllume2) {
    fill(250, 200, 0);
  } else {
    fill(250);
  }
  ellipseUn(X7, Y7, H7, W7);

  if (estAllume3) {
    fill(250, 200, 0);
  } else {
    fill(250);
  }

  ellipseUn(X8, Y8, H7, W7);

  lit();

  fill(255);

  interrupteur(X1, Y1, W1, H1); //On peut également créer une variable booléenne qui définit s'il sont pressés ou non.
  interrupteur(X2, Y2, W1, H1);
  interrupteur(X3, Y3, W1, H1);
  interrupteur(X4, Y4, W1, H1);
  interrupteur(X5, Y5, W1, H1);
}

boolean pointeurDansInterrupteur(int x, int y, int w, int h) {
  return x<mouseX && mouseX<x+w
    && y<mouseY && mouseY<y+h;
}

void mousePressed() {
  if ((pointeurDansInterrupteur(X1, Y1, W1, H1)) || (pointeurDansInterrupteur(X4, Y4, W1, H1)) || (pointeurDansInterrupteur(X5, Y5, W1, H1))) {
    estAllume1 = !estAllume1;
  }
  if (pointeurDansInterrupteur(X2, Y2, W1, H1)) {
    estAllume2 = !estAllume2;
  }
  if (pointeurDansInterrupteur(X3, Y3, W1, H1)) {
    estAllume3 = !estAllume3;
  }
}

void lit() {
  fill(250, 0, 50);
  rect(500, 100, 500, 400);
}
void ellipseUn(int x, int y, int w, int h) {
  ellipse(x, y, w, h);
}
void interrupteur(float x, float y, float w, float h) {
  rect(x, y, w, h);
}
