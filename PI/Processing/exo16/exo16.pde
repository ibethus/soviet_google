char[] texte = {'B', 'o', 'n', 'j', 'o', 'u', 'r'};
float t = 0.02;

void setup() {
  size(1000, 600);
}

void draw() {
  background(0);
  
  float variation = 0;
  for (char lettre : texte) { //Pour chaque caractère lettre du tableau de caractère 'texte'
    int x = (int) (sin(t+variation)*500)+500;
    dessiner(""+lettre, x);
    variation += 0.05;
  }
  t += 0.02;
}

void dessiner(String texte, int posX) {
  noStroke();
  textSize(50);
  float largeurTexte = textWidth(texte);
  text(texte, posX-(largeurTexte/2), 300);
}
