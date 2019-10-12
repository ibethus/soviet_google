//Déclaration variables globales
boolean[][]estAllume = new boolean[4][4];
int tableauXA= 100;
int tableauXB = 300;
int tableauYA = 200;
int tableauYB = 400;
int nbCases = 4;
int tailleCase = tableauYA/nbCases;

//Déclaration constantes globales
final color JAUNE = color(250, 200, 0);
final color BLANC = color(255);

void setup() {
  size(600, 400);
}

void draw() {
  background(200);
  tableau();
}

void tableau() {
  for (int ligne = 0; ligne < nbCases; ligne ++) {
    float y = map(ligne, 0, nbCases, tableauXA, tableauXB);
    for (int colonne = 0; colonne < 4; colonne ++) {
      float x = map(colonne, 0, nbCases, tableauYA, tableauYB);   
      fill(estAllume[ligne][colonne] ? JAUNE : BLANC);
      rect(x, y, tailleCase, tailleCase);
    }
  }
}
void mousePressed() {
  int ligne = floor(map(mouseY, tableauXA, tableauXB, 0, nbCases));
  int colonne = floor(map(mouseX, tableauYA, tableauYB, 0, nbCases));

  //Si dans une case, on change
  if (0<=ligne
    && ligne < 4
    && 0 <= colonne
    && colonne < 4) {
    estAllume[ligne][colonne] = !estAllume[ligne][colonne];
    estAllume[ligne][colonne-1] = !estAllume[ligne][colonne-1];
    estAllume[ligne][colonne+1] = !estAllume[ligne][colonne+1];
    estAllume[ligne-1][colonne] = !estAllume[ligne-1][colonne];
    estAllume[ligne+1][colonne] = !estAllume[ligne+1][colonne];
  }
}
