class MorseTabel {
  // klassens tilstand atributter
  float xpos= 0.0;
  float ypos= 0.0;
  float len = 0.0;
  float hei = 0.0;
  char bogstav;
  int baggrund = 0;
  //konstruktør
  MorseTabel(float xpos, float ypos, float len, float hei, char bogstav) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.len = len;
    this.hei = hei;
    this.bogstav = bogstav;
  }

  // metoder

  void drawFelt() {
    drawKasse();
    drawText();
  }
  void drawKasse() {
    baggrund = 0; //Sætter baggrund til sort
    rect(0, 0, len, hei);
    fill(baggrund);
  }
  void drawText() {
    text(bogstav, len/2-10, hei/2+12);
    baggrund = 255;
    fill(baggrund);
  }
}
