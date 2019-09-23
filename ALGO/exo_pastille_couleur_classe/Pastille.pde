class Pastille {
  int x, y, w, h;
  color c;

  //Constructeur
  Pastille(int ellipseX, int ellipseY, color ellipseC) {
    x = ellipseX;
    y = ellipseY;
    c = ellipseC;
  }
  void dessiner() {
    fill(c);
    ellipse(x, y, 50, 50);
  }
  boolean contientPointeur() {
    return x-50<mouseX && mouseX<x+50
      && y-50<mouseY && mouseY<y+50;
  }

}
