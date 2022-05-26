public class soupStation extends Station{
  public soupStation(){
   super(500/3,800/3,"Soup");
  }
  void drawStation(){
    if(efficiency > 0){
     efficiency --;
    }
    if(efficiency==0){
      Soup now=new Soup();
      m.soups.add(now);
    }
  }
}
