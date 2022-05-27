public class soupStation extends Station{
  public soupStation(){
   super(500/3,(660/3)+40,"Soup");
  }
  void drawStation(){
    if(efficiency > 0){
     efficiency --;
    }
    if(efficiency==0){
      Soup now=new Soup();
      m.soups.add(now);
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
    rect(x+500/6-35,y+30+660/6,70,40,6);
    fill(255,253,206);
    stroke(0);
    ellipse(x+500/6,y+30+660/6, 70,40);
    
  }
}
