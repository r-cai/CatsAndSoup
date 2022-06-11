public class Station {
  float x, y;
  int time;
  String type=" ";
  int wait;
  int progress;
  public Station(int place, String skill){
    time=second();
    if(place==0){x=500/3;y=(660/3)+40;}
    if(place==1){x=0;y=40;}
    if(place==2){x=0;y=(660/3)+40;}
    if(place==3){x=0;y=(2*660/3)+40;}
    if(place==4){x=500/3;y=40;}
    if(place==5){x=500/3;y=(2*660/3)+40;}
    if(place==6){x=2*500/3;y=40;}
    if(place==7){x=2*500/3;y=(660/3)+40;}
    if(place==8){x=2*500/3;y=(2*660/3)+40;}
    type=skill;
    if(skill.equals("Carrot")){
      wait=6;
    }
    if(skill.equals("Soup")){
      wait=15;
    }
    if(skill.equals("Cabbage")){
      wait=7;
    }
    if(skill.equals("Corn")){
      wait=8;
    }
    if(type==" "){
      wait=0;  
    }
    progress=0;
  }
  public Station(float startx,float starty,int place, String skill){
    time=second();
    if(place==0){x=startx+500/3;y=starty+(660/3)+40;}
    if(place==1){x=startx+0;y=starty+starty+40;}
    if(place==2){x=startx+0;y=starty+(660/3)+40;}
    if(place==3){x=startx+0;y=starty+(2*660/3)+40;}
    if(place==4){x=startx+500/3;y=starty+40;}
    if(place==5){x=startx+500/3;y=starty+(2*660/3)+40;}
    if(place==6){x=startx+2*500/3;y=starty+40;}
    if(place==7){x=startx+2*500/3;y=starty+(660/3)+40;}
    if(place==8){x=startx+2*500/3;y=starty+(2*660/3)+40;}
    type=skill;
    if(skill.equals("Carrot")){
      wait=6;
    }
    if(skill.equals("Soup")){
      wait=15;
    }
    if(skill.equals("Cabbage")){
      wait=7;
    }
    if(skill.equals("Corn")){
      wait=8;
    }
    if(type==" "){
      wait=0;  
    }
    progress=0;
  }
  
  String Sassign(String skill){
    time=second();
    if(skill=="Soup"){
      return null;
    }
    type=skill;
    if(type=="Carrot"){
      wait=6;
    }
    if(type=="Cabbage"){
      wait=7;
    }
    if(skill.equals("Corn")){
      wait=8;
    }
    if(type==" "){
      wait=0;
    }
    progress=0;
    return type;
  }
  void drawStation(){
    if(type!=" "){
      if(progress>wait && m.pause==false){
        time=second();
        if(m.auto.size()<3){
          Ingredients now=new Ingredients(type);
          m.auto.add(now); 
        }
      }
      if(!m.pause){
        progress=second()-time;
        if(second()<time){
          progress=(60-time)+second();
        }
      }
      if(m.pause){
        time=second()-progress;
        if(second()<progress){time=60-(progress-second());}
      }
      
      showProg();
      lg=loadImage("log.png");
      image(lg,x+5,y+120,500/3-10,110);
      PImage kat=loadImage(type+".png");
      image(kat,x+10,y+25,120,150);
      
      if(type=="Corn"){
        PImage tp=loadImage("i"+type+".png");
        image(tp,x+10,y+130,150,80);
      }
      if(type=="Carrot"){
        PImage tp=loadImage("i"+type+".png");
        image(tp,x+10,y+130,150,80);
      }
      if(type=="Cabbage"){
        PImage tp=loadImage("i"+type+".png");
        image(tp,x+10,y+130,150,80);
      }
    }
  }
  void showProg(){
    if (mouseX>x&&mouseX<x+500/3
      &&mouseY>y&&mouseY<y+(700-40)/3)
    {
      if(type!=" "){
        stroke(col-10);
        fill(245, 243, 198,200);
        ellipse(x+40,y+45,10,10);
        ellipse(x+50,y+55,5,5);
        rect(x+20,y+20,500/3-40,20,5);
        fill(50);

        text(""+progress+" out of "+wait,x+30,y+20,500/3-40,20);
      }
    }

  }

}
