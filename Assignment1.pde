StarField[] stars = new StarField[700];
float speed = 10;
boolean button1 = true;
boolean button2 = false;
boolean button3 = false;

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
  
  //buttoncheck();
  background(0);
  translate(width/3,height/2);
  for(int i=0; i<stars.length; i++){
    stars[i].update();
    stars[i].show();
  }
  fill(75,10,20);
  noStroke();
  rect(375,-350,350,700);
  
  //button1
  fill(255);
  rect(390,-25,80,60,10);
  fill(0);
  textSize(25);
  text("Slow", 402, 15);
  //button2
  fill(255);
  rect(480,-25,80,60,10);
  fill(0);
  text("Fast", 495, 15);
  //button3
  fill(255);
  rect(570,-25,80,60,10);
  fill(0);
  text("Light", 580, 2);
  text("Speed", 573, 26);
  
  
  fill(75,10,20);
  stroke(59, 206, 86);
  ellipse(520,190,220,220);
  ellipse(520,190,170,170);
  ellipse(520,190,120,120);
  fill(59, 206, 86);
  triangle(520,190,490,87,550,87);
  ellipse(520,90,60,20);
  
  fill(75,10,20);
  stroke(59, 206, 86);
  triangle(410,-80,630,-80,630,-150);
  fill(59, 206, 86);
  triangle(410,-80,580,-80,580,-133);
  text("Armour", 475, -155);
  
  fill(75,10,20);
  stroke(59, 206, 86);
  triangle(410,-200,630,-200,630,-270);
  fill(59, 206, 86);
  text("Speed", 475, -275);
  if(speed==10){
  triangle(410,-200,480,-200,480,-222);
  }
  else if(speed==25){
  triangle(410,-200,530,-200,530,-238);
  }
  else if(speed==50){
  triangle(410,-200,630,-200,630,-270);  
  }
}


/*
void buttoncheck(){
  if(button1(390,-25,80,60,10)){
    button1 = true;
    button2 = false;
    button3 = false;
  }
  else if (button2(480,-25,80,60,10)){
    button1 = false;
    button2 = true;
    button3 = false;
  }
  else if (button3(570,-25,80,60,10)){
    button1 = false;
    button2 = true;
    button3 = false;
  }
}

*/
