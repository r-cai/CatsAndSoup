public class Soup{
  Ingredients[] stuff;
  float rating;
  public Soup(){
    stuff=new Ingredients[2];
    rating=0.1;
    for(int i=0;i<stuff.length;i++){
      stuff[i]=m.auto.get(0);
      m.auto.remove(0);
    }
    for (Ingredients i : stuff){
      rating+=i.rating;
    }
    
  }
    void drawSoup(float x,float y){
    fill(0);
    stroke(0);
    rect(x+40-35,y+30,70,40,5,5,20,20);
    fill(237,215,164);
    ellipse(x+40,y+30, 70,40);
    /*fill(255,255,255,100);
    circle(x+40+8,y+30-1,10);
    circle(x+40-15,y+30-5,8);
    circle(x+40-5,y+30-20,7);
    circle(x+40+10,y+30-25,8);
    arc(x+40-3,y+30+10,10,10,PI,PI+PI,OPEN);*/
    fill(200);
    text(""+rating, x+30,y+65);
    //for (Ingredients i:stuff){
      //if(i==new Ingredients("Carrot")){
        fill(255,165,0);
        stroke(255,165,0);
        rect(x+40-15,y+30,9,8,5);
        rect(x+40+5,y+25,9,8,5);
      //}
    //}

  }
  
}
