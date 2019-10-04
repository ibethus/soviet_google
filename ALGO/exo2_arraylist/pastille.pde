class pastille {
  int x, y, r;
  color c;
  boolean allume;

  //Constructeur
  pastille(int ellipseX, int ellipseY, int ellipseR, color ellipseC) {
    x = ellipseX;
    y = ellipseY;
    r = ellipseR;
    c = ellipseC;
  }
  void dessiner() {
      fill(c);
      ellipse(x, y, r*2, r*2);
  }
  boolean contientPointeur() {
    return x-r<mouseX && mouseX<x+r
      && y-r<mouseY && mouseY<y+r;
  }
  void changer() {
    allume = !allume;
  }
}
