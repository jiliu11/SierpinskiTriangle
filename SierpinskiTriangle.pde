int lengy = 30;

void serpenski(int len, int xbepp, int ybepp){
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

  noStroke();
  if(len < 20){
    triangle(xbepp, ybepp, xbepp + len/2, ybepp - len, xbepp + len, ybepp);
  }
  else{
    serpenski(len/2, xbepp, ybepp);
    serpenski(len/2, xbepp+len/2, ybepp);
    serpenski(len/2, xbepp + len/4, ybepp - len/2);    
  }
}
void setup(){
  size(800,800);
}
void draw(){
  background(0);
  frameRate(5);
  serpenski(lengy,0,800);
}
void mouseMoved(){
  frameRate(60);
  lengy+=5;
  if(lengy >= 1600){
    lengy = 800;
  }
}
