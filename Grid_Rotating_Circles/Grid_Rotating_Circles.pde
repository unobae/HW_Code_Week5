int rot = 5;

void setup(){
  size(600,600);
}

void draw(){
  background(0);
  for(int a = 45; a <600; a+=85){
    for(int b = 45; b <600; b+=85){
    rotCirc(a,b);
    }
  }
}

void rotCirc(int x,int y){
  pushMatrix();
  translate (x,y);
  rotate(radians(rot++));
  fill(255);
  ellipse(25,0,15,15);
  ellipse(0,25,15,15);
  ellipse(-25,0,15,15);
  ellipse(0,-25,15,15);
  popMatrix();
}