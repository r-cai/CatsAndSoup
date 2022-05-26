Map m;
color col;
static int currency=0;
boolean shop=false;

void setup(){
  size(500,800);
  m=new Map();
  
}  
/*void keyPressed(){
  if (key==' '){
    m.pause=!m.pause;
  }
}*/
void keyPressed(){
  if(key=='s'){
    shop=!shop;
  }
}
void draw(){
  if(m.pause==true)
    {
      triangle(width/3, height/3,width/3,2*height/3,2*width/3,height/2);
    }
  if(m.time<30){
    background(152,190,100);
    col=color(152,190,100);
  }  
  if(m.time>30){
    background(74,129,87);  
    col=color(74,129,87);
  }  
  fill(255);
  textSize(16);
  text(""+currency+" Gold",20,20);
  m.drawLots();
  m.drawTable();
  if(shop){
    m.drawShop();
  }

}
