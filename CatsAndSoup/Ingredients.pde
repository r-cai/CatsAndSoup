public class Ingredients{
  String type;
  float rating;
  public Ingredients(String t){
    type=t;
    if(type=="Carrots"){
      rating=0.15;
    }
    if(type=="Cabbage"){
      rating=0.2;
    }
    if(type=="Corn"){
      rating=0.25;
    }
  }
  
  

}
