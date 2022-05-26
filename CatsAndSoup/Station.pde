public class Station {
  float x, y;
  int efficiency;
  String type;
  float progress;
  public Station(int xpos, int ypos, String skill){
    x=xpos;
    y=ypos;
    if(skill.equals("")){
      type=null;
    }
    type=skill;
    if(skill.equals("Carrot")){
      efficiency+=60*4;
    }
    if(skill.equals("Soup")){
      efficiency+=10*60;
    }
  }
  String Sassign(String skill){
    type=skill;
    return type;
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
