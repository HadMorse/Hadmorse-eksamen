class MorseTabel{
// klassens tilstand atributter
  float xpos= 0.0;
float ypos= 0.0;
float len = 0.0;
float hei = 0.0;
char bogstav;

//konstruktør
MorseTabel(float xpos, float ypos, float len, float hei, char bogstav){
  this.xpos = xpos;
  this.ypos = ypos;
  this.len = len;
  this.hei = hei;
  this.bogstav = bogstav;

}

// metoder

void drawFelt(){
  
  
rect(0,0,len,hei);
fill(0);
text(bogstav,len/2,hei/2);
fill(255);
}



}
