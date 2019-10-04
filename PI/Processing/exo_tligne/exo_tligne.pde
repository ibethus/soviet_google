int xA = 0;
int yA = 0;
int xB = 0;
int yB = 0;
final color BLEU = color(0, 0, 255);
float longueur = 0;
float valeurTension = 0;
color ROUGE = color(valeurTension, 0, 0);
color COULEUR_LIGNE = color(ROUGE);

void setup() {
  size(1000, 700);
}

void draw() {
  background(0);
  stroke(valeurTension, 0, 0);
  strokeWeight(50);
  line(xA, yA, xB, yB);
  longueur = sqrt(((xB-xA)*(xB-xA))+((yB-yA)*(yB-yA)));
  valeurTension = ((longueur/255)*100)+50;
}
void mousePressed() {
  xA = mouseX;
  yA = mouseY;
  xB = mouseX;
  yB = mouseY;
}
void mouseDragged() {
  xB = mouseX;
  yB = mouseY;
}
void mouseReleased() {
  xB = mouseX;
  yB = mouseY;
  COULEUR_LIGNE = color(BLEU);
}
