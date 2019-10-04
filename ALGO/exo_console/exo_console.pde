void setup() {
  surface.setVisible(false); 
  noLoop();
}

void draw() {
  int i = 0;

  while ( i < 20) {
    i++;
    println(i);
  }
}

//Exo : string chaine  "hello", affiche H E L L O, avec une boite en - et + aux angles
//chain.size() -> retourne la longueur
//chain.charAt(1...) -> quel caract-re à quelle position
