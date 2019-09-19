//Interrupteurs
Interrupteur int1 = new Interrupteur(950, 60);
Interrupteur int2 = new Interrupteur(950, 80);
Interrupteur int3 = new Interrupteur(950, 500);
Interrupteur int4 = new Interrupteur(950, 520);
Interrupteur int5 = new Interrupteur(50, 300);

//Ellipses
Lampes plafonnier = new Lampes(200, 300, 150, 150);
Lampes chevet1 = new Lampes(900, 50, 100, 100);
Lampes chevet2 = new Lampes(900, 550, 100, 100);

void setup() {
  size(1000, 600);
}

void draw() {
  smooth();
  background(120); 
  plafonnier.dessiner();
  chevet1.dessiner();
  chevet2.dessiner();
  lit();
  int1.dessiner();
  int2.dessiner();
  int3.dessiner();
  int4.dessiner();
  int5.dessiner();
}


void mousePressed() {
  if ((int2.contientPointeur()) || (int3.contientPointeur()) || (int5.contientPointeur())) {
    plafonnier.changer();
    if (int2.contientPointeur()) {
      int2.changer();
    } else if (int3.contientPointeur()) {
        int3.changer();
      } else if(int5.contientPointeur()) {
  int5.changer();
}
}
if (int1.contientPointeur()) {
  chevet1.changer();
  int1.changer();
}
if (int4.contientPointeur()) {
  chevet2.changer();
  int4.changer();
}
}

void lit() {
  fill(250, 0, 50);
  rect(500, 100, 500, 400);
}
