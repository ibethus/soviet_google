int x = 500;
float y = 300;
float incrementX = 10;
float incrementY = random(0, 10);
float largeurTexte;
float hauteurTexte;

void setup() {
  size(1000, 600);
}

void draw() {
  background(100, 100, 240);
  bonjour(x, y);
  x += incrementX;
  y += incrementY;
  
  if (((x-20/2) <= 0) || ((x+20) >= 1000)){
    incrementX = -incrementX;
    incrementY = random(-10, 10);
  }
  if (((y-20) <= 0) || ((y+20) >= 600)){
    incrementY = -incrementY;
  }
}

void bonjour(float posX, float posY) {
  noStroke();
  ellipse(posX, posY, 20, 20);
}
