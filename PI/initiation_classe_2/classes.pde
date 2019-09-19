class Cercle {
  float x, y;
  float r;
  color c;

  //Constructeurs

  Cercle() { //Constructeur par défaut, permet d'indiquer les valeurs par défaut à utiliser
    x = 100;
    y = 100;
    r = 50;
    c = ROUGE;
  }

  //Constructeur avec arguments
  Cercle(float monX, float monY, float monR, color monC) {
    x = monX;
    y = monY;
    r = monR;
    c = monC;
  }
  
  //Méthode/fonction
  void dessiner(){
    fill(c); //Couleur c
    noStroke();
    ellipseMode(CENTER); //Centrer le cercle
    ellipse(x, y, 2*r, 2*r);
}
}
