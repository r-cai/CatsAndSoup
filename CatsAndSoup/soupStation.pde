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
    fill(255);
    rect(x+30,y+660/6,50,70,9);
    stroke(255);
    triangle(x+30+9,y+660/6+9,x+35,y+660/6-10,x+60,y+660/6);
    fill(255,253,206);
    ellipse(x+500/6,y+10+660/6, 20,15);
  }
}
