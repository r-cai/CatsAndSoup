public class Deco{
  float x,y;
  String type;
  boolean drawD=false;
  public Deco(float x1,float y1,String t){
    x=x1;y=y1;
    type=t;
  }
  public Deco(String t){
    x=mouseX;y=mouseY;
    type=t;
  }
  void drawDeco(){
    img=loadImage(type+".png");
    image(img, x-30,y-30,60,60);
    
  }
  void floatDeco(){
    img=loadImage(type+".png");
    image(img, mouseX-30,mouseY-30,60,60);
    
  }

}
