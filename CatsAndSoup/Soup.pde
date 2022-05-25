public class Soup{
  Ingredients[] stuff;
  float rating;
  public Soup(int size){
    rating=0;
    for (Ingredients i : stuff){
      rating+=i.rating;
    }
    stuff=new Ingredients[size];
  }
  
  
}
