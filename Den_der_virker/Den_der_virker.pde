float x = 100; //Start x-koordinat for tabellen
float y = 50; // Start y-koordinat for tabellen

MorseTabel[] morseTabels = new MorseTabel[30]; // Laver et array som indeholder 31 huse

int bredde = 400; // Definerer bredden af kolonnen øverst til venstre
int hojde = 100; // Definerer højden af kolonnen øverst til venstre

String c="";  // Laver en string som bruges til at lagre det enkelte bogstav, som er ved at blive lavet 
String tekst=""; // Laver en string som senere skal indeholde alle bogstaverne som skabes af stringen c

String str=""; // Laver en string som senere skal indeholde morsekoden (Prik, streg osv.)
ArrayList<String> morseListe = new ArrayList <String>();

void setup() {
  size(1000, 800); // Sætter størrelse på canvas
  setupMorseTable();
  textSize(35); // Skriftstørrelse
}
void draw() {
  background(200); // Baggrundsfarve
  drawMorseTable();
  //printArray(morseListe);
}

void keyPressed() {
  if(key==32) {   
  tekst = tekst+c+"_";
   str = ""; // nulstiller str så den nu er tom
   for (MorseTabel m : morseTabels) {
      
      m.setBackground(255);}
    //str=str+"_";  // Der tilføjes nu et "." til slutningen på st
  println("mellemrum");
  }
  switch(key) {
  case '-': // Overvåger "-" (streg)
    str=str+"-";  // Der tilføjes nu et "-" til slutningen på str 
    break;

  case '.': // Overvåger "." - prik
    str=str+".";  // Der tilføjes nu et "." til slutningen på str
    break;
    

  case ',': // Overvåger ","
    morseListe.add(str); // 
    morseListe.add(c); // 
    tekst = tekst+c;
    str = ""; // nulstiller str så den nu er tom
for (MorseTabel m : morseTabels) {
      
      m.setBackground(255);}
    break;
  }

  println(str);
 
  // jeg looper gennem alle bogstaver og finder det som jeg har i min string
  for (MorseTabel m : morseTabels) {
     if (str.equals(m.getMorseTegn())) {
      m.setBackground(180);
          
     if (m.getMorseTegn()== "."){
    c = "E";
    }
      if (m.getMorseTegn()== ".."){
    c = "I";
    }
      if (m.getMorseTegn()== "..."){
    c = "S";
    }  
       if (m.getMorseTegn()== "...."){
    c = "H";
    }
        if (m.getMorseTegn()== "...-"){
    c = "V";
    }
         if (m.getMorseTegn()== "..-."){
    c = "F";
    }
    if (m.getMorseTegn()== "..-"){
    c = "U";
    }
         if (m.getMorseTegn()== "..--"){
    c = "(";
    }
         if (m.getMorseTegn()== ".-."){
    c = "R";
    }
         if (m.getMorseTegn()== ".-.."){
    c = "L";
    }
         if (m.getMorseTegn()== ".-.-"){
    c = "Æ";
    }
      if (m.getMorseTegn()== ".--."){
    c = "P";
    } 
    if (m.getMorseTegn()== ".---"){
    c = "J";
    }
    if (m.getMorseTegn()== "-"){
    c = "T";
    }
     if (m.getMorseTegn()== "-."){
    c = "N";
    }
     if (m.getMorseTegn()== "-.."){
    c = "D";
    }
     if (m.getMorseTegn()== "-..."){
    c = "B";
    }
     if (m.getMorseTegn()== "-..-"){
    c = "X";
    }
     if (m.getMorseTegn()== "-.-"){
    c = "K";
    }
     if (m.getMorseTegn()== "-.-."){
    c = "C";
    }
    if (m.getMorseTegn()== "-.--"){
    c = "Y";
    }
     if (m.getMorseTegn()== "--"){
    c = "M";
    }  
     if (m.getMorseTegn()== "--."){
    c = "G";
    } 
     if (m.getMorseTegn()== "--.."){
    c = "Z";
    }
     if (m.getMorseTegn()== "--.-"){
    c = "Q";
    }
     if (m.getMorseTegn()== "---"){
    c = "O";
    }
     if (m.getMorseTegn()== "---."){
    c = "Ø";
    }
    if (m.getMorseTegn()== "----"){
    c = ")";
     }
    }
  }
  
  
  
}

