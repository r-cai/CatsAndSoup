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
    Station one= new Station(0,40,""); lots[1]=one;
    Station two= new Station(0,(660/3)+40,""); lots[2]=two;
    Station thr= new Station(0,(2*660/3)+40,""); lots[3]=thr;
    Station fou= new Station(500/3,40,""); lots[4]=fou;
    Station fiv= new Station(500/3,(2*660/3)+40,""); lots[5]=fiv;
    Station six= new Station(2*500/3,40,""); lots[6]=six;
    Station sev= new Station(2*500/3,(660/3)+40,""); lots[7]=sev;
    Station eig= new Station(2*500/3,(2*660/3)+40,""); lots[8]=eig;
  }
  void drawLots(){
    for(Station i : lots){
      fill(col+20);
      stroke(col+20);
      ellipse(i.x+500/6,i.y+(700-40)/6,500/3,(700-40)/3);
      i.drawStation();
    }
  }
  void drawShop(){
    stroke(245, 243, 198,180);
    fill(245, 243, 198,180);
    rect(40, 40, width-80,height-80,20);
  }
  void drawTable(){
    fill(215, 130, 70);
    stroke(215, 130, 70);
    rect(0,710,500,90,15);
    fill(100, 38, 14);
    stroke(100, 38, 14);
    rect(0,790,500,10);
  }

}
