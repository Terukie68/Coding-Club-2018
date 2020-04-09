Player p;
boolean released = true;
boolean teleport = false;

int maxDepth = 4;

int pauseCounter = 100;
int nextConnectionNo = 1000;
int speed = 60;
int moveSpeed = 60;


int xoffset = 0;
int yoffset = 0;

void settings() {
  size(850, 850);
}

void setup() {
  frameRate(60);
  p = new Player();
}



void draw() {
  background(187,173,160);
  fill(205,193,180);
  for(int i = 0 ; i< 4 ;i++){
    for(int j =0; j< 4 ;j++){
      rect(i*200 + (i+1) *10, j*200 + (j+1) *10, 200, 200);  
    
    }
    
    
  }
  p.move();
  p.show();
  
  if(p.doneMoving()){
    p.getMove();
  }
}


void keyPressed() {

  if (released) {
  }
}

void keyReleased(){
 released = true; 
  
}

boolean compareVec(PVector p1, PVector p2) {
  if (p1.x == p2.x && p1.y == p2.y) {
    return true;
  }
  return false;
}
