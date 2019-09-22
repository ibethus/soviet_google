class Walker {
  int x;
  int y;

  //Constructeur
  Walker() {
    x = width/2; //Désigne le centre de la fenêtre
    y = height/2;
  }

  //Affichage de l'objet
  void display() {
    strokeWeight(5);
    stroke(255, 0, 0);
    point(x, y);
  }

  //Marche aléatoire
  void step() {
    float r = random(1);
    if (r < 0.5) {
      if (mouseX>=500) {
        x++;
      } else if (mouseX<=500) {
        x--;
      }
    } else if (r< 0.67) {
      x--;
    } else if (r<0.84) {
      y++;
    } else {
      y--;
    }
  }
}
