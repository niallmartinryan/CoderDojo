int d =40;

float x =0;
float y =0;
float zoom =0;
float angle =0;

void setup(){
  size(600,200);
  x= width/2;
  y= height/2;
  smooth();
  noStroke();
  

}

void draw(){
  background(#1F7B9B);
  translate(x,y);
  scale(zoom);
  rotate(angle);
  
  fill(120);
  ellipse(-200,0,d,d);
  

}

void keyPressed(){
  if(key == CODED){
    
  }
  if(key == ' '){
    angle=0;
    zoom =1;
    x = width/2;
    y = height/2;
  
  }

}
