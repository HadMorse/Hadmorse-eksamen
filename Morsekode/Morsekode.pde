float x = 100;
float y = 50;

int bredde = 200;
int hojde = 50;

String str=""; // Opretter en string som er tom
ArrayList<String> morseListe = new ArrayList <String>();

void setup() {
size(800,600);
}
void draw() {
printArray(morseListe);
 // background(225);

 //f = new Firkant();
 //f.drawFirkant();
 
 //Række 1:
 drawE();
 //rect(x,y,bredde,hojde);
 rect(x+bredde,y,bredde,hojde);
 
 //Række 2:
 rect(x,y+hojde,bredde/2,hojde);
 rect(x+bredde/2,y+hojde,bredde/2,hojde);
 rect(x+bredde,y+hojde,bredde/2,hojde);
 rect(x+bredde*1.5,y+hojde,bredde/2,hojde);
 
 //Række 3
}

void keyPressed(){
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
