//Contsantes globales
final color BLANC = color(255);

//Declaration de la liste
ArrayList<pastille>listePastille = new ArrayList<pastille>();

//Variables globales
float taillePastille = 100;



void setup() {
  size(1000, 600);
}

void draw() {
  background(0);
  for (pastille nouvellePastille : listePastille) {
    nouvellePastille.dessiner();
  }
}
void mousePressed() {
  float minR = mouseX;
  float d;
  if (width-mouseX < minR) {
    minR = width-mouseX;
  }
  if (mouseY < minR) {
    minR = mouseY;
  }
  if (height-mouseY < minR) {
    minR = height-mouseY;
  }
  for (pastille nouvellePastille : listePastille) {
    d = dist(mouseX, mouseY, nouvellePastille.x, nouvellePastille.y)-nouvellePastille.r;
    if (d < 0) {
      return;
    }
    if (d < minR) {
      minR = d;
    }
  }
  pastille nouvellePastille = new pastille(mouseX, mouseY, minR);
  listePastille.add(nouvellePastille);
}
