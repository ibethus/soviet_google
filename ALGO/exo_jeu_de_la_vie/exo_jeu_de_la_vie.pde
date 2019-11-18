String[] lines;
boolean [] [] grille;
boolean [][] grille2;
int lignes, colonnes;
int tailleCase;
int [] coordonneePointsX;
int [] coordonneePointsY;
int nbrPoint;
int [] directionLigne = {-1, -1, -1, 0, 1, 1, 1, 0};
int [] directionColonne = {-1, 0, 1, 1, 1, 0, -1, -1};
String nomFichier;
int save = 1;

boolean demarrer = false;

boolean vivant;
final color COULEUR_VIVANT = color (0, 255, 0);
final color COULEUR_MORT = color (255);

//Boutons
Bouton charger = new Bouton(205, 850, "Charger");
Bouton etape = new Bouton(305, 850, "Etape");
Bouton editer = new Bouton(405, 850, "Editer");
Bouton play = new Bouton(505, 850, "Play");
Bouton sauver = new Bouton(605, 850, "Sauver");
Bouton quitter = new Bouton(705, 850, "Quitter");


void setup() {
  size(1000, 1000);
  frameRate(5);
  //lines = loadStrings ("test.txt"); //Chargement du fichier d'initialisation
  //lectureFichier();
  //grille = new boolean [lignes][colonnes];
  //grille2 = new boolean [lignes][colonnes];
  //placementPoints();
}

void draw() {

  charger.dessiner();
  editer.dessiner();
  sauver.dessiner();
  play.dessiner();
  quitter.dessiner();
  etape.dessiner();

  if (grille!=null) {
    dessinerGrille();
    afficherTitre();
  }
  if (demarrer) {
    testerGrille();
    updateGrille();
  }
}

void mousePressed() {
  if (charger.contientPointeur()) { 
    selectInput("Quel fichier ?", "chargerFichier");
    charger.changer();
  }
  if (play.contientPointeur()) {
    play.changer();
    demarrer=true;
  }
  if (etape.contientPointeur()) {
    etape.changer();
    demarrer=false;
    testerGrille();
    updateGrille();
  }
  if (quitter.contientPointeur()) {
    exit();
  }
  if (editer.contientPointeur()) {
    editer.changer();
  }
  if (sauver.contientPointeur()) {
    sauver.changer();
    sauver();
  }
}

void editionGrille() {
  int ligne = (int) floor(map(mouseY, 200, 800, 0, lignes));
  int colonne = (int) floor(map(mouseX, 200, 800, 0, colonnes));
}

void chargerFichier(File selection) {
  if (selection == null) {
    //texte = "aucun" ;
  } else {
    String path = selection.getAbsolutePath();
    lines = loadStrings(path);
    lectureFichier();
  }
}


void lectureFichier() {
  
  // On récupere la 1ere ligne du fichier
  nomFichier = lines[0]; 
  
  // On récupere la 2eme lignes du fichier et on en stock les valeurs (taille de la grille)
  String [] config = lines[1].trim().split("\\s+");
  lignes = parseInt(config[0]);
  colonnes = parseInt(config[1]);
  
  // On récupere la 3eme lignes du fichier et on en stock la valeur (nombres de points)
  config = lines[2].trim().split("\\s+");
  nbrPoint = parseInt(config[0]);
  
  // On récupère les coordonnées de chaque points au préalablement créés
  coordonneePointsX = new int [nbrPoint];
  coordonneePointsY = new int [nbrPoint];
  
  // On stock les coordonnées de chaque points dans deux tableaux (1 pour les X, 1 pour les Y)
  for (int i = 0; i < nbrPoint; i++) {
    config = lines[3+i].trim().split("\\s+");
    int x = parseInt(config[0]);
    int y = parseInt(config[1]);
    coordonneePointsX[i] = x;
    coordonneePointsY[i] = y;
    grille = new boolean [lignes][colonnes];
    placementPoints();
  }
}

void afficherTitre() {
  textAlign(CENTER);
  textSize(20);
  fill(0);
  text("Grille "+lignes+"x"+colonnes+" : " +nomFichier, 500, 100);
}

void dessinerGrille() {

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
      strokeWeight(1);
      stroke(0);
      rect(posX, posY, tailleCase, tailleCase);
    }
  }
}

void placementPoints() {
  for (int i= 0; i < nbrPoint; i++) {
    grille[coordonneePointsX[i]][coordonneePointsY[i]] = true;
  }
}

void testerGrille() {
  grille2 = new boolean [lignes][colonnes];
  // On test les conditions à la naissance ou à la mort d'une case en parcourant la grille 1. On effectue les transformations dans la grille 2.
  for (int i= 0; i < lignes; i ++) {
    for (int j =0; j < colonnes; j++) {
      grille2[i][j] = grille[i][j]; 
      int x = nbrVoisins(i, j);
      if (x==3 && grille[i][j] == false) {
        grille2[i][j] = true;
      }
      if (((x < 2) || (x > 3)) && grille[i][j] == true) {
        grille2[i][j] = false;
      }
    }
  }
}

void updateGrille() {
  // On refresh la grille en copiant la grille 2 dans la grille principale
  for (int i =0; i < lignes; i++) {
    for (int j =0; j < lignes; j++) {
      grille[i][j]=grille2[i][j];
    }
  }
}

int nbrVoisins(int ligne, int colonne) {
  // Calcul le nbr de voisins de chaque cellule (8 directions possibles)
  int voisins = 0;
  for (int i = 0; i < 8; i++) {
    if (ligne+directionLigne[i] > 0
      && ligne+directionLigne[i] < lignes
      && colonne+directionColonne[i] > 0
      && colonne+directionColonne[i] < colonnes
      && (grille[ligne+directionLigne[i]][colonne+directionColonne[i]] == true)) {
      voisins++;
    }
  }
  return voisins;
}

void sauver(){ 
  String nbPoints = str(nbrPoint);
  String titre = "save"+save;
  String dimensions = "30 30";
  String[] points = new String[nbrPoint];
  for (int i= 0; i < nbrPoint; i++) {
    if (grille[coordonneePointsX[i]][coordonneePointsY[i]]){
      String x = str(coordonneePointsX[i]);
      String y = str(coordonneePointsY[i]);
      points[i] = x+" "+y;     
    }   
  }
  String[] parametres = {titre, dimensions, nbPoints};
  String[] sauvegarde = concat(parametres, points);
  saveStrings("save"+save, sauvegarde);
  save++;
}
