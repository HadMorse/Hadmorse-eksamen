float x = 100;
float y = 50;

MorseTabel[] morseTabels = new MorseTabel[30];




int bredde = 400;
int hojde = 100;

String str=""; // Opretter en string som er tom
ArrayList<String> morseListe = new ArrayList <String>();

void setup() {
  size(1000, 800);
  setupMorseTable();
  textSize(35);
  
}
void draw() {
  background(225);
  drawMorseTable();
  printArray(morseListe);
 
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
//Række 1
  morseTabels[0] = new MorseTabel(x,y,bredde,hojde, 'E');
  morseTabels[1] = new MorseTabel(x+bredde, y, bredde, hojde, 'T');
  
//Række 2
  morseTabels[2] = new MorseTabel(x, y+hojde, bredde/2, hojde, 'I');
  morseTabels[3] = new MorseTabel(x+bredde*1/2,y+hojde, bredde/2, hojde, 'A');
  morseTabels[4] = new MorseTabel(x+bredde, y+hojde, bredde/2, hojde, 'N');
  morseTabels[5] = new MorseTabel(x+bredde*3/2, y+hojde, bredde/2, hojde, 'M');
  
//Række 3
  morseTabels[6] = new MorseTabel(x, y+hojde*2, bredde/4, hojde, 'S');
  morseTabels[7] = new MorseTabel(x+bredde*1/4, y+hojde*2, bredde/4, hojde, 'U');
  morseTabels[8] = new MorseTabel(x+bredde*2/4, y+hojde*2, bredde/4, hojde, 'R');
  morseTabels[9] = new MorseTabel(x+bredde*3/4, y+hojde*2, bredde/4, hojde, 'W');
  morseTabels[10] = new MorseTabel(x+bredde, y+hojde*2, bredde/4, hojde, 'D');
  morseTabels[11] = new MorseTabel(x+bredde*5/4, y+hojde*2, bredde/4, hojde, 'K');
  morseTabels[12] = new MorseTabel(x+bredde*6/4, y+hojde*2, bredde/4, hojde, 'G');
  morseTabels[13] = new MorseTabel(x+bredde*7/4, y+hojde*2, bredde/4, hojde, 'O');
  
//Række 4
  morseTabels[14] = new MorseTabel(x, y+hojde*3, bredde/8, hojde, 'H');
  morseTabels[15] = new MorseTabel(x+bredde*1/8, y+hojde*3, bredde/8, hojde, 'V');
  morseTabels[16] = new MorseTabel(x+bredde*2/8, y+hojde*3, bredde/8, hojde, 'F');
  morseTabels[17] = new MorseTabel(x+bredde*3/8, y+hojde*3, bredde/8, hojde, '(');
  morseTabels[18] = new MorseTabel(x+bredde*4/8, y+hojde*3, bredde/8, hojde, 'L');
  morseTabels[19] = new MorseTabel(x+bredde*5/8, y+hojde*3, bredde/8, hojde, 'Æ');
  morseTabels[20] = new MorseTabel(x+bredde*6/8, y+hojde*3, bredde/8, hojde, 'P');
  morseTabels[21] = new MorseTabel(x+bredde*7/8, y+hojde*3, bredde/8, hojde, 'J');
  morseTabels[22] = new MorseTabel(x+bredde*8/8, y+hojde*3, bredde/8, hojde, 'B');
  morseTabels[23] = new MorseTabel(x+bredde*9/8, y+hojde*3, bredde/8, hojde, 'X');
  morseTabels[24] = new MorseTabel(x+bredde*10/8, y+hojde*3, bredde/8, hojde, 'C');
  morseTabels[25] = new MorseTabel(x+bredde*11/8, y+hojde*3, bredde/8, hojde, 'Y');
  morseTabels[26] = new MorseTabel(x+bredde*12/8, y+hojde*3, bredde/8, hojde, 'Z');
  morseTabels[27] = new MorseTabel(x+bredde*13/8, y+hojde*3, bredde/8, hojde, 'Q');
  morseTabels[28] = new MorseTabel(x+bredde*14/8, y+hojde*3, bredde/8, hojde, 'Ø');
  morseTabels[29] = new MorseTabel(x+bredde*15/8, y+hojde*3, bredde/8, hojde, ')');


}

void drawMorseTable() {

  for (int i =0; i<morseTabels.length;i++){
    pushMatrix();
      translate(morseTabels[i].xpos, morseTabels[i].ypos);
      morseTabels[i].drawFelt();
  popMatrix();
  }
}
