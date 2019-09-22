import java.util.*;
Random generator;

void setup() {
  size(1000, 600);
  background(255);
  generator = new Random();
}

void draw() {
  float num = (float) generator.nextGaussian();
  float sd = 50;
  float mean = width/2;
  float x = sd * num + mean;
  float y = sd * num + 300;
  println(num);

  noStroke();
  fill(255, 0, 0, 10);
  ellipse(x, y, 20, 20);
}
