class Lampes {
  int x, y;
  int w, h;
  boolean allume;

  //Constructeurs

  Lampes() { //Constructeur par défaut, permet d'indiquer les valeurs par défaut à utiliser
    x = 100;
    y = 100;
    w = 100;
    h = 100;
  }

  //Constructeur avec arguments
  Lampes(int monX, int monY, int monW, int monH) {
    x = monX;
    y = monY;
    w = monW;
    h = monH;
    allume = false;
  }
  void changer(){ //Méthode/fonction
    allume = !allume;
  }
  void dessiner() {
    if (allume){
      fill(250, 200, 0);
    } else {
      fill(255);
    }
    ellipse(x, y, w, h);
  }
}
