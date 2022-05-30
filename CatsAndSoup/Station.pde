public class Station {
  float x, y;
  int efficiency;
  String type;
  int wait;
  float progress;
  public Station(int place, String skill){
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
    efficiency+=60*wait;
    if(type!=""){
      progress=(int)(efficiency/(60*wait));
    }
  }
  
  String Sassign(String skill){
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
    efficiency+=60*wait;
    if(type!=""){
      progress=(int)(efficiency/(60*wait));
    }
    return type;
  }
  void drawStation(){
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
    if(efficiency > 0&&m.pause==false){
     efficiency --;
    }
    
    if(efficiency==0&&m.pause==false){
      Ingredients now=new Ingredients(type);
      m.auto.add(now);
      efficiency=60*wait;
    }
    if(type!=""){
        showProg();
      }
  }
  void showProg(){
    
      if (mouseX>x&&mouseX<x+500/3
        &&mouseY>y&&mouseY<y+(700-40)/3
      ){
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
