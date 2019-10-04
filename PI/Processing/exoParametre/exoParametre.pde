// variables globales
float angle = 0;
// constantes gloables
final color BLANC = color(255, 255, 255);
final color NOIR = color(0, 0, 0);
final color COULEUR_MOCHE = color(252, 15, 192);

void setup() {
  size(400, 400); // taille fenetre 400x400
  frameRate(60); // 60 images par seconde
}

void draw() {
  // augmentation du facteur de déplacement
  angle += 0.05;
  float deplacement = 80 * (float) Math.sin(angle);
  // fonction appelée 60 fois par seconde
  background(COULEUR_MOCHE); // couleur du fond de la fenêtre
  // dessin : appels des fonctions dessinerLigne, dessinerBoite
  // d'abord les lignes
  dessinerLigne(100+deplacement, 100+deplacement, 300-deplacement, 100+deplacement, "a"); // ligne a
  dessinerLigne(300-deplacement, 100+deplacement, 300-deplacement, 300-deplacement, "b"); // ligne b
  dessinerLigne(300-deplacement, 300-deplacement, 100+deplacement, 300-deplacement, "c"); // ligne c
  dessinerLigne(100+deplacement, 300-deplacement, 100+deplacement, 100+deplacement, "d"); // ligne d
  dessinerLigne(100+deplacement, 100+deplacement, 300-deplacement, 300-deplacement, "e"); // ligne e
  // ensuite les boites
  // direction : bas, droite
  dessinerBoite(100+deplacement, 100+deplacement, "Une"); // boite 1
  // direction : bas, gauche
  dessinerBoite(300-deplacement, 100+deplacement, "Deux"); // boite 2
  // direction : haut, gauche
  dessinerBoite(300-deplacement, 300-deplacement, "Trois"); // boite 3
  // direction : haut, droite
  dessinerBoite(100+deplacement, 300-deplacement, "Quatre"); // boite 4
}

void dessinerLigne(float xa, float ya, float xb, float yb, String texte) {
  line(xa, ya, xb, yb);
  // texte
  // calcul des coordonnées du texte (milieu du segment)
  float xm = (xa+xb)/2;
  float ym = (ya+yb)/2;
  // affichage du disque
  fill(BLANC);
  ellipseMode(CENTER);
  ellipse(xm, ym, 20, 20);
  // affichage du texte
    
  fill(NOIR);
  textAlign(CENTER, CENTER); // texte centré horizontalement et verticalement
  text(texte, xm, ym);
}

void dessinerBoite(float x, float y, String texte) {
  final float LARGEUR = 100; //Permet de bloquer la valeur de la variable.
  final float HAUTEUR = 50;
  rectMode(CENTER); // mode: rectangle centré
  fill(BLANC);
  rect(x, y, LARGEUR, HAUTEUR); // rectangle centré en (x,y) de largeur 100 et hauteur 50
  fill(NOIR);
  textAlign(CENTER, CENTER); // texte centré horizontalement et verticalement
  text(texte, x, y);
}
