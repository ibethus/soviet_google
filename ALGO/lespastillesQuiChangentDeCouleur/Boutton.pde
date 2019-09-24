class Bouttons {
  int posX;
  int posY;
  int largeur;
  int hauteur;
  String leTexte;
  color couleur; // Couleur d'affichage normale
  color couleurSelected; // Couleur d'affichage quand actif
  boolean actif= false;

  // Constructeur vide pour faire comme dit M'sieur Pecher
  Bouttons() {
  }

  // Constructeur complet
  Bouttons(int x, int y, int w, int h, String t, color c, color c2) {

    posX = x;
    posY = y;
    largeur = w;
    hauteur = h;
    leTexte = t;
    couleur = c;
    couleurSelected = c2;
  }

  void dessiner() {

    // Je change l'epaisseur du trait et la courleur selon si bouton actif ou pas
    if (actif) {
      strokeWeight(5);
      fill(couleurSelected);
    } else {
      strokeWeight(2);
      fill(couleur);
    }
    // Je dessine le rectangle
    rect(posX, posY, largeur, hauteur);
    
    // J'affichele texte dans le rectangle
    fill(NOIR);
    textSize(26);
    text(leTexte, posX + (largeur /6), posY + (hauteur / 1.5));
  }
  
  boolean contientLePointeur() {
    
    return ( posX <= mouseX 
            && mouseX <= posX + largeur
            && posY <= mouseY
            && mouseY <= posY + hauteur) ;
  }
  
 
}
