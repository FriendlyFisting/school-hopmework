float x= random(width);
float y= 0;
float z=50;
float speed= 10;
float lz= 100;
float count=0;
void setup(){
  
  size(600,600);
  
  
}

void draw(){
  background(200);
 y=y+speed;
 if(y>height){
   y=0;
   x= random(width);
 }
 strokeWeight(5);
  ellipse(x,y,z,z);
  strokeWeight(20);
  line(mouseX-lz,500,mouseX+lz,500);
  
  if(x>mouseX-lz && x<mouseX+lz){
 count=count+1;
    }
    textSize(30);
    text("score= "+ count,400,200);
    
   
  }
