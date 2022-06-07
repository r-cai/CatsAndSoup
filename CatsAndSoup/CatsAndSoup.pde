ArrayList<Map> total=new ArrayList<Map>();
int expand=0;
Map m;
color col;
boolean buyb=false;
static int currency=0;
boolean shop=false;

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
  }
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
      if(m.buy=="Corn"){currency-=1000;}
      if(m.lotSize()>4){currency-=250;}
      m.lots[m.ad].Sassign(m.buy);
      shop=false;
    }
    if (m.lots[m.ad].type!=" "&&m.del){
      if(m.lots[m.ad].type=="Carrot"){currency+=300-150;}
      if(m.lots[m.ad].type=="Cabbage"){currency+=400-150;}
      if(m.lots[m.ad].type=="Corn"){currency+=500;}
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
  m=total.get(expand);
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
    text("YOU'RE TOO POOR RIGHT NOW GO BACK :(",0,40,width,height);
    fill(0);
    textSize(14);
  }
  
}
