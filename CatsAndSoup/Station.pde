public class Station {
  int efficiency;
  String type;
  float progress;
  public Station(String skill){
    if(skill=="Carrot"){
      efficiency+=60*4;
    }
    if(skill=="Soup"){
      efficiency+=10*60;
    }
  }
  void drawStation(){
    if(efficiency > 0){
     efficiency --;
    }
    if(efficiency==0){
      Ingredients now=new Ingredients(type);
      m.auto.add(now);
    }
  }
  
  
  
  
  
}  
