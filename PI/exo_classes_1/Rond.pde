class Rond {
  int x, y;
  int r;
  color c;
  int directionx=0;
  int directiony=0;

  //Constructeurs

  Rond() { //Constructeur par défaut, permet d'indiquer les valeurs par défaut à utiliser
    x = 100;
    y = 100;
    r = 50;
    c = ROUGE;
  }

  //Constructeur avec arguments
  Rond(int monX, int monY, int monR, color monC, int directionX, int directionY) {
    x = monX;
    y = monY;
    r = monR;
    c = monC;
    directionx = directionX;
    directiony = directionY;
  }

  //Méthode/fonction
  void dessiner() {
    fill(c); //Couleur c
    noStroke();
    ellipseMode(CENTER); //Centrer le cercle
    ellipse(x, y, 2*r, 2*r);
  }
  void animer() {
    x=x+directionx;
    y=y+directiony;
  }
  void pointeur(){
    x=mouseX;
    y=mouseY;
  }
}
