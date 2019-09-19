class Interrupteur {
  int x, y;
  boolean appuye;
  
  //Constructeurs

  Interrupteur() { //Constructeur par défaut, permet d'indiquer les valeurs par défaut à utiliser
    x = 100;
    y = 100;
  }

  //Constructeur avec arguments
  Interrupteur(int monX, int monY) {
    x = monX;
    y = monY;
    appuye = false;
  }
  void changer(){ //Méthode/fonction
    appuye = !appuye;
  }
  void dessiner() {
    if (appuye){
      fill(150);
    } else {
    fill(255);
    }
    rect(x, y, 20, 20);
  }
  boolean contientPointeur() {
  return x<mouseX && mouseX<x+20
    && y<mouseY && mouseY<y+20;
  }
}
