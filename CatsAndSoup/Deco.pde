public class Deco{
  float x,y;
  String type;
  boolean buy=false;
  public Deco(float x1,float y1,String t){
    x=x1;y=y1;
    type=t;
  }
  void drawDec(){
    fill(0);
    ellipse(x,y,10,10);
  
  }
}
