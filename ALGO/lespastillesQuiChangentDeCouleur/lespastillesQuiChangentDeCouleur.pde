// Constantes
final color BLEU = color(0, 0, 255);
final color BLEU_FONCE = color (25, 51, 144);
final color VERT = color(0, 255, 0);
final color VERT_FONCE = color(30, 173, 28);
final color ROUGE = color(255, 0, 0);
final color ROUGE_FONCE = color(170, 5, 5);
final color BLANC = color(255);
final color GRIS = color(127);
final color NOIR = color(0);
enum Action { 
  DEPLACER, PEINDRE, RIEN
}


// https://previews.123rf.com/images/ylivdesign/ylivdesign1611/ylivdesign161101206/67252953-ic%C3%B4ne-de-pinceau-illustration-de-dessin-anim%C3%A9-d-ic%C3%B4ne-de-vecteur-de-pinceau-pour-la-conception-de-sites-w.jpg

// variable globale

Pastilles pastille1 = new Pastilles(100, 100, 50, BLEU);
Pastilles pastille2 = new Pastilles(100, 300, 50, VERT);
Pastilles pastille3 = new Pastilles(100, 500, 50, ROUGE);
Pastilles pastilleEnMvt; // Pointe su rla pastille a déplacer


Bouttons bouttonRouge = new Bouttons(800, 50, 200, 75, "ROUGE", ROUGE, ROUGE_FONCE);
Bouttons bouttonVert= new Bouttons(800, 200, 200, 75, "VERT", VERT, VERT_FONCE);
Bouttons bouttonDeplacer = new Bouttons(800, 350, 200, 75, "DEPLACER", BLEU, BLEU_FONCE);

boolean modePeintreRouge = false;
boolean modePeintreVert = false;
boolean modeDeplacement = false;

Action action;
color couleurPeinture; 
PImage main;
PImage pinceauVert;
PImage pinceauRouge;

void setup() {
  main = loadImage("blue-whole-hand-32.png");
  pinceauVert = loadImage("green-paint-brush-32.png");
  pinceauRouge = loadImage("red-paint-brush-32.png");

  size(1024, 600);
}

void draw() {

  background(BLANC);
  pastille1.dessiner();
  pastille2.dessiner();
  pastille3.dessiner();

  bouttonRouge.dessiner();
  bouttonVert.dessiner();
  bouttonDeplacer.dessiner();

  // Je change l'image sous le pointeur de souris en fonction de l'action
  if (action == Action.PEINDRE && couleurPeinture == VERT) {

    image(pinceauVert, mouseX, mouseY, 50, 50);
  } else if (action == Action.PEINDRE && couleurPeinture == ROUGE) {

    image(pinceauRouge, mouseX, mouseY, 50, 50);
  } else if ( action == Action.DEPLACER ) {

    image(main, mouseX, mouseY, 50, 50);
  }
}


void mousePressed() {

  // SI on clique sur un bouton 'couleur'
  // alors 
  // Je change sont état
  // Je désactive les autres boutons
  // Action devient 'peindre'
  // et je choisis la couleur
  if (bouttonRouge.contientLePointeur()) {

    bouttonRouge.actif = ! bouttonRouge.actif;
    bouttonVert.actif = false;
    bouttonDeplacer.actif = false;
    action = Action.PEINDRE;
    couleurPeinture = ROUGE;
  }
  if (bouttonVert.contientLePointeur()) {

    bouttonVert.actif = ! bouttonVert.actif;
    bouttonRouge.actif = false ; 
    bouttonDeplacer.actif = false;
    action = Action.PEINDRE;
    couleurPeinture = VERT;
  }
  
  // Idem pour deplacer sauf pour action  qui devient DEPLACER
  if (bouttonDeplacer.contientLePointeur()) {

    bouttonDeplacer.actif = ! bouttonDeplacer.actif;
    bouttonRouge.actif = false ;
    bouttonVert.actif = false;
    action = Action.DEPLACER;
  }

  // SI une action PEINDRE est en cours et qu'on lique sur un disque
  // Je change sa couleur
  
  if (action == Action.PEINDRE) {

    if (pastille1.contientLePointeur()) {

      pastille1.couleur = couleurPeinture;
    }
    if (pastille2.contientLePointeur()) {

      pastille2.couleur = couleurPeinture;
    }
    if (pastille3.contientLePointeur()) {

      pastille3.couleur = couleurPeinture;
    }
  }

  // Si action = DEPLACER et qu'on clique sur disque
  // Je copie dans pastillemvt le disque en question
  
  if (action == Action.DEPLACER) {

    if (pastille1.contientLePointeur()) {

      pastilleEnMvt = pastille1;
    }
    if (pastille2.contientLePointeur()) {

      pastilleEnMvt = pastille2;
    }
    if (pastille3.contientLePointeur()) {

      pastilleEnMvt = pastille3;
    }
  }
}
void mouseReleased() {

  // Si on lache le bouton lors d'un déplacemet de souris
  // alors pastliiemvt devient vide
  // Le bouton deplacer devient inactif
  
  if (pastilleEnMvt != null) {
    bouttonDeplacer.actif = false;
    action = Action.RIEN;
  }
  pastilleEnMvt = null;
}

void mouseDragged() {

  // Lors du dragg si la pastillemvt contient quelque chose je le deplace
  if (pastilleEnMvt != null) {

    pastilleEnMvt.deplacer();
  }
}
