int x = 300, y = 200;
float distance = 0;


void setup(){
  size(600, 400);
}

void draw(){
  background(255);
  fill(distance, 0, 0);
  ellipse(x, y, 50, 50);
  distance = dist(x, y, mouseX, mouseY);
  fill(0);
  text("Distance "+distance+" pixels", 50, 50);

}
