//Constantes globales
final color BLANC = color(255);
final color ROUGE = color(255, 0, 100);
int VARIATION_TAILLE = 20;
int VARIATION_DEPLACEMENT = 20;
//Variables globales
int diametre = 50;
int cercleX = 0;
int cercleY = 0;


void setup() {
  fullScreen();
  cercleX = width/2;
  cercleY = height/2;
}

void draw() {
  noStroke();
  background(BLANC);
  fill(ROUGE);
  ellipse(cercleX, cercleY, diametre, diametre);
  println(cercleX, cercleY);
}

void keyPressed() {
  /*
  if ((key == '+') && (diametre < 800)){ //On déclare un caractère (un char) avec ' et pas ", qui est un string
   diametre += VARIATION_TAILLE;
   } else if ((key == '-') && (diametre > 10)) {
   diametre -= VARIATION_TAILLE;
   } else if (key == '=') {
   diametre = 50;
   }
   */

  //Introduction du switch pour remplacer les multiples "if"
  switch(key) {
  case '+' : 
    if (diametre < 800) {
      diametre += VARIATION_TAILLE;
    }
    break;
  case '-' : 
    if (diametre > 10) {
      diametre -= VARIATION_TAILLE;
    }
    break;
  case '=' : 
    diametre = 50; 
    break;
  case CODED : 
    traiterToucheSpeciale();
    break;
  }
}
void traiterToucheSpeciale() { //Permet de traiter les touches spéciales, telles que droite, gauche, etc. (voir doc pour liste)
  switch(keyCode) {
  case LEFT :
    if ((cercleX-diametre/2) >= 0) {
      cercleX -= VARIATION_DEPLACEMENT;
    }
    break;
  case RIGHT :
    if ((cercleX+diametre/2) <= width) {
      cercleX += VARIATION_DEPLACEMENT;
    }
    break;
  case UP :
    if ((cercleY-diametre/2) >= 0) {
      cercleY -= VARIATION_DEPLACEMENT;
    }
    break;
  case DOWN :
    if ((cercleY+diametre/2) <= height) {
      cercleY += VARIATION_DEPLACEMENT;
    }
    break;
  case ESC :
    exit();
    break;
  }
}
