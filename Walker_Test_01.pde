Walker w;

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
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(0);
    strokeWeight(2);
    point(x,y);
  }

  void step() {
    int choice = int(random(4));
    
    if (choice == 0) {
      x++;
    } else if(choice == 1){
      x--;
    } else if (choice == 2){
      y++;
    } else {
      y--;
    }
  }
}
