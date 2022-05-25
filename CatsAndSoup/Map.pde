public class Map{
  float time;
  boolean pause=false;
  Station[] lots;
  ArrayList<Soup> soups;
  ArrayList<Ingredients> auto;
  
  public Map(){
    
    currency=0;
    lots=new Station[9];
    soupStation main=new soupStation();    
    lots[0]=main;
  }
  void drawShop(){
    fill(255, 253, 208);
    stroke(50,130,140);
    rect(40, 40, width-40,height-40);
  }
  

}
