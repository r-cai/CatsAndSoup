public class Map{
  float time;
  boolean pause=false;
  Station[] lots;
  ArrayList<Soup> soups;
  ArrayList<Ingredients> auto;
  ArrayList<Deco> dec;
  boolean go;
  int rmv;
  boolean add=false;
  int ad=1;
  String buy;
  boolean del;
  float x;
  float y;
  boolean shop=false;
  int dShop=0;
  boolean placeD=false;
  String decoT;
  public Map(float startX,float startY){
    x=startX;y=startY;
    time=second();
    lots=new Station[9];
    soups=new ArrayList<Soup>();
    auto=new ArrayList<Ingredients>();
    dec=new ArrayList<Deco>();
    soupStation main=new soupStation(); lots[0]=main;
    for(int i=1;i<=8;i++){
      lots[i]= new Station(startX,startY,i," ");
    }
    
  }
  public Map(){
    x=0;y=0;
    time=second();
    lots=new Station[9];
    soups=new ArrayList<Soup>();
    auto=new ArrayList<Ingredients>();
    soupStation main=new soupStation(); lots[0]=main;
    for(int i=1;i<=8;i++){
      lots[i]= new Station(i," ");
    }
  }
  void drawLots(){
    
    for(Station i : lots){
      fill(col+20);
      stroke(col-100);
      ellipse(i.x+500/6,i.y+(700-40)/6,500/3,(700-40)/3);
      fill(155,118,83,150);
      stroke(155,118,83,150);
      ellipse(i.x+500/6,i.y+40+(700-40)/6,130,80);
      ellipse(i.x+500/6,i.y+40+(700-40)/6,100,40);
      if(i.type!=" "){i.drawStation();}
    }
    fill(0);
    text(""+currency+" GOLD", 10,20);
    text(""+deco+" DECCOINS (1000 GOLD)", 10,35);
    text("MAP "+expand,300,20);
  }
  void addStation(int pos, String type){
    lots[pos]=new Station(pos, type);
  }
  void convertC(){
    if(currency>=500){currency-=500;deco++;}
  }
  int lotSize(){
    int sum=0;
    for (int i=0;i<lots.length;i++){
      if(lots[i].type!=" "){
        sum++;
      }
    }
    return sum;
  }
  void drawShop(){
    fill(0);text(""+dShop,100,70);
    float x=80;
    float y=70;
    stroke(245, 243, 198,180);
    fill(245, 243, 198,180);
    rect(40, 40, width-80,height-80,20);
    if(dShop==1){drawDeco();}
    //extraShop
    if(dShop==0){basicShop(x,y);}
  }
  void drawDeco(){
    //flower button;
    fill(50); 
    rect(100,100,130,40,10);
    fill(255);
    text("Flower",120,125);
    fill(0);
    text("2 DECCOINS",250,125);
    
    //lantern button;
    fill(50); 
    rect(100,150,130,40,10);
    fill(255);
    text("Mushroom",120,175);
    fill(0);
    text("2 DECCOINS",250,175);
    
    //frog button;
    fill(50); 
    rect(100,200,130,40,10);
    fill(255);
    text("Frog",120,225);
    fill(0);
    text("3 DECCOINS",250,225);
    
    //Sq button;
    fill(50); 
    rect(100,250,130,40,10);
    fill(255);
    text("Squirrel",120,275);
    fill(0);
    text("3 DECCOINS",250,275);
    
    //bird button;
    fill(50); 
    rect(100,300,130,40,10);
    fill(255);
    text("Bird",120,325);
    fill(0);
    text("3 DECCOINS",250,325);
  }
  void basicShop(float x, float y){
    fill(50);
    textSize(22);
    text("SHOP (choose type, then press number lot)",100,60,width-200,80);
    text("LOT CHOSEN: "+ad,100,600);
    text("TYPE CHOSEN: "+buy,100,500);
    //draw carrot button
    rect(x+20,y+120,120,35,5);
    fill(65,163,23);
    stroke(0);
    triangle(x+30,y+125,x+60,y+140,x+30,y+135);
    triangle(x+25,y+150,x+60,y+140,x+30,y+140);
    fill(255,165,0);
    stroke(205,105,0);
    triangle(x+50,y+150,x+50,y+130,x+130,y+140);
    fill(50);
    textSize(16);
    if(lotSize()>4){
      text("550 GOLD",x+30,y+180);
    }else{text("300 GOLD",x+30,y+180);}
    
    //draw corn button
    fill(50);
    stroke(50);
    rect(x+20,y+210+90,120,35,5);
    fill(50);
    fill(249,225,118);
    stroke(249,225,118);
    rect(x+25,y+310,70,15,20);
    fill(246,201,21);
    stroke(246,201,21);
    rect(x+30,y+305,50,25,20);
    stroke(249,229,188);
    ellipse(x+120,y+320,10,5);ellipse(x+127,y+325,10,5);
    ellipse(x+110,y+325,10,5);ellipse(x+115,y+315,10,5);
    ellipse(x+130,y+320,10,5);ellipse(x+130,y+315,10,5);
    fill(50);
    if(lotSize()>4){
      text("1250 GOLD",x+30,y+270+90);
    }else{text("1000 GOLD",x+30,y+270+90);}
    
    //draw cabbage button
    fill(50);
    stroke(50);
    rect(x+20,y+210,120,35,5);
    color c=color(75,173,33);
    fill(c);
    stroke(30);
    ellipse(x+60,y+230,35,30);
    fill(c+30);stroke(70);
    ellipse(x+60,y+230,15,15);
    fill(c+60);stroke(50);
    ellipse(x+60,y+230,10,10);
    fill(c);
    stroke(30);
    arc(x+100,y+220,30,30,0,PI,OPEN);
    fill(50);
    if(lotSize()>4){
      text("650 GOLD",x+30,y+270);
    }else{text("400 GOLD",x+30,y+270);}
    
    //draw delete button
    rect(400,400,40,20);
    fill(255);
    text("DEL",400,415);
  }
  void drawTable(){
    fill(186,140,99);
    stroke(215, 130, 70);
    rect(0,710,500,90,15);
    fill(129,84,56);
    stroke(100, 38, 14);
    rect(0,790,500,10);
    update();
    for(int i=0;i<soups.size();i++){
      soups.get(i).drawSoup((500/5)*i,710);
    }
    
  }
  
  void update(){
    if((!m.pause)&&mouseY>710&&mouseY<790){
      rmv=mouseX/100;
      go=true;
    }
    if(shop&&clickdel()){
      add=false;
      del=true;
    }
    if(shop&&clickCa()&&(currency>=300||(m.lotSize()>4&&currency>=550))){
      del=false;
      add=true;
      buy="Carrot";
    }
    else if(shop&&clickCb()&&(currency>=400||(m.lotSize()>4&&currency>=650))){
      del=false;
      add=true;
      buy="Cabbage";
    }
    else if(shop&&clickCo()&&(currency>=1000||(m.lotSize()>4&&currency>=1250))){
      del=false;
      add=true;
      buy="Corn";
    }
  }
  boolean clickdel(){
    return (mouseX>400&&mouseX<440&&mouseY>400&&mouseY<420);
  }
  boolean clickCa(){
    return (mouseX>100&&mouseX<220&&mouseY>190&&mouseY<225);
  }
  boolean clickCb(){
    return (mouseX>100&&mouseX<220&&mouseY>280&&mouseY<315);
  }
  boolean clickCo(){
    return (mouseX>100&&mouseX<220&&mouseY>370&&mouseY<405);
  }
  boolean clickFl(){
    return (mouseX>100&&mouseY>100&&mouseX<230&&mouseY<140);
  }
  boolean clickLan(){
    return (mouseX>100&&mouseY>150&&mouseX<230&&mouseY<190);
  }
  boolean clickFr(){
    return (mouseX>100&&mouseY>200&&mouseX<230&&mouseY<240);
  }
  boolean clickSq(){
    return (mouseX>100&&mouseY>250&&mouseX<230&&mouseY<290);
  }
  boolean clickBr(){
    return (mouseX>100&&mouseY>300&&mouseX<230&&mouseY<340);
  }

}
