//Images
PImage pinceauRouge;
PImage pinceauVert;
PImage main;

//Constantes globales
Bouton bouton1;
Bouton bouton2;
Bouton bouton3;
Pastille pastille1;
Pastille pastille2;
Pastille pastille3;
final color ROUGE = color(255, 0, 0);
final color VERT = color(0, 255, 0);
final color BLEU = color(0, 0, 255);

//Variables gloables
color couleur1 = color(200);
color couleur2 = color(200);
color couleur3 = color(200);
color couleur;
boolean deplacement;

void setup() {
  size(1000, 600);
  noStroke();
  bouton1 = new Bouton(800, 50, ROUGE, "Rouge");
  bouton2 = new Bouton(800, 150, VERT, "Vert");
  bouton3 = new Bouton(800, 250, BLEU, "Déplacer");
  pastille1 = new Pastille(200, 200, couleur1);
  pastille2 = new Pastille(300, 500, couleur2);
  pastille3 = new Pastille(100, 500, couleur3);
  pinceauRouge = loadImage("pinceau rouge.png");
  pinceauVert = loadImage("pinceau vert.png");
  main = loadImage("main.png");
}

void draw() {
  background(255);
  bouton1.dessiner();
  bouton2.dessiner();
  bouton3.dessiner();
  pastille1.dessiner();
  pastille2.dessiner();
  pastille3.dessiner();
  if (couleur == 1) {
    noCursor();
    image (pinceauRouge, mouseX, mouseY);
  } else if (couleur == 2) {
    noCursor();
    image (pinceauVert, mouseX, mouseY);
  } else if (couleur == 3) {
    noCursor();
    image (main, mouseX, mouseY);
  }
}

void mousePressed() {
  if (bouton1.contientPointeur()) {
    couleur = 1;
    deplacement = false;
  } else if (bouton2.contientPointeur()) {
    couleur = 2;
    deplacement = false;
  } else if (bouton3.contientPointeur()) {
    couleur = 3;
    deplacement = !deplacement;
  }
  if ((pastille1.contientPointeur() && couleur == 1)) {
    pastille1.c = ROUGE;
  } else if ((pastille1.contientPointeur() && couleur == 2)) {
    pastille1.c = VERT;
  }
  if ((pastille2.contientPointeur() && couleur == 1)) {
    pastille2.c = ROUGE;
  } else if ((pastille2.contientPointeur() && couleur == 2)) {
    pastille2.c = VERT;
  }
  if ((pastille3.contientPointeur() && couleur == 1)) {
    pastille3.c = ROUGE;
  } else if ((pastille3.contientPointeur() && couleur == 2)) {
    pastille3.c = VERT;
  }
}

void mouseDragged() {
  if (deplacement && pastille1.contientPointeur()) {
    pastille1.x = mouseX;
    pastille1.y = mouseY;
  } else if (deplacement && pastille2.contientPointeur()) {
    pastille2.x = mouseX;
    pastille2.y = mouseY;
  } else if (deplacement && pastille3.contientPointeur()) {
    pastille3.x = mouseX;
    pastille3.y = mouseY;
  }
}
