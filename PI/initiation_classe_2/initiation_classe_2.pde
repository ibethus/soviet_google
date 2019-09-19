//Variables globales
final color ROUGE = color(255, 0, 0);
final color BLEU = color(0, 0, 255);
final color VERT = color(0, 255, 0);

//Cercles
Cercle c1 = new Cercle(0, 300, 200, BLEU);
Cercle c2 = new Cercle(1000, 300, 50, ROUGE);
int dep = 5;
int dep2 = 50;

void setup() {
  smooth();
  size(1000, 600);
  frameRate(60);
}

void draw() {
  background(255);

  //determination du sens de déplacement
  if ((dep==5) && ((c1.x+c1.r) >= (c2.x-c2.r))) {
    dep = -5;
    dep2 = -50;
  }
  if ((dep==-5) && ((c1.x-c1.r) <= 0)) {
    dep = 5;
  }
  if ((dep2==-50) && ((c2.x+c2.r) >= 1000)) {
    dep2 = 50;
  }

  //déplacement des cercles
  c1.x+=dep;
  c2.x-=dep2;
  c1.dessiner();
  c2.dessiner();
}
