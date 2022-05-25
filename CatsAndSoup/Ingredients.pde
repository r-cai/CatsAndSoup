public class Ingredients{
  String type;
  float rating;
  public Ingredients(String t){
    type=t;
    if(t.equals("Carrots")){
      rating=0.15;
    }
    if(t.equals("Cabbage")){
      rating=0.2;
    }
  }
  
  

}
