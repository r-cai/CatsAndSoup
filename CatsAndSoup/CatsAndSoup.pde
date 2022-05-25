Map m;
static int currency=0;

void setup(){
  size(500,800);
  m=new Map();
  
}  
/*void keyPressed(){
  if (key==' '){
    m.pause=!m.pause;
  }
}*/
void draw(){
  if(m.pause==true)
    {
      triangle(width/3, height/3,width/3,2*height/3,2*width/3,height/2);
    }
  if(m.time<30){
    background(152,190,100);
  }  
  if(m.time>30){
    background(74,129,87);  
  }  
  m.drawShop();

}
