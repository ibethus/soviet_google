//Variables globales
boolean affichage;
int temps;

//Constantes 
final color ROUGE = color(255, 0, 0);
final color COULEUR_FOND = color(255, 200, 0);
final color COULEUR_ROND = color(200, 0, 0);
final color COULEUR_ROND2 = color(150, 0, 255);
final color COULEUR_ROND3 = color(0, 255, 0);
final int TEMPORISATION = 600;
final int TAILLE_ROND = 25;

//Appel de classes
Rond rond1 = new Rond(200, 200, TAILLE_ROND, COULEUR_ROND, 1, -1);
Rond rond2 = new Rond(100, 100, 2*TAILLE_ROND, COULEUR_ROND2, 1, 0);
Rond rond3 = new Rond(300, 400, 3*TAILLE_ROND, COULEUR_ROND3, 1, 1);

void setup() {
  size(1000, 600);
  affichage = false;
  temps = 0;
}

void draw() {
  background(COULEUR_FOND);
  if (millis() >=temps) {
    affichage = !affichage;
    temps = millis() +TEMPORISATION;
  }  
  if (affichage) {
    rond1.dessiner();
    rond2.dessiner();
    rond3.dessiner();
  }
  rond1.animer();
  rond2.pointeur();
  rond3.animer();
}
