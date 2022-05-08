class Mover {

  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;

  Mover() {
    position = new PVector(400,50);
    velocity = new PVector(1,0);
    acceleration = new PVector(0,0);
    mass = 1;
  }
  
  void applyForce(PVector force) {
    //print(force);
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
    
    
  }
  
  void update() {
    //print(acceleration);

    velocity.add(acceleration);
    position.add(velocity);
    String words = str(acceleration.y) + ",";
    print(words);
    acceleration.mult(0);
    
    
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(position.x,position.y,16,16);
    //print(position.y)
  }

  void checkEdges() {

    if (position.x > width) {
      position.x = 0;
    } else if (position.x < 0) {
      position.x = width;
    }

    if (position.y > height) {
      velocity.y *= -1;
      position.y = height;
    }

  }

}
