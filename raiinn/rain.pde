class Rain{
  
  
float rx ;  
float ry;
float rspeed;
float rsize;
color rcolor;

Rain(){
  rx= random(width);
  ry=-10;
  rspeed=10;
  rsize= 20;
  rcolor = color(0,0,150);
}

void move (){

  ry += rspeed; 
}
boolean splash(){
 if(ry > height){
  return true; 
 }else{
  return false ;
 }
}
void display(){
  fill(50,100,150);
  noStroke();
  ellipse(rx,ry,rsize,rsize);
}
}
  
  
