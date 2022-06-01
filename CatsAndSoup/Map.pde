public class Map{
  float time;
  boolean pause=false;
  Station[] lots;
  ArrayList<Soup> soups;
  ArrayList<Ingredients> auto;
  boolean go;
  int rmv;
  boolean add=false;
  int ad=0;
  String buy;
  
  public Map(){
    time=second();
    currency=0;
    lots=new Station[9];
    soups=new ArrayList<Soup>();
    auto=new ArrayList<Ingredients>();
    soupStation main=new soupStation(); lots[0]=main;
    for(int i=1;i<=8;i++){
      lots[i]= new Station(i,"");
    }
  }
  void drawLots(){
    for(Station i : lots){
      fill(col+20);
      stroke(col-100);
      ellipse(i.x+500/6,i.y+(700-40)/6,500/3,(700-40)/3);
      i.drawStation();
    }
    fill(0);
    text(""+currency+" GOLD", 10,20);
  }
  void addStation(int pos, String type){
    lots[pos]=new Station(pos, type);
  }
  void drawShop(){
    float x=80;
    float y=70;
    stroke(245, 243, 198,180);
    fill(245, 243, 198,180);
    rect(40, 40, width-80,height-80,20);
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
    text("300 GOLD",x+30,y+180);
    //draw cabbage button
    fill(50);
    stroke(50);
    rect(x+20,y+230,120,35,5);
    color c=color(75,173,33);
    fill(c);
    stroke(30);
    ellipse(x+60,y+250,35,30);
    fill(c+30);stroke(70);
    ellipse(x+60,y+250,15,15);
    fill(c+60);stroke(50);
    ellipse(x+60,y+250,10,10);
    fill(c);
    stroke(30);
    arc(x+100,y+240,30,30,0,PI,OPEN);
    fill(50);
    text("400 GOLD",x+30,y+290);
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
    if(!m.pause&&m.soups.size()>0&&mouseY>710&&mouseY<790){
      rmv=mouseX/100;
      go=true;
    }
    if(shop&&clickCa()&&currency>=300){
      add=true;
      buy="Carrot";
    }
    else if(shop&&clickCb()&&currency>=400){
      add=true;
      buy="Cabbage";
    }
  }
  boolean clickCa(){
    return (mouseX>60&&mouseX<180&&mouseY>160&&mouseY<195);
  }
  boolean clickCb(){
    return (mouseX>60&&mouseX<180&&mouseY>170&&mouseY<305);
  }

}
