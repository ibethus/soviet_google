/* Ce programme dessine un rond vert sur un fond bleu */

void setup() {
  size(600, 400);
}
void draw() {
  background(0, 0, 250); //bleu
  dessinerRond();
}

void dessinerRond() { //définition d'une fonction/méthode/action
  fill(0, 250, 0); //vert
  ellipse(mouseX, mouseY, 200, 200);
}
