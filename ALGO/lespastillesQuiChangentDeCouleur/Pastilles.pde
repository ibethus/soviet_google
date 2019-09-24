class Pastilles {
  int posX;
  int posY;
  int rayon;
  color couleur;

  // Constructeur vide pour faire comme dit M'sieur Pecher
  Pastilles() {
  }

  // Constructeur complet
  Pastilles(int x, int y, int r, color c) {

    posX = x;
    posY = y;
    rayon = r;
    couleur = c;
  }

  void dessiner() {

    strokeWeight(2);
    ellipseMode(CENTER);
    fill (couleur);
    ellipse(posX, posY, rayon*2, rayon*2);
  }

  boolean contientLePointeur() {

    return ( dist(posX, posY, mouseX, mouseY) < rayon);
  }

  void deplacer() {

    posX = mouseX;
    posY = mouseY;
  }
}
