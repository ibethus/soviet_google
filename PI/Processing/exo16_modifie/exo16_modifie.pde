int[] balle = {0, 1, 2, 3, 4, 5};
float t = 4;
final int opaciteInitiale = 50;
int opacite = 50;
void setup() {
  size(1000, 600);
}

void draw() {
  background(0);
  
  float variation = 0;
  for (int numero : balle) { //Pour chaque caractère lettre du tableau de caractère 'texte'
    int x = (int) (sin(t+variation)*500)+500;
    dessiner(x);
    variation += 0.05;
    opacite += 50;
  }
  t += 0.02;
  opacite = opaciteInitiale;
  

}

void dessiner(int posX) {
  noStroke();
  fill(255, 255, 255, opacite);
  ellipse(posX, 300, 20, 20);
}
