public class Station {
  float x, y;
  int efficiency;
  String type;
  int wait;
  float progress;
  public Station(int place, String skill){
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
      efficiency+=60*wait;
      progress=(int)(efficiency/240);
    }
    if(skill.equals("Soup")){
      wait=10;
      efficiency+=60*wait;
      progress=(int)(efficiency/600);
    }
    
  }
  public Station(int xpos, int ypos, String skill){
    x=xpos;
    y=ypos;
    //if(skill.equals("")){
      //type=null;
    //}
    type=skill;
    if(skill.equals("Carrot")){
      efficiency+=60*4;
    }
    if(skill.equals("Soup")){
      efficiency+=10*60;
    }
  }
  String Sassign(String skill){
    type=skill;
    return type;
  }
  void drawStation(){
    color cat=color(239,179,97);
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
      text("= o . <  =", x+21,y+660/6-10);
    }
    if(efficiency > 0&&m.pause==false){
     efficiency --;
    }
    
    if(efficiency==0&&m.pause==false){
      Ingredients now=new Ingredients(type);
      m.auto.add(now);
      efficiency+=60*4;
    }
    
  }
  void showProg(){
    Station check=new Station(1,"");
    for(int i=0;i<9;i++){
      
      if (mouseX>m.lots[i].x&&mouseX<m.lots[i].x+500/3
        &&mouseY>m.lots[i].y&&mouseY<m.lots[i].y+(700-40)/3
      ){
        check=m.lots[i];
        i+=9;
      }
      
    }
    if(check.type!=""){
      stroke(col-10);
      fill(245, 243, 198);
      ellipse(check.x+40,check.y+45,10,10);
      ellipse(check.x+50,check.y+55,5,5);
      rect(check.x+20,check.y+20,500/3-40,20,5);
      fill(50);
      text(""+progress+" out of "+wait,x+30,y+20,500/3-40,20);
    }
  }
  
  
  
}  
