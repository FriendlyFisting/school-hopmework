class Bullet {
  color c;
  float xpos= width;
  float ypos;
  float xspeed;
  float bz = 20;
  float bh = 10;

  Bullet(color tempC, float tempYpos, float tempXspeed) {
    c = tempC;
    ypos=tempYpos;
    xspeed= tempXspeed;
  }

  void update() {
    xpos -= xspeed;
    fill(random(255));
    rect(xpos, ypos, bz, bh);
  }
}
