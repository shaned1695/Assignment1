class StarField{
  float x;
  float y;
  float z;
  float previousz;
  
  StarField(){
    x = random(-width,width);
    y = random(-height,height);
    z = random(width);
    previousz = z;
  }
  
  void update(){
    z=z-speed;
    if(z<1){
      z = width;
      x = random(-width,width);
      y = random(-height,height);
      previousz = z;
    }
  }
  
  void show(){
    fill(255);
    noStroke();
    float xx = map(x/z,0,1,0,width);
    float yy = map(y/z,0,1,0,height);
    float rad = map(z,0,width,12,0);
    ellipse(xx,yy,rad,rad);
    float previousx = map(x/previousz,0,1,0,width);
    float previousy = map(y/previousz,0,1,0,height);
    previousz = z;
    stroke(255);
    line(previousx,previousy,xx,yy);
  }
}
