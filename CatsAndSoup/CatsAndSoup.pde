Map m;
color col;
static int currency=0;
boolean shop=false;
void setup(){
  size(500,800);
  m=new Map();
  m.addStation(2,"Carrot");
  m.addStation(6,"Carrot");
  m.lots[3].Sassign("Cabbage");
}  

void keyPressed(){
  if(key=='s'){
    shop=!shop;
  }
  if (key==' '){
    m.pause=!m.pause;
  }
}
void draw(){
  background(152,190,100);
  textSize(16);
  col=color(152,190,100);
  m.drawLots();
  m.drawTable();
  if(shop){
    m.drawShop();
  }
  if(m.pause){
    stroke(255);
    fill(255,150);
    triangle(width/3, height/3,width/3,2*height/3,2*width/3,height/2);
  }
}
void mouseClicked(){
  if(m.go){
    Soup s=m.soups.remove(m.rmv);
    currency+=s.cost;
    m.go=false;
  }
}
