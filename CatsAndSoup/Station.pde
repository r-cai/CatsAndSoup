public class Station {
  float x, y;
  int time;
  String type;
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
      wait=4;
    }
    if(skill.equals("Soup")){
      wait=10;
    }
    if(skill.equals("Cabbage")){
      wait=6;
    }
    if(type==""){
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
    if(skill.equals("Carrot")){
      wait=4;
    }
    if(skill.equals("Cabbage")){
      wait=6;
    }
    if(type==""){
      wait=0;
    }
    progress=0;
    return type;
  }
  void drawStation(){
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
    if(progress>wait && m.pause==false){
      time=second();
      if(m.auto.size()<3){
        Ingredients now=new Ingredients(type);
        m.auto.add(now);
      }

    }
    if(type!=""){
      showProg();
    }
    color cat=0;
    String face="";
    if(type=="Carrot"){
      cat=color(239,179,97);
      face="= o . <  =";
    }
    if(type=="Cabbage"){
      cat=color(165,113,78);
      face="= ~ n ~  =";
    }
    if(type!=""){
      fill(cat); 
      stroke(cat);
      triangle(x+30,y+660/6+5-30,x+40,y+660/6-30-20,x+55,y+660/6-30);
      triangle(x+90,y+660/6+5-30,x+80,y+660/6-30-20,x+65,y+660/6-30);
      stroke(cat);
      rect(x+30,y+660/6-30,60,80,5);
      fill(255);
      rect(x+41,y+660/6,40,50,10);
      fill(0);
      text(face, x+21,y+660/6-10);
    }
    if(type=="Carrot"){
      fill(65,163,23);
      stroke(0);
      triangle(x+30,y+165,x+60,y+180,x+30,y+175);
      triangle(x+25,y+190,x+60,y+180,x+30,y+180);
      fill(255,165,0);
      stroke(205,105,0);
      triangle(x+50,y+190,x+50,y+170,x+130,y+180);
    }
    if(type=="Cabbage"){
      color c=color(75,173,33);
      fill(c);
      stroke(30);
      ellipse(x+50,y+170,60,60);
      fill(c+30);stroke(70);
      ellipse(x+50,y+170,45,45);
      fill(c+60);stroke(50);
      ellipse(x+50,y+170,20,20);
      fill(c);
      stroke(30);
      arc(x+110,y+150,50,40,0,PI,OPEN);
    }
  }
  void showProg(){
    if (mouseX>x&&mouseX<x+500/3
      &&mouseY>y&&mouseY<y+(700-40)/3)
    {
      if(type!=""){
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
