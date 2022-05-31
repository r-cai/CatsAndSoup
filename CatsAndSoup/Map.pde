public class Map{
  float time;
  boolean pause=false;
  Station[] lots;
  ArrayList<Soup> soups;
  ArrayList<Ingredients> auto;
  
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
    
  }
  void addStation(int pos, String type){
    lots[pos]=new Station(pos, type);
  }
  void drawShop(){
    stroke(245, 243, 198,180);
    fill(245, 243, 198,180);
    rect(40, 40, width-80,height-80,20);
  }
  void drawTable(){
    fill(186,140,99);
    stroke(215, 130, 70);
    rect(0,710,500,90,15);
    fill(129,84,56);
    stroke(100, 38, 14);
    rect(0,790,500,10);
    for(int i=0;i<soups.size();i++){
      soups.get(i).drawSoup((500/5)*i,710);
    }
  }

}
