final int NB_CASES = 20;
final int TAILLE_CASE = 800/NB_CASES;
int [][]grille = new int[NB_CASES][NB_CASES];
int []dl = {1, 1, 1, 0, -1, -1, -1, 0};
int []dc = {-1, 0, 1, 1, 1, 0, -1, -1};
int ligne;
int colonne;
boolean joueur;
int coups = 0;


//Couleurs
final color GRIS = color(200, 200, 200);
final color ROUGE = color(255, 0, 0);
final color BLEU = color(0, 0, 255);
final color BLANC = color(255, 255, 255);

void setup() {
  size(1000, 1000);
  for (int i=0; i<NB_CASES; i++) {
    for (int j=0; j<NB_CASES; j++) {
      grille[i][j] = 0;
    }
  }
  grille[10][10] = 1;
}

void draw() {
  background(GRIS);
  dessinerGrille();
}

void dessinerGrille() {
  for (int ligne = 0; ligne < NB_CASES; ligne ++) {
    float y = map(ligne, 0, NB_CASES, 100, 900);
    for (int colonne = 0; colonne < NB_CASES; colonne ++) {
      float x = map(colonne, 0, NB_CASES, 100, 900); 
      switch (grille[ligne][colonne]) {
      case 0:
        fill(BLANC);
        break;
      case 1:
        fill(ROUGE);
        break;
      case 2:
        fill(BLEU);
        break;
      }      
      rect(x, y, TAILLE_CASE, TAILLE_CASE);
    }
  }
}
void mousePressed() {
  ligne = floor(map(mouseY, 100, 900, 0, NB_CASES));
  colonne = floor(map(mouseX, 100, 900, 0, NB_CASES));
  estOccupe();
}

void estOccupe() {
  //Si dans une case autorisée, on change
  if (0 <= ligne
    && ligne <= NB_CASES
    && 0 <= colonne
    && colonne <= NB_CASES
    && grille[ligne][colonne] < 1
    ) {
    traiterClic();
    coups++;
  }
}

void traiterClic() { //On change la couleur des cases cliquées
  if (joueur) {
    grille[ligne][colonne] = 1;
    joueur = !joueur;
  } else {
    grille[ligne][colonne] = 2;
    joueur = !joueur;
  }
}

void caseJouable() {
  //Trouver pour toute direction n si la case ligne+dc[n], colonne+dc[n] est occupé, alors -> vrai 
  for (int b = 0; b < 8; b++) {
    int testL = ligne + dl[b];
    int testC = colonne + dc[b];
    println(grille[testL][testC]);
  }
}
