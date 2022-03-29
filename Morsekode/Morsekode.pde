float x = 100;
float y = 50;

MorseTabel[] morseTabels = new MorseTabel[17];




int bredde = 200;
int hojde = 50;

String str=""; // Opretter en string som er tom
ArrayList<String> morseListe = new ArrayList <String>();

void setup() {
  size(800, 600);
  setupMorseTable();
  textSize(15);
  
}
void draw() {
  background(225);
  drawMorseTable();
  printArray(morseListe);
  // background(225);

  //f = new Firkant();
  //f.drawFirkant();

  //Række 1:
  //drawE();
  //rect(x,y,bredde,hojde);
  //rect(x+bredde, y, bredde, hojde);

  //Række 2:
  //rect(x, y+hojde, bredde/2, hojde);
  //rect(x+bredde/2, y+hojde, bredde/2, hojde);
  //rect(x+bredde, y+hojde, bredde/2, hojde);
  //rect(x+bredde*1.5, y+hojde, bredde/2, hojde);

  //Række 3
}

void keyPressed() {
  switch(key) {
  case '-': // Overvåger "-" (streg)

    str=str+"-";  // Der tilføjes nu et "-" til slutningen på str 
    println(str);
    break;

  case '.': // Overvåger "." - prik
    str=str+".";  // Der tilføjes nu et "." til slutningen på str
    println(str);
    break;

  case ',': // Overvåger ","
    morseListe.add(str); // 
    str=""; // nulstiller str så den nu er tom
    break;
  }
}

void setupMorseTable() {

  morseTabels[0] = new MorseTabel(x,y,bredde,hojde, 'E');
  morseTabels[1] = new MorseTabel(x+bredde, y, bredde, hojde, 'T');
  morseTabels[2] = new MorseTabel(x, y+hojde, bredde/2, hojde, 'I');
  morseTabels[3] = new MorseTabel(x+bredde/2,y+hojde, bredde/2, hojde, 'A');
  morseTabels[4] = new MorseTabel(x+bredde, y+hojde, bredde/2, hojde, 'N');
  morseTabels[5] = new MorseTabel(x+bredde*1.5, y+hojde, bredde/2, hojde, 'M');
  morseTabels[6] = new MorseTabel(x, y+hojde*2, bredde/4, hojde, 'S');
  morseTabels[7] = new MorseTabel(x+bredde/4, y+hojde*2, bredde/4, hojde, 'U');
  morseTabels[8] = new MorseTabel(x+bredde/2, y+hojde*2, bredde/4, hojde, 'R');
  morseTabels[9] = new MorseTabel(x+bredde*0.75, y+hojde*2, bredde/4, hojde, 'W');
  morseTabels[10] = new MorseTabel(x+bredde, y+hojde*2, bredde/4, hojde, 'D');
  morseTabels[11] = new MorseTabel(x+bredde*1.25, y+hojde*2, bredde/4, hojde, 'K');
  morseTabels[12] = new MorseTabel(x+bredde*1.5, y+hojde*2, bredde/4, hojde, 'G');
  morseTabels[13] = new MorseTabel(x+bredde*1.75, y+hojde*2, bredde/4, hojde, 'O');
  morseTabels[14] = new MorseTabel(x, y+hojde*3, bredde/8, hojde, 'H');
  morseTabels[15] = new MorseTabel(x+bredde/8, y+hojde*3, bredde/8, hojde, 'V');
  morseTabels[16] = new MorseTabel(x+bredde/4, y+hojde*3, bredde/8, hojde, 'F');
  //morseTabels[16] = new MorseTabel(x+bredde/4, y+hojde*3, bredde/8, hojde, 'F');


}

void drawMorseTable() {

  for (int i =0; i<morseTabels.length;i++){
    pushMatrix();
      translate(morseTabels[i].xpos, morseTabels[i].ypos);
      morseTabels[i].drawFelt();
  popMatrix();
  }
}
