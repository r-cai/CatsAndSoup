public class Deco{
  float x,y;
  String type;
  boolean drawD;
  public Deco(float x1,float y1,String t){
    x=x1;y=y1;
    type=t;
  }
  public Deco(String t){
    x=mouseX;y=mouseY;
    type=t;
  }
  void drawDeco(){
    PImage img=loadImage(type+".png");
    if(type=="Flower"||type=="Mushroom"){
      image(img, x-20,y-20,40,40);
    }
    if(type=="Frog"
    ||type=="Bird"||type=="Squirrel"){
      image(img, x-30,y-30,60,60);
    }
    
  }
  void floatDeco(){
    PImage img=loadImage(type+".png");
    if(type=="Flower"||type=="Mushroom"){
      image(img, mouseX-20,mouseY-20,40,40);
    }
    if(type=="Frog"
    ||type=="Bird"||type=="Squirrel"){
      image(img, mouseX-30,mouseY-30,60,60);
    }
    
  }

}
