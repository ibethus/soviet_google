//Déclaration variables globales
int fenetreX = 1920;
int fenetreY = 1080;
int tableauYA= 100;
int tableauYB = fenetreY-100;
int tableauXA = 100;
int tableauXB = fenetreY-100;
int nbCases = 4;
int tailleCase = (fenetreY-200)/nbCases;
boolean[][]estAllume = new boolean[nbCases][nbCases];
int ligne, colonne, casesRestantes, nbCoups;


//Déclaration constantes globales
final color JAUNE = color(250, 200, 0);
final color BLANC = color(255);

void setup() {
  fullScreen();
  for (int i=0; i<nbCases; i++) {
    estAllume[(int)random(0, nbCases)][(int)random(0, nbCases)] = true;
  }
}

void draw() {
  background(200);
  afficherScore();
  tableau();
  gagner();
  println(tailleCase);
}

void tableau() {
  for (int ligne = 0; ligne < nbCases; ligne ++) {
    float y = map(ligne, 0, nbCases, tableauXA, tableauXB);
    for (int colonne = 0; colonne < nbCases; colonne ++) {
      float x = map(colonne, 0, nbCases, tableauYA, tableauYB);   
      fill(estAllume[ligne][colonne] ? JAUNE : BLANC);
      rect(x, y, tailleCase, tailleCase);
    }
  }
}
void mousePressed() {
  nbCoups++;
  ligne = floor(map(mouseY, tableauXA, tableauXB, 0, nbCases));
  colonne = floor(map(mouseX, tableauYA, tableauYB, 0, nbCases));

  //Si dans une case, on change
  if (0<=ligne
    && ligne < nbCases
    && 0 <= colonne
    && colonne < nbCases) {
    traiterClic();
  }
}

void traiterClic() { //On change la couleur des cases cliquées
  estAllume[ligne][colonne] ^= true; //^ est le "ou" exclusif.
  if (colonne-1>=0) {
    estAllume[ligne][colonne-1] ^=true;
  }
  if (colonne+1<nbCases) {
    estAllume[ligne][colonne+1] ^= true;
  }
  if (ligne-1>=0) {
    estAllume[ligne-1][colonne] ^=true;
  }
  if (ligne+1<nbCases) {
    estAllume[ligne+1][colonne] ^=true;
  }
}

void afficherScore() {
  casesRestantes = 0;
  for (int i=0; i<nbCases; i++) {
    for (int j=0; j<nbCases; j++) {
      if (estAllume[i][j] == false) {
        casesRestantes ++;
      }
    }
  }
  fill(0);
  textSize(15);
  text("Cases restantes : "+casesRestantes, 75, 50);
  text("Nombre de coups : "+nbCoups, 350, 50);
}

void gagner() {
  if (casesRestantes == 0) {
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text("C'est gagné !", width/2, 350);
    noLoop();
  }
}
