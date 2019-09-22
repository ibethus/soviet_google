class Walker{
  int x;
  int y;
 
  //Constructeur
  Walker(){
    x = width/2; //Désigne le centre de la fenêtre
    y = height/2;
    
  }
  
  //Affichage de l'objet
  void display(){
    strokeWeight(5);
    stroke(255, 0, 0);
    point(x, y);
  }
  
  //Marche aléatoire
  void step(){
    float stepx = random(-1, 2.2);
    float stepy = random(-1, 2.2);
    x += stepx;
    y +=stepy;
    println(stepx);
  }
}
