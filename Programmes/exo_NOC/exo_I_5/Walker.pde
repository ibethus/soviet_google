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
    float mouvement;
    float num = (float) generator.nextGaussian();
    float sd = 3;
    float mean = 1;
    mouvement = abs(sd * num + mean);
    
    int r = int(random(0, 4));
    if (r == 0) {
      x -= mouvement;
    } else if (r == 1) {
      x += mouvement;
    } else if (r == 2) {
      y += mouvement;
    } else {
      y -= mouvement;
    }
    println(r);
  }
}
