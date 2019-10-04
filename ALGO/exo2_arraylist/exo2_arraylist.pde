//Contsantes globales
final color ROUGE = color(255, 0, 0);
final color BLANC = color(255);

//Declaration de la liste
ArrayList<pastille>listePastille = new ArrayList<pastille>();

//Variables globales
boolean dessinerOK;
int taille = 100;

void setup() {
  size(1000, 600);
}

void draw() {
  background(0);
  for (pastille p : listePastille) {
    p.c = p.allume ? ROUGE : BLANC;
    p.dessiner();
  }
}
void mousePressed() {
  dessinerOK = true;
  for (pastille p : listePastille) {
    if (p.contientPointeur()) {
      p.changer();
      dessinerOK = false;
    }
  }
  if (dessinerOK) {  
    pastille nouvellePastille = new pastille(mouseX, mouseY, taille, BLANC);
    listePastille.add(nouvellePastille); //On ajoute la pastille dans la liste
  }
}
