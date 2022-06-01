Map m;
color col;
static int currency=0;
boolean shop=false;
void setup(){
  size(500,800);
  m=new Map();
  m.lots[6].Sassign("Carrot");
  m.lots[3].Sassign("Cabbage");
}  

void keyPressed(){
  if(key=='s'){
    shop=!shop;
  }
  if (key==' '){
    m.pause=!m.pause;
  }
  if(shop&&key>'0'&&key<'9'){
    m.ad=key-48;
    if(m.lots[m.ad].type==""&&m.add){
      m.lots[m.ad].Sassign(m.buy);
      if(m.buy=="Carrot"){currency-=300;}
      if(m.buy=="Cabbage"){currency-=400;}
    }
    m.add=false;
  }
}
void draw(){
  background(152,190,100);
  textSize(16);
  col=color(152,190,100);
  m.drawLots();
  m.drawTable();
  if(m.pause){
    stroke(255);
    fill(255,150);
    triangle(width/3, height/3,width/3,2*height/3,2*width/3,height/2);
  }
  if(shop){
    m.drawShop();
  }
}
void mouseClicked(){
  if(m.auto.size()>m.rmv&&m.go){
    Soup s=m.soups.remove(m.rmv);
    currency+=s.cost;
    m.go=false;
  }
  
}
