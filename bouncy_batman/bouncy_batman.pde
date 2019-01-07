
void setup() {
  size(800, 500);
  frameRate(30);
}

void draw() {
 //background
   PImage gotham = loadImage("img/gotham.jpg"); 
  imageMode(CENTER);
  image(gotham, width/2, height/2);

//batman movement
  batX=batX +(speedX*direX);
  batY=batY+(speedY*direY);
  
//batman turns
  if (batX>width-batW || batX < batW) {
    direX *= -1;
  }
  if (batY > height-batW || batY < batW) {
    direY *= -1;
  }
  PImage bat = loadImage("img/bat.png");
  image(bat, batX, batY, batH, batH);
}
