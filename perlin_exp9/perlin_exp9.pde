float inc = 0.004;
int density = 2;
float znoise = 0.1;
 
void setup(){
 size(800, 800);
 noStroke();
 frameRate(60);
}
 
 
 
void draw(){
  for(int y = 0; y < height; y += density){
    for(int x = 0; x < width; x += density){
     fill(getColour(y,x));
     
      rect(y, x, density, density);
      density += 0.9;
    }
  }
  znoise += inc;
}

 color getColour(int x, int y) {
  float v = noise(x * inc, y * inc, znoise);
  
  if (v < 0.35){
     return color(#fdff09); //geel
  } else if (v < 0.45) {
     return color(#ff0099); //roze
  } else{
     return color(#0C0F0A); //blacc
  }
}
 
