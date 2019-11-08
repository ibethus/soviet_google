//Déclaration variables
String[] lines;
int lignes;
int colonnes;
boolean [][]grille;
boolean [][]grille2;
int tailleCase;
int nbrPoint;
int [][]coordonneePoints;
String test;
int [] coordonneePointsX; 
int [] coordonneePointsY;
final color COULEUR_VIVANT = color(0);
final color COULEUR_MORT = color(255);
boolean vivant = true;
int []dl = {1, 1, 1, 0, -1, -1, -1, 0};
int []dc = {-1, 0, 1, 1, 1, 0, -1, -1};
int voisinL = 0;
int voisinC = 0;


void setup() {
  size(1000, 1000); 
  noStroke();
  frameRate(5);
  lines = loadStrings("test.txt");

  //On lance l'analyse du fichier par le programme
  lireFichier();   

  //On créer la grille (tableau 2D)
  grille = new boolean [lignes][colonnes]; 
  grille2 = new boolean [lignes][colonnes];
  placementPoints();
}

void draw() {
  dessinerGrille();
  testerGrille();
  updateGrille();
}

//On récupère les informations du fichier source
void lireFichier() {   

  //Découpages des informations concernant les dimensions du tableau
  String [] config = lines[1].trim().split("\\s+");   

  //Récupération du nombre de lignes
  lignes = parseInt(config[0]);   

  //Récupération du nombre de colonnes
  colonnes = parseInt(config[1]);   

  //Affichage du titre en fonction du fichier source
  afficherTitre();   

  //On récupère le nombre de point insérés dans le fichier source
  config = lines[2].trim().split("\\s+");   
  nbrPoint = parseInt(config[0]);

  //On récupère les coordonnés des points issus du fichier source
  coordonneePointsX = new int [nbrPoint]; 
  coordonneePointsY = new int [nbrPoint]; 
  for (int i = 0; i < nbrPoint; i++) { 
    config = lines[3+i].trim().split("\\s+"); 
    int x = parseInt(config[0]); 
    int y = parseInt(config[1]); 
    coordonneePointsX[i] = x; 
    coordonneePointsY[i] = y;
  }
}

void afficherTitre() {
  textAlign(CENTER);
  textSize(20);
  fill(0);
  text("Grille"+lignes+"x"+colonnes+": "+lines[0], 500, 100);
}

//Dessiner la grille qui correspond aux paramètres du fichier d'origine
void dessinerGrille() {   
  fill(255);
  if (lignes < colonnes) {
    tailleCase = 600/lignes;
  } else {
    tailleCase = 600/colonnes;
  }
  for (int i = 0; i < lignes; i ++) {
    float posY = map(i, 0, lignes, 200, 800);
    for (int j = 0; j < colonnes; j ++) {
      float posX = map(j, 0, colonnes, 200, 800); 
      fill(grille[i][j] ? COULEUR_VIVANT : COULEUR_MORT); 
      rect(posX, posY, tailleCase, tailleCase);
    }
  }
}

//On place les points qui sont définis dans le fichier d'origine
void placementPoints() {
  for (int i = 0; i < nbrPoint; i++) { 
    grille[coordonneePointsX[i]][coordonneePointsY[i]] = true;
  }
}

//On teste les cases de la grille pour savoir qui meurt ou vit au prochain tour
void testerGrille() {
  for (int i = 0; i < lignes; i++) {
    for (int j = 0; j < colonnes; j++) {
      
      grille2[i][j] = grille[i][j];
      
      int x = voisinOccupe(i, j);
      println(x);
      
      if ((x == 3) && (grille[i][j] == false)) {
        grille2[i][j] = true;
      }
      if (((x < 2) || (x > 3)) && (grille[i][j] == true)) {
        grille2[i][j] = false;
      }
    }
  }
}

//On met à jour la première grille
void updateGrille() {
  for (int i = 0; i < lignes; i++) {
    for (int j = 0; j < colonnes; j++) {
      grille[i][j] = grille2[i][j];
    }
  }
}

//On calcule le nombre de voisins
int voisinOccupe(int ligne, int colonne) {
  int voisins = 0;
  for (int i = 0; i < 8; i++) {
    if (ligne+dl[i] > 0
      && ligne+dl[i] < lignes
      && colonne+dc[i] > 0
      && colonne+dc[i] < colonnes
      && (grille[ligne+dl[i]][colonne+dc[i]] == true)) {
      voisins++;
    }
  }
  return voisins;
}
