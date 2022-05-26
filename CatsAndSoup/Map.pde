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
    
    soupStation main=new soupStation(); lots[0]=main;
    Station one= new Station(0,0,""); lots[1]=one;
    Station two= new Station(0,800/3,""); lots[2]=two;
    Station thr= new Station(0,2*800/3,""); lots[3]=thr;
    Station fou= new Station(500/3,0,""); lots[4]=fou;
    Station fiv= new Station(500/3,2*800/3,""); lots[5]=fiv;
    Station six= new Station(2*500/3,0,""); lots[6]=six;
    Station sev= new Station(2*500/3,800/3,""); lots[7]=sev;
    Station eig= new Station(2*500/3,2*800/3,""); lots[8]=eig;
  }
  void drawLots(){
    fill(153,198,142);
    stroke(col+20);
    for(Station i : lots){
      rect(i.x,i.y,500/3,800/3);
    }
  }
  void drawShop(){
    fill(245, 243, 198);
    stroke(50,130,140);
    rect(40, 40, width-80,height-80);
  }
  

}
