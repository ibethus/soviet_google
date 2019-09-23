class Bouton {
  int x, y, c;
  String texte;
  boolean appuye;

  //Constructeur avec arguments
  Bouton(int rectX, int rectY, color rectC, String rectTexte) {
    x = rectX;
    y = rectY;
    c = rectC;
    texte = rectTexte;
    appuye = false;
  }

  void dessiner() {
    fill(c);
    rectMode(CENTER);
    rect(x, y, 100, 50);
    fill(0);
    textAlign(CENTER);
    text(texte, x, y);
  }
  boolean contientPointeur() {
  return x-50<mouseX && mouseX<x+50
    && y-25<mouseY && mouseY<y+25;
  }
  
}
