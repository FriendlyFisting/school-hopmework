
void setup(){
  size(600,600);
  
  
}

void draw(){
  
  background(0);
  
  for (int i= num-1; i>0; i--){
    x[i]= x[i-1];
    y[i]= y [i-1];
  }
   
 
  
   
  
   if (indexPosition == num){
     indexPosition=0;}
     indexPosition=indexPosition+1;
     indexPosition=(indexPosition+1) % num;
     
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  
  for (int i = 0; i < num-1; i ++){
ellipse(x[indexPosition=+i],y[indexPosition=+i],i/5.0,i/5.0);
  fill(255,30);
  noStroke();
 
  }  
}
