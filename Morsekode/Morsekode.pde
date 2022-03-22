float x = 100;
float y = 50;

MorseTabel[] morseTabels = new MorseTabel[4];




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

  morseTabels[0] = new MorseTabel(150, 150, 150, 50, 'E');
  morseTabels[1] = new MorseTabel(300, 150, 150, 50, 'T');
  morseTabels[2] = new MorseTabel(150, 200, 75, 50, 'I');
  morseTabels[3] = new MorseTabel(225, 200, 75, 50, 'A');
}

void drawMorseTable() {

  for (int i =0; i<morseTabels.length;i++){
    pushMatrix();
      translate(morseTabels[i].xpos, morseTabels[i].ypos);
      morseTabels[i].drawFelt();
  popMatrix();
  }
}
