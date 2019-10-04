class pastille {
  float x, y, r;
  
  //Constructeur
  pastille(float ellipseX, float ellipseY, float ellipseR) {
    x = ellipseX;
    y = ellipseY;
    r = ellipseR;
  }
  void dessiner() {
    fill(BLANC);
    ellipse(x, y, r*2, r*2);
  }
}
