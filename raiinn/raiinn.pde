float s = 100;
float RD= 500;
float RDD=10;
int fast= 3;
int num = 50;
int indexPosition = 0;
float rx;
float ry;
 int totalRain = 0;

 
Rain [] rains = new Rain[4];

void setup(){
 size(600,600); 
for(int   i = 0; i < rains.length; i++){
 rains[i] = new Rain(); 
}
}

void draw(){
  background(#577EE8);
  rains[totalRain] = new Rain();
  totalRain++;
  
  if (totalRain >= rains.length){
    totalRain =0;
  }
  
  for(int i = 0; i < totalRain; i++){
    rains[i].move();
    rains[i].display();
  }
  for(int   i = 0; i < rains.length; i++){
 rains[i] =move(); 
 rains[i] = display();
}

  fill(0);
  
  rect(mouseX-s,RD,s+s,RDD);
  
  fill(255);
  stroke(0,0,255);
  ellipse(rx, ry, rainsize, rainsize);
  ry++;
   
   
 

   
  
    }
