//Variables globales
final color ROUGE = color(255, 0, 0);
final color BLEU = color(0, 0, 255);
final color VERT = color(0, 255, 0);
Cercle c1 = new Cercle();
Cercle c2 = new Cercle();
Cercle c3 = new Cercle();

void setup() {
  smooth();
  size(1000, 600);
  //Initialisation du cercle
  c1.x = 100;
  c1.y = 100;
  c1.r = 100;
  c1.c = ROUGE;
  c2.x = 300;
  c2.y = 500;
  c2.r = 200;
  c2.c = BLEU;
  c3.x = 600;
  c3.y = 300;
  c3.r = 500;
  c3.c = VERT;
}

void draw() {
  background(255);
  dessinerCercle(c1);
  dessinerCercle(c2);
  dessinerCercle(c3);
}

void dessinerCercle(Cercle unCercle) {
  noStroke();
  fill(unCercle.c);
  ellipseMode(CENTER);
  ellipse(unCercle.x, unCercle.y, unCercle.r, unCercle.r);
}
