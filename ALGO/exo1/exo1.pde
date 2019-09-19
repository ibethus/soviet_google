/* Ce programme dessine une ellipse rouge avec un texte, sur un fond vert */

void setup() {
  size(600, 400);
}
void draw() {
  background(0, 128, 128);
  fill(240, 0, 0); //Rouge
  ellipse(300, 200, 300, 200);
  fill(0, 0, 150); //bleu
  rect(225, 125, 150, 150);
  textAlign(CENTER, CENTER);
  textSize(48);
  fill(255, 255, 0); //jaune
  text("Bonjour", 300, 200);
}
