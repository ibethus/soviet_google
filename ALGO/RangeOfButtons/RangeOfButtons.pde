final int X_BUTTONS_AREA = 100;
final int Y_BUTTONS_AREA = 200;
final int W_BUTTONS_AREA = 400;
final int H_BUTTONS_AREA = 100;

final int X_TEXT = 300;
final int Y_TEXT = 100;

final int TEXT_FONT_SIZE = 48;
final int BUTTON_FONT_SIZE = 12;

final color BLACK = color(0);
final color WHITE = color(255);
final color RED = color(255, 0, 0);
final color GREEN = color(0, 255, 0);
final color BLUE = color(0, 0, 255);
final color YELLOW = color(255, 255, 0);

// color choices
final color BACKGROUND_COLOR = BLACK;
final color NORMAL_BUTTON_COLOR = WHITE;
final color NORMAL_TEXT_COLOR = BLUE;
final color SELECTED_BUTTON_COLOR = RED;
final color SELECTED_TEXT_COLOR = YELLOW;
final color HOVER_COLOR = YELLOW;
final color NORMAL_STROKE_COLOR = BLACK;
final color TEXT_COLOR = WHITE;

//

final String[] LABEL = { "One", "Two", "Three", "Four" };
int selected = 0;
int buttonHover = -1;

void setup() {
  size(600, 400);
}

void draw() {
  background(BACKGROUND_COLOR);
  drawText();
  drawButtons();
}

void mousePressed() {
  if (mouseY < Y_BUTTONS_AREA
    || Y_BUTTONS_AREA + H_BUTTONS_AREA < mouseY) { // BUG corrigé !
    return;
  }

  int i = (int) (map(mouseX, 
    X_BUTTONS_AREA, X_BUTTONS_AREA + W_BUTTONS_AREA, 
    0, LABEL.length));
  if (i < 0 || LABEL.length <= i) {
    return;
  }
  selected = i;
}
void mouseMoved() {
  if (mouseY < Y_BUTTONS_AREA
    || Y_BUTTONS_AREA + H_BUTTONS_AREA < mouseY) { // BUG corrigé !
    buttonHover = -1;
    return;
  }

  int i = (int) (map(mouseX, 
    X_BUTTONS_AREA, X_BUTTONS_AREA + W_BUTTONS_AREA, 
    0, LABEL.length));
  if (i < 0 || LABEL.length <= i) {
    buttonHover = -1;
    return;
  }
  buttonHover = i;
}



void drawText() {
  textAlign(CENTER, CENTER);
  textSize(TEXT_FONT_SIZE);
  fill(TEXT_COLOR);
  text(LABEL[selected], X_TEXT, Y_TEXT);
}

void drawButtons() {
  int nbButtons = LABEL.length;
  float w = W_BUTTONS_AREA / nbButtons;
  textSize(BUTTON_FONT_SIZE);
  textAlign(CENTER, CENTER);
  for (int i = 0; i < nbButtons; i++) {
    float x = map(i, 0, nbButtons, X_BUTTONS_AREA, X_BUTTONS_AREA + W_BUTTONS_AREA);

    strokeWeight(4);
    stroke(i == buttonHover ? HOVER_COLOR : NORMAL_STROKE_COLOR);

    fill(i == selected ? SELECTED_BUTTON_COLOR : NORMAL_BUTTON_COLOR);
    rect(x, Y_BUTTONS_AREA, w-4, H_BUTTONS_AREA);   

    fill(i == selected ? SELECTED_TEXT_COLOR : NORMAL_TEXT_COLOR);
    textSize(20);
    text(LABEL[i], x + (w-4)/2, Y_BUTTONS_AREA + H_BUTTONS_AREA/2);
  }
}

// How to add mouse hovering?
// When the pointer is over a button (but not pressed), 
// the button border is yellow instead of black.
