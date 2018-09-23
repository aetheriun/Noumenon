Walker w; // defines the walker
int s = 30; // initial size of the ellipse
boolean grow = true; // the size growth for the ellipse

void setup() {
  size(500, 500);
  w = new Walker(); //creates the walker object
  background(255);
}

void draw() {
  w.step(); // moves the walker object
  w.render();  // renders the walker object at the new position
}

void keyPressed(){
  saveFrame("image-###.jpg");
}

class Walker { //creating the walker class
  int x;
  int y; 
  
  Walker() {
    x = (width/2+(int(random(-width/4,width/4)))); // sets the initial xpos to anywhere between 1/4 and 3/4 of the screen size
    y = (height/2+(int(random(-height/4,height/4)))); // sets the initial ypos to anywhere between 1/4 and 3/4 of the screen size
  }

  void render() { // dictates how the walker is depicted on-screen
    //creates the ellipse
    ellipse(x,y,s,s);
    
    //sets the direction of the size growth/decrease
    if (s<=20) {
      grow = true;
      } else if (s>=40) {
        grow = false;
      }
     //grows or shrinks the ellipse
     if (grow== true){
       s++;
     } else {
       s--;
     }
    }

  void step() { // controls the walkers movement
    int choice = int(random(4)); //random direction choice for the walker this step
    int dist = int(random(5)); // random distance to move the walker this step
    
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
