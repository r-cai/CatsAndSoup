Map m;
color col;
static int currency=0;
boolean shop=false;

void setup(){
  size(500,800);
  m=new Map();
  m.addStation(2,"Carrot");
  m.addStation(6,"Carrot");
  
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
    background(152,190,100);
    col=color(152,190,100);
    m.drawLots();
    m.drawTable();
    fill(col-50);
    rect(0,0,width-1,40);
  fill(255);
  textSize(16);
  text(""+currency+" Gold",20,20);
  if(shop){
    m.drawShop();
  }
  
}
