import java.util.*;
Random generator;

void setup() {
  size(1000, 600);
  background(255);
  generator = new Random();
}

void draw() {
  float num = (float) generator.nextGaussian();
  float num2 = (float) generator.nextGaussian();

  float sd = 50;
  float mean = width/2;
  float mean2 = height/2;
  float x = sd * num + mean;
  float y = sd * num2 + mean2;

  noStroke();
  fill(255, 0, 0, 10);
  ellipse(x, y, 20, 20);
}
