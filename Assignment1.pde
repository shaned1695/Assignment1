

StarField[] stars = new StarField[700];
float speed = 10;

void setup(){
  size(1000,700);
  for(int i=0; i<stars.length; i++){
    stars[i] = new StarField();
  }
}


void draw(){
  if(keyPressed){
    if(key == '1'){
      speed = 10;
    }
    else if(key == '2'){
      speed = 25;
    }
    else if(key == '3'){
      speed = 50;
    }
  }
  
  
  background(0);
  translate(width/3,height/2);
  for(int i=0; i<stars.length; i++){
    stars[i].update();
    stars[i].show();
  }
  fill(75,10,20);
  noStroke();
  rect(375,-350,350,700);
  //ellipse(0,0,8,8);
}
