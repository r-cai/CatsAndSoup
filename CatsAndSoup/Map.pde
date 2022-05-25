public class Map{
  float time;
  boolean pause=false;
  ArrayList<Station> lots;
  ArrayList<Soup> soups;
  
  public Map(){
    
    currency=0;
    lots=new ArrayList<Station>();
    soupStation main=new soupStation();    
    lots.add(main);
  }
  void drawShop(){
    
  }
  

}
