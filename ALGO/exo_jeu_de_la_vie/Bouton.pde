class Bouton {
  //Couleurs
final color BLACK = color(0);
final color WHITE = color(255);
final color RED = color(255, 0, 0);
final color YELLOW = color(255, 255, 0);

//Choix couleurs
final color NORMAL_BUTTON_COLOR = WHITE;
final color SELECTED_BUTTON_COLOR = RED;
final color HOVER_COLOR = YELLOW;
final color NORMAL_STROKE_COLOR = BLACK;
  int x, y;
  int size = 90;
  boolean appuye;
  String nom;
  //Constructeurs

  Bouton() { //Constructeur par défaut, permet d'indiquer les valeurs par défaut à utiliser
    x = 100;
    y = 100;
  }

  //Constructeur avec arguments
  Bouton(int monX, int monY, String nom) {
    x = monX;
    y = monY;
    this.nom = nom;
    appuye = false;
  }

  boolean contientPointeur() {
    return x<mouseX && mouseX<x+size
      && y<mouseY && mouseY<y+size;
  }
  
  void changer(){
   appuye = !appuye; 
  }
  
  void dessiner() {
    strokeWeight(4);
    stroke(contientPointeur() ? HOVER_COLOR : NORMAL_STROKE_COLOR);

    fill(appuye ? SELECTED_BUTTON_COLOR : NORMAL_BUTTON_COLOR);
    rect(x, y, size, size);
    
    fill(0);
    text(nom, x+size/2, y+size/2);
  }
}
