class MorseTabel {
  // klassens tilstand atributter
  float xpos= 0.0;
  float ypos= 0.0;
  float len = 0.0;
  float hei = 0.0;
  char bogstav;
  private int baggrund = 255;

  String morseTegn;//chris en string som indeholder morseKoden


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
    //println(baggrund);
    fill(baggrund); // her bestemmer jeg farven på kassen
    rect(0, 0, len, hei);
    fill(0); // husk at lave den tilbage eller bliver alt samme farve
  }
  void drawText() {
    text(bogstav, len/2-10, hei/2+12);
    fill(255);// hvid
  }

  // en set funktion til morseKoden - det skal være i jeres konstruktør
  void setMorseTegn(String s) {
    this.morseTegn = s;
  }


  String getMorseTegn() {
    return this.morseTegn;
  }


  void setBackground(int farve) {
    this.baggrund = farve;
  }
}
