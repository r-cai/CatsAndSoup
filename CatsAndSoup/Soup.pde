public class Soup{
  Ingredients[] stuff;
  float rating;
  public Soup(){
    stuff=new Ingredients[m.auto.size()];
    rating=0;
    for(int i=0;i<stuff.length;i++){
      stuff[i]=m.auto.remove(i);
    }
    for (Ingredients i : stuff){
      rating+=i.rating;
    }
    
  }
  
  
}
