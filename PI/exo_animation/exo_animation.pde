float i=0;

void setup() {
  size(1000, 600);
  frameRate(60);
}

void draw() {
  background(0, 0, 200);
  balle(i, 300);
}

void balle(float x, float y) {
  if (i>1000) { 
    i-=20;
  } else {
    i+=10;
  }
  ellipse(i, y, 50, 50);
}
