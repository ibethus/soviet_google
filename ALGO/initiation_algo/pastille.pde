class pastille {
  int x, y;
  color c;

  //Constructeur
  pastille(int ellipseX, int ellipseY, color ellipseC) {
    x = ellipseX;
    y = ellipseY;
    c = ellipseC;
  }
  void dessiner() {
    fill(c);
    ellipse(x, y, 50, 50);
  }
}