void setupMorseTable() {
  char[] c = {'E', 'T', 'I', 'A', 'N', 'M', 'S', 'U', 'R', 'W', 'D', 'K', 'G', 'O', 'H', 'V', 'F', '(', 'L', 'Æ', 'P', 'J', 'B', 'X', 'C', 'Y', 'Z', 'Q', 'Ø', ')'};

  //Række 1
  morseTabels[0] = new MorseTabel(x, y, bredde, hojde, 'E');
  morseTabels[0].setMorseTegn("."); // hvis det skal gå begge veje skal jeg også kende morse koden 

  morseTabels[1] = new MorseTabel(x+bredde, y, bredde, hojde, 'T');
  morseTabels[1].setMorseTegn("-");


  for (int i =0; i<c.length; i++) {

    //Række 2
    if (1<i && i<6) {
      morseTabels[i] = new MorseTabel(x+bredde*(i-2)/2, y+hojde, bredde/2, hojde, c[i]);
    }
    
    //Række 3
    if (6<=i && i<=13) {
      morseTabels[i] = new MorseTabel(x+bredde*(i-6)/4, y+hojde*2, bredde/4, hojde, c[i]);
    }

    //Række 4
    if (14<=i && i<=29) {
      morseTabels[i] = new MorseTabel(x+bredde*(i-14)/8, y+hojde*3, bredde/8, hojde, c[i]);
    }

  }
  // Chris
    morseTabels[2].setMorseTegn(".."); // I 
    morseTabels[3].setMorseTegn(".-"); // A
    morseTabels[4].setMorseTegn("-."); // N
    morseTabels[5].setMorseTegn("--"); // M
    morseTabels[6].setMorseTegn("..."); // S
    morseTabels[7].setMorseTegn("..-"); // U
    morseTabels[8].setMorseTegn(".-."); // R
    morseTabels[9].setMorseTegn(".--"); // W
    morseTabels[10].setMorseTegn("-.."); // D
    morseTabels[11].setMorseTegn("-.-"); // K
    morseTabels[12].setMorseTegn("--."); // G
    morseTabels[13].setMorseTegn("---"); // O
    morseTabels[14].setMorseTegn("...."); // H
    morseTabels[15].setMorseTegn("...-"); // V
    morseTabels[16].setMorseTegn("..-."); // F
    morseTabels[17].setMorseTegn("..--"); // (
    morseTabels[18].setMorseTegn(".-.."); // L
    morseTabels[19].setMorseTegn(".-.-"); // Æ
    morseTabels[20].setMorseTegn(".--."); // P
    morseTabels[21].setMorseTegn(".---"); // J
    morseTabels[22].setMorseTegn("-..."); // B
    morseTabels[23].setMorseTegn("-..-"); // X
    morseTabels[24].setMorseTegn("-.-."); // C
    morseTabels[25].setMorseTegn("-.--"); // Y
    morseTabels[26].setMorseTegn("--.."); // Z
    morseTabels[27].setMorseTegn("--.-"); // Q
    morseTabels[28].setMorseTegn("---."); // Ø
    morseTabels[29].setMorseTegn("----"); // )



}

void drawMorseTable() {
fill(0);
    text(tekst, 100, 500, 800, 220);  // Text wraps within text box
  
  for (int i =0; i<morseTabels.length; i++) {
    pushMatrix();
    translate(morseTabels[i].xpos, morseTabels[i].ypos);
    morseTabels[i].drawFelt();

    popMatrix();
  }


}
