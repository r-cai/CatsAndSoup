public class Ingredients{
  String type;
  float rating;
  public Ingredients(String t){
    type=t;
    if(type.equals("Carrots")){
      rating=0.15;
    }
    if(type.equals("Cabbage")){
      rating=0.2;
    }
  }
  
  

}
