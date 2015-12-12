
class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector []loc = new PVector [count];
  PVector []vel = new PVector [count];
  PVector []acc = new PVector [count];
  float []diam = new float [count];
  color []c = new color [count];
  int []speed = new int [count];

  //this is a constructor. you can have more than one constructor for a given class

  Ball (int tspeed, int size) {
    for (int i=0; i < count; i++) {
      
        int []speed = new int [count];
        int []tspeed = new int [count];
        speed[i] = tspeed[i];
        diam[i] = size[i];
        loc[i] = new PVector(random(diam[i], width-diam[i]), random(diam[i], height-diam[i]));
        vel[i] = PVector.random2D();
        vel[i].mult(3);
        acc[i] = PVector.random2D();
        acc[i].mult(.001);
        c[i] = color(random(255), random(255), random(255));
      
    }
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    for (int i=0; i < count; i++) {
      fill(c[i]);
      noStroke();
      ellipse(loc[i].x, loc[i].y, diam[i], diam[i]);
    }
  }
  void move() {
    for (int i=0; i < count; i++) {
      acc[i] = PVector.random2D();
      acc[i].mult(.5);
      vel[i].add(acc[i]);
      vel[i].limit(10);
      loc[i].add(vel[i]);
    }
  }
  void center() {
    for (int i=0; i < count; i++) {
      if (loc[i].x-diam[i] >= width || loc[i].y-diam[i] >= height || loc[i].x+diam[i] <= 0 || loc[i].y+diam[i] <= 0) {
        loc[i].x = width/2;
        loc[i].y = height/2;
        vel[i] = PVector.random2D();
        c[i] = color(random(255), random(255), random(255));
      }
    }
  }
}