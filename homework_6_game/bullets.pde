class Bullet {
  color c;
  float xpos= width;
  float ypos;
  float xspeed;
  float bz = 20;
  float bh = 10;
  float cc= (random(255));
  Bullet(color tempC, float tempYpos, float tempXspeed) {
    c = tempC;
    ypos=tempYpos;
    xspeed= tempXspeed;
  }

  void update() {
    xpos -= xspeed;
    fill(cc);
    rect(xpos, ypos, bz, bh);
  }
}
