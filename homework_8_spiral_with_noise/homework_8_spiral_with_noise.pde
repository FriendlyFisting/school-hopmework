
float r= 5;
float theta= 0;
float speed =0.01;
float cirkel=5;
float cbredde=10;
float cirkel_temp;
float fyld_temp;

//noise
float xoff= 0.0;

void setup() {
  size(600, 600);
  background(255);
}


void draw() {
  float x= r*cos(theta);     /// the new x and y positiion for the ball
  float y = r * sin(theta);

  float cirkel_noise=noise(cirkel)*cbredde;           //the size of the circle
  cirkel_temp += 0.01;
  cirkel = cirkel_temp + cirkel_noise;
float fyld= 255;                             // color
float fyld_noise=noise(fyld)*10;               // noise color
fyld_temp += 0.01;
fyld=fyld_temp + fyld_noise;
  noStroke();
  fill(0,0,255 );
  
  ellipse(x+ width/2, y + height/2, cirkel, cirkel);   // defining the circle
  x++;
  y++;
  theta += 0.01; //antal bolde

  r = r+0.1;// spiral
}
