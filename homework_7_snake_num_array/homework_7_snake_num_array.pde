int num = 50;
int indexPosition = 0;
   
int [] x = new int [num];
int [] y = new int [num];
  
void setup(){
  size(600,600);
  
}

void draw(){
  
  background(0);
  
  for (int i= num-1; i>0; i--){
    x[i]= x[i-1];
    y[i]= y [i-1];
  }
   

   
  
   if (indexPosition == num){               //the changed position of the balls
     indexPosition=0;}
     indexPosition=indexPosition+1;
     indexPosition=(indexPosition+1) % num;
     
  x[indexPosition] = mouseX;      // where the balls appear
  y[indexPosition] = mouseY;
  
  for (int i = 0; i < num-1; i ++){           
ellipse(x[indexPosition=+i],y[indexPosition=+i],i/5.0,i/5.0);  // loop with the circle and placement
  fill(255,30);
  noStroke();
 
  }  
}
