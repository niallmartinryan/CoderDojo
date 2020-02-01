// TankGame ;)
Tank myTank;
static final int SPD =4, FPS =60;



void setup(){
  size(600,600);
  smooth(3);
  frameRate(FPS);
  myTank = new Tank(300,300,25, SPD);
}


void draw(){
  background(0);
  myTank.move();
  myTank.drawTank();
  
}


void keyPressed() {
  myTank.setMove(keyCode, true);
}
 
void keyReleased() {
  myTank.setMove(keyCode, false);
}
