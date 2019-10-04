// variables globales
float angleHoule = 0;
float angleSoleil = 0;
float angleBateau1 = 0;
float angleBateau2 = 0;
float soleilHorizontal = -150;
float couleurCiel = 50;
float directionBateau1 = 1000; //position de départ du bateau 1
float directionBateau2 = 200; //position de départ du bateau 2
float departCanon = 0; //point de départ du boulet de canon
float xTir =0; //vitesse du tir

// constantes globales
final color BLEU_MER = color(0, 0, 100);
final color BLANC_VOILE = color(250, 250, 250);
final color COULEUR_COQUE = color(70, 70, 0);
final color NOIR = color(0, 0, 0);
final color JAUNE = color(250, 200, 0);

void setup() {
  size(1500, 1000);
  frameRate(60);
}

void draw() {
  // Augmentation du facteur de houle mer
  angleHoule += 0.02;
  float houle = 30 * (float) sin(angleHoule);

  //Augmentation du facteur de houle Bateau 1
  angleBateau1 += 0.027;
  float houleBateau1 = 47 * (float) sin(angleBateau1);

  //Augmentation du facteur de houle bateau 2
  angleBateau2 -= 0.025;
  float houleBateau2 = 45 * (float) sin(angleBateau2);

  //Le point de départ du canon doit suivre la houle
  departCanon = angleBateau1;

  // Augmentation du facteur de déplacement vertical du soleil
  angleSoleil += -0.0018;
  float soleilDeplacement = 500 * (float) sin(angleSoleil);
  // Mouvement horizontal du soleil
  if (soleilDeplacement<0) {
    soleilHorizontal+=1;
  } else {
    soleilHorizontal-=1;
  }
  // On dessine le background en fonction de la position du soleil
  background (0, 0, couleurCiel);

  //Défini dans quel sens le soleil doit se déplacer en fonction de sa hauteur dans le ciel
  if ((soleilDeplacement<0) && (couleurCiel<255)) {
    couleurCiel+=1;
  } else {
    if (couleurCiel>50) {
      couleurCiel-=1;
    }
  }
  //Appel des fonction de dessin des éléments
  dessinerSoleil(soleilHorizontal, soleilDeplacement);
  dessinerLune(soleilHorizontal, -soleilDeplacement);
  dessinerMer(houle+700);
  dessinerBateau1(directionBateau1, houleBateau1);
  dessinerBateau2(directionBateau2, houleBateau2);
  if (key == CODED) {
    if (keyCode == UP) {
      tirerCanon();
      xTir-=10;
    } else if (keyCode == DOWN) {
      xTir=0;
    }
  }
}  
//Fonction qui permet de faire bouger le bateau 1 grâce au clavier
void keyPressed() {
  if (keyCode == LEFT) {
    directionBateau1 -= 15;
  } else if (keyCode == RIGHT) {
    directionBateau1 += 15;
  } else if (key == 'q') {
    directionBateau2 -= 15;
  } else if (key == 'd') {
    directionBateau2 += 15;
  }
}

//Fonction pour dessiner la mer
void dessinerMer(float y) {
  noStroke();
  fill(BLEU_MER);
  rect(0, y, 1500, 700);
}
//Fonction pour dessiner le bateau 1
void dessinerBateau1(float x, float y) { // Dessin du bateau

  // Dessin du mât
  stroke(10);
  fill(NOIR);
  line(x, y+750, x, y+600);

  // Dessin de la coque
  noStroke();
  fill(COULEUR_COQUE);
  arc(x, y+700, 100, 200, 0, PI);

  // Dessin de la voile
  fill(BLANC_VOILE);
  rect(x-100, y+550, 200, 100);
}
//Fonction pour dessiner le bateau 2
void dessinerBateau2(float x, float y) { // Dessin du bateau

  // Dessin du mât
  stroke(10);
  fill(NOIR);
  line(x, y+750, x, y+600);

  // Dessin de la coque
  noStroke();
  fill(COULEUR_COQUE);
  arc(x, y+700, 100, 200, 0, PI);

  // Dessin de la voile
  fill(BLANC_VOILE);
  rect(x-100, y+550, 200, 100);
}
//dessin du boulet de canon
void tirerCanon() {
  noStroke();
  fill(NOIR);
  ellipse(directionBateau1+xTir, departCanon+700, 30, 30);
}
void dessinerSoleil(float x, float y) {
  noStroke();
  fill(JAUNE);
  ellipse(x, y+750, 200, 200);
}
void dessinerLune(float x, float y) {
  noStroke();
  fill(BLANC_VOILE);
  ellipse(x, y+750, 200, 200);
}
