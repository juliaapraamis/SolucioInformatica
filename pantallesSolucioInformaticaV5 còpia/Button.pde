class Button {

  float x, y, w, h;
  color fillColor, strokeColor;
  color fillColorOver, fillColorDisabled;
  String textBoto;
  boolean enabled;

  Button (String text, float x, float y, float w, float h) {

    this.textBoto = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    fillColor = color (255);
    fillColorOver = color(255, 0, 100);
    fillColorDisabled = color(150);
    strokeColor = color(0);
  }

  void setEnabled (boolean b) {
    this.enabled = b;
  }

  void display() {
    pushStyle();
    if (!enabled) {
      fill(fillColorDisabled);
    } else if (mouseOverButton()) {
      fill (fillColorOver);
    } else {
      fill(fillColor);
    }
    stroke (strokeColor);
    strokeWeight(2);
    rect(this.x, this.y, this.w, this.h, 10);

    fill(0);
    textAlign (CENTER);
    textSize (20);
    //textFont(font1);
    text (textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    popStyle();
  }
  
  boolean mouseOverButton(){
    return (mouseX>=this.x) &&
           (mouseX<= this.x + this.w) &&
           (mouseY>= this.y) &&
           (mouseY<= this.y + this.h);
  }
}
