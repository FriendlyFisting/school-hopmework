ArrayList<Bullet> bullets;     //array list

void setup() {
  size(900, 600);

  bullets = new ArrayList<Bullet>();
}

void draw() {

  // background
  imageMode(CENTER);
  PImage gotham = loadImage("img/gotham.jpg");
  image(gotham, width/2, height/2);

  //batman
  PImage bat = loadImage("img/bat.png");
  image(bat, batX, batY, batH, batW);
  
  while (bullets.size() < bulletsOnScreen) {                       //loop bullets
  bullets.add(new Bullet(color(255), random(height), random(speed)));
  }
 
  for (int i = bullets.size()-1; i >= 0; i--) {          //bullets flying
    bullets.get(i).update();
    
    if(bullets.get(i).xpos < 0) {    //remove bullets if less than 0
      bullets.remove(i);
    }
  }
  


  if (batY+batQ > height) {
    batY=0;
  }
  if (batY-batQ < 0) {
    batY=400;
    
  }
}

void keyPressed() {     //moving batman
  if (key== CODED) {
    if (keyCode== DOWN) {
      batY=batY+jump;
    } else if (keyCode== UP) {
      batY= batY-jump;
    }
  }
}
