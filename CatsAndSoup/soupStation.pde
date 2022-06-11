public class soupStation extends Station{
  public soupStation(){
   super(0,"Soup");
  }
  void drawStation(){
    if(m.pause){
      time=second()-progress;
      if(second()<progress){time=60-(progress-second());}
    }
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
    lg=loadImage("log.png");
      image(lg,x+5,y+120,500/3-10,110);
    PImage kat=loadImage(type+".png");
    image(kat,x+10,y+25,120,150);
    fill(0);
    stroke(0);
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
      stroke(col-10);
      fill(245, 243, 198,200);
      ellipse(x+40,y+45,10,10);
      ellipse(x+50,y+55,5,5);
      rect(x+20,y+20,500/3-40,20,5);
      fill(50);

      text(""+progress+" out of "+wait,x+30,y+20,500/3-40,20);
  }
}
