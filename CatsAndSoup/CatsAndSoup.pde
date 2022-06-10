ArrayList<Map> total=new ArrayList<Map>();
int expand=0;
Map m;
color col;
boolean buyb=false;
static int currency=20000;
static int deco=0;


void setup(){
  size(500,800);
  m=new Map(0,0);
  total.add(m);
  m=total.get(expand);
  
}  

void keyPressed(){
  if(key==CODED){
    if(keyCode==LEFT&&expand!=0&&!buyb){
      expand--;
    }
    if(keyCode==LEFT&&buyb){
      expand=total.size()-1;
      buyb=false;
    }
    if(keyCode==RIGHT){
      if(expand==total.size()-1){
        buyb=true;
      }
      else{expand++;}
    }
    if(m.shop&&keyCode==DOWN&&m.dShop<2){
      m.dShop++;
    }
    if(m.shop&&keyCode==UP&&m.dShop>0){
      m.dShop--;
    }
  }
  if(key=='s'){
    m.shop=!m.shop;
  }
  if (key==' '){
    m.pause=!m.pause;
  }
  if(m.shop&&key>'0'&&key<'9'){
    m.ad=key-48;
    if(m.lots[m.ad].type==" "&&m.add){
      if(m.buy=="Carrot"){currency-=300;}
      if(m.buy=="Cabbage"){currency-=400;}
      if(m.buy=="Corn"){currency-=1000;}
      if(m.lotSize()>4){currency-=250;}
      m.lots[m.ad].Sassign(m.buy);
      m.shop=false;
    }
    if (m.lots[m.ad].type!=" "&&m.del){
      if(m.lots[m.ad].type=="Carrot"){currency+=300-150;}
      if(m.lots[m.ad].type=="Cabbage"){currency+=400-150;}
      if(m.lots[m.ad].type=="Corn"){currency+=500;}
      m.lots[m.ad].Sassign(" ");
      m.shop=false;
    }
    m.add=false;
  }
}
void draw(){
  background(152,190,100);
  textSize(16);
  col=color(152,190,100);
  m=total.get(expand);
  m.drawLots();
  m.drawTable();
  
  if(m.pause){
    stroke(255);
    fill(255,150);
    triangle(width/3, height/3,width/3,2*height/3,2*width/3,height/2);
  }
  if(m.shop){
    m.drawShop();
  }
  if(buyb){drawbuy();}
}
void addMap(){
  expand++;
  m=new Map(0,0);
  total.add(m);
  m=total.get(expand);
  
}
void mouseClicked(){
  if(m.soups.size()>m.rmv&&mouseY>710&&mouseY<790){
    currency+=m.soups.get(m.rmv).cost;
    m.soups.remove(m.rmv);
    
    m.go=false;
  }
  if(buyb&&mouseX>width/4&&mouseY>height*.5-50
  &&mouseX<3*width/4&&mouseY<height*.5
  &&currency>=10000){
    addMap();
    currency-=10000;
  }
  if(!m.shop&&mouseX>0&&mouseX<50&&mouseY>20&&mouseY<35){
    m.convertC();
  }
  if(m.dShop==1&&m.shop){
    if(m.clickFlower()){
      m.place="Flower";
      m.plDec=true;
      m.shop=false;
      m.dShop=0;
    }
    
  }
  if(m.plDec&&validClick()){
    m.dec.add(new Deco(mouseX,mouseY,m.place));
  }
  
}
void drawbuy(){
  background(152,190,100);
  fill(255);
  stroke(50);
  if(mouseX>width/4&&mouseY>height*.5-50
  &&mouseX<3*width/4&&mouseY<height*.5){fill(200);}
  rect(width/4,height*.5-50,width/2,50,20);
  fill(50);
  text("BUY MAP EXPANSION",width/4+30,height*.5-30);
  text("10000 GOLD",width/4+30,height*.5-10);
  if(currency<10000){
    fill(255,0,0);
    textSize(40);
    fill(0);
    textSize(14);
    if(mouseX>width/4&&mouseY>height*.5-50
    &&mouseX<3*width/4&&mouseY<height*.5){
      text("YOU'RE TOO POOR RIGHT NOW GO BACK :(",0,40,width,height);
    }
  }
  
}
boolean validClick(){
  return (mouseY<700&&mouseY>40);
}
