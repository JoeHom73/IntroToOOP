
int count = 15;
= new Ball [count]; 
Ball b;                //declare a new ball called b



void setup() {
  for (int i=0; i < count; i++) {
    size(1400, 1000);
    b = new Ball;      //initialize b as a new object of the Ball class
  }
}

void draw() {
  //background(0);
  for (int i=0; i < count; i++) {
    fill(0, 10);
    rect(0, 0, width, height);
    b. move();
    b.center();
    b.display();  //call b's display() method
  }
}