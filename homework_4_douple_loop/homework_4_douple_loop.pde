
int ls= 50;  //line start
float le=550;   // line end

void setup(){
 size(600,600);
 strokeWeight(20);
  for (int i = 0; i < le; i = i+ls) {    //forward
    for(int j= 0; j < le; j = j+ls){    //down
  line(j, i, j, i);
}}
  
}
