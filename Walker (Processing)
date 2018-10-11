Walker a; // defines the walker
Walker b;
Walker c;
Walker d;
Walker e;

int size = 30; // initial size of the walker
boolean grow = true; // the size growth for the walker

float currentColor = random(1); // initial percentage of the gradient of lerpColor
boolean turnBlue = true; // sets the walker to turn blue 
color to = color(109, 188, 255); //desired blue colour
color from = color(255, 246, 106); //desired yellow colour


void setup() {
  size(500, 500);
  a = new Walker(); //creates the walker object
  b = new Walker(); 
  c = new Walker(); 
  d = new Walker(); 
  e = new Walker(); 
  background(255);
}

void draw() {
  a.step(); // moves the walker object
  a.render();  // renders the walker object at the new position
  b.step();
  b.render();
  c.step();
  c.render();
  d.step();
  d.render();
  e.step();
  e.render();
}

void keyPressed(){
  saveFrame("image-###.jpg");
}

class Walker { //creating the walker class
  int xpos;
  int ypos; 

  Walker() {
    xpos = (width/2+(int(random(-width/4, width/4)))); // sets the initial xpos to anywhere between 1/4 and 3/4 of the screen size
    ypos = (height/2+(int(random(-height/4, height/4)))); // sets the initial ypos to anywhere between 1/4 and 3/4 of the screen size
  }

  void render() { // dictates how the walker is depicted on-screen
    //creates the ellipse
    color inter = lerpColor(from,to,currentColor); //sets the current colour of the walker
    noStroke();
    fill(inter);
    ellipse(xpos, ypos, size, size);

    //sets the direction of the size growth/decrease
    if (size<=20) {
      grow = true;
    } else if (size>=40) {
      grow = false;
    }
    //grows or shrinks the walker
    if (grow== true) {
      size++;
    } else {
      size--;
    }
    
    // this sets the colour of the walker
    if (currentColor<=0) {
      turnBlue = true;
    } else if (currentColor>=1) {
      turnBlue = false;
    }
    
    if (turnBlue == true) {
      currentColor = currentColor+0.001;
    } else if (turnBlue == false) {
      currentColor = currentColor-0.001;
    }
  }

  void step() { // controls the walkers movement
    int choice = int(random(4)); //random direction choice for the walker this step
    int dist = int(random(5)); // random distance to move the walker this step

    if (choice == 0) {
      // x++;
      xpos = xpos+dist;
    } else if (choice == 1) {
      //x--;
      xpos = xpos-dist;
    } else if (choice == 2) {
      //y++;
      ypos = ypos+dist;
    } else {
      //y--;
      ypos = ypos-dist;
    }
  }
}
