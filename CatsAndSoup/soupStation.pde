public class soupStation extends Station{
  public soupStation(){
   super(0,"Soup");
  }
  void drawStation(){
    if(!m.pause){
      progress=(second()-time);
      if(second()<time){
        progress=(60-time)+second();
      }
    }
    if(progress>wait && m.pause==false){
      time=second();
      if(m.soups.size()<6){
        Soup now=new Soup();
        m.soups.add(now);
      }
    }
    fill(200);
    stroke(200);
    triangle(x+30,y+660/6+5-30,x+40,y+660/6-30-20,x+55,y+660/6-30);
    triangle(x+90,y+660/6+5-30,x+80,y+660/6-30-20,x+65,y+660/6-30);
    rect(x+30,y+660/6-30,60,80,5);
    fill(255);
    rect(x+41,y+660/6,40,50,10);
    fill(0);
    text("= ^ w ^ =", x+21,y+660/6-10);
    stroke(col-10);
    rect(x+500/6-35,y+30+660/6,70,40,5,5,20,20);
    fill(237,215,164);
    stroke(0);
    ellipse(x+500/6,y+30+660/6, 70,40);
    fill(255,255,255,100);
    stroke(100, 38, 14);
    circle(x+500/6+8,y+30+660/6-1,10);
    circle(x+500/6-15,y+30+660/6-5,8);
    circle(x+500/6-5,y+30+660/6-20,7);
    circle(x+500/6+10,y+30+660/6-25,8);
    arc(x+500/6-3,y+30+660/6+10,10,10,PI,PI+PI,OPEN);
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
