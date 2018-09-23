Walker w;
int s = 30;
boolean grow = true;

void setup() {
  size(500, 500);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.render();
}

void keyPressed(){
  saveFrame("image-###.jpg");
}

class Walker {
  int x;
  int y;
  
  Walker() {
    x = (width/2);
    y = (height/2);
  }

  void render() {
    ellipse(x,y,s,s);
    if (s<=20) {
      grow = true;
      } else if (s>=40) {
        grow = false;
      }
      
     if (grow== true){
       s++;
     } else {
       s--;
     }
    }

  void step() {
    int choice = int(random(4));
    int dist = int(random(5));
    
    if (choice == 0) {
      // x++;
      x = x+dist;
    } else if(choice == 1){
      //x--;
      x = x-dist;
    } else if (choice == 2){
      //y++;
      y = y+dist;
    } else {
      //y--;
      y = y-dist;
    }
  }
}
