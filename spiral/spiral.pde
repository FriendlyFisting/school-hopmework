
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
  float x= r*cos(theta);
  float y = r * sin(theta);

  float cirkel_noise=noise(cirkel)*cbredde;
  cirkel_temp += 0.01;
  cirkel = cirkel_temp + cirkel_noise;
float fyld= 255;
float fyld_noise=noise(fyld)*10;
fyld_temp += 0.01;
fyld=fyld_temp + fyld_noise;
  noStroke();
  fill(0,0,255 );
  
  ellipse(x+ width/2, y + height/2, cirkel, cirkel);
  x++;
  y++;
  theta += 0.01; //antal bolde

  r = r+0.1;// spiral
}
