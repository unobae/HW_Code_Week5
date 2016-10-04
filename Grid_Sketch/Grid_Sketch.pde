void setup(){
  
  size(600,600);
  
}

void draw(){
  
  background(0);
  
  //int valbroken = 0;  This is an infinite loop
  //while(val1 < 600){
  //stroke(255);
  //line(0,val1,width,val1);
  //val1 += 25;
  //}
  
  //for (int i = 0; i = 100; i+=3) {  This is an infinite loop
  //  println(I'm going to break!);
  //}
  
  int val1 = 0;
  while(val1 < 600){
  stroke(255);
  line(0,val1,width,val1);
  val1 += 25;
  }
  int val2 = 0;
  while(val2 < 600){
  stroke(255);
  line(val2,0,val2,height);
  val2 += 25;
  }
  float dC1 = dist(0,0,mouseX,mouseY);
  float dC2 = dist(0,width,mouseX,mouseY);
  float dC3 = dist(height,width,mouseX,mouseY);
  float dC4 = dist(height,0,mouseX,mouseY);

  float d = dist(width/2, height/2, mouseX, mouseY);
  float maxDist = dist(0, 0, width/2, height/2);
  float rVal = map(dC1,0.0,maxDist,0.0,255.0);
  float gVal = map(dC2,0.0,maxDist,0.0,255.0);
  float bVal = map(dC3,0.0,maxDist,0.0,255.0);
  fill(rVal,gVal,bVal);
  noStroke();
  rectMode(CENTER);
  rect(width/2,height/2,dC1,dC3);
  
  for(int r = 0; r < 1000; r += 100){
    noFill();
    stroke(10);
    ellipseMode(CENTER);
    ellipse(width/2,height/2,r,r);
  }
}