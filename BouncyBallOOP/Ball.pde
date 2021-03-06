
class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel, acc;
  int diam;
  color c;
  int speed;

  //this is a constructor. you can have more than one constructor for a given class
  Ball(int tspeed, int size) {
    speed = tspeed;
    diam = size;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    vel.mult(3);
    acc = PVector.random2D();
    acc.mult(.001);
    c = color(random(255), random(255), random(255));
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void move() {

    acc = PVector.random2D();
    acc.mult(.5);
    vel.add(acc);
    vel.limit(10);
    loc.add(vel);
  }
  void center() {
    if (loc.x-diam >= width || loc.y-diam >= height || loc.x+diam <= 0 || loc.y+diam <= 0) {
      loc.x = width/2;
      loc.y = height/2;
      vel = PVector.random2D();
      c = color(random(255), random(255), random(255));
    }
  }
}