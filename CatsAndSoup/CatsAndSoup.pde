Map m;
color col;
static int currency=0;
boolean shop=false;
void setup(){
  size(500,800);
  m=new Map();
  m.lots[1].Sassign("Corn");
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
    if(m.lots[m.ad].type==" "&&m.add){
      if(m.buy=="Carrot"){currency-=300;}
      if(m.buy=="Cabbage"){currency-=400;}
      if(m.buy=="Cabbage"){currency-=400;}
      if(m.lotSize()>4){currency-=250;}
      m.lots[m.ad].Sassign(m.buy);
      shop=false;
    }
    if (m.lots[m.ad].type!=" "&&m.del){
      if(m.lots[m.ad].type=="Carrot"){currency+=300-150;}
      if(m.lots[m.ad].type=="Cabbage"){currency+=400-150;}
      m.lots[m.ad].Sassign(" ");
      shop=false;
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
  if(m.soups.size()>m.rmv&&mouseY>710&&mouseY<790){
    currency+=m.soups.get(m.rmv).cost;
    m.soups.remove(m.rmv);
    
    m.go=false;
  }
  
}
