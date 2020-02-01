class Tank{
//circle
int x,y,r;
int v;
int angle;
boolean isLeft, isRight, isUp, isDown;

//rect
//cannon
//int rx,ry;
int rw,rl;


  Tank(int x, int y, int r, int spd){
    //circle
    this.x =x;
    this.y =y;
    this.r =r;
    this.v =spd;
    //rect
    //rx =x;
    //ry =y;
    rw = 10;
    rl = 45;
    angle =0;
  }

  void drawTank(){
    fill(255);
    circle(x,y,r);
    rect(x-rw/2,y,rw,rl);
  
  }
    
  void move(){
    final int radius = r >> 2;
    x = constrain(x + v*(int(isRight) - int(isLeft)), radius, width - radius);
    y = constrain(y + v*(int(isDown) - int(isUp)), radius, height - radius);
    
  }
  void rotateCannon(){
  
  
  }
  
  boolean setMove(int k, boolean b){
     switch (k) {
    case +'W':
    case UP:
      return isUp = b;
 
    case +'S':
    case DOWN:
      return isDown = b;
 
    case +'A':
    case LEFT:
      return isLeft = b;
 
    case +'D':
    case RIGHT:
      return isRight = b;
    case +'J':
      
    case +'K':
 
    default:
      return b;
    }
  }
  
  

}
