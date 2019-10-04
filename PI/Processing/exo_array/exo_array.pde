void setup() {
  size(600, 400);
}

void draw() {
  background(200, 100, 100);



int y = 100;
int[] nbPremiers = {2, 3, 5, 7, 11, 13, 17, 19};

for (int i : nbPremiers){
  textAlign(CENTER);
  textSize(20);
  text(i, 300, y);
  y+=30;
}
}
