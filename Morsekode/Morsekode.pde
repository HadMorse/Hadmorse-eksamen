String str="";
ArrayList<String> morseListe = new ArrayList <String>();

void setup() {
size(800,600);
}
void draw() {
printArray(morseListe);-,
 // background(225);
}

void keyPressed(){
switch(key) {
  case '-':
 
    str=str+"-";  // Does not execute
    println(str);
    break;
    
  case '.': 
   str=str+".";  // Prints "One"
  println(str);
    break;
    
    case ',': 
  morseListe.add(str);
    str="";
    break;
    
    
}
  }
