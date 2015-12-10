
Ball b;                //declare a new ball called b
Ball c;
Ball d;


void setup() {
  size(800, 600);
  b = new Ball(5, 30);      //initialize b as a new object of the Ball class
  c = new Ball(5, 30);
   d = new Ball(5, 30);
 
}

void draw() {
  //background(0);
  fill(0, 10);
  rect(0, 0, width, height);
  b. move();
  b.center();
  b.display();  //call b's display() method
  c. move();
  c.center();
  c. display();
  d. move();
  d.center();
  d. display();
  
}