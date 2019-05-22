void setup(){
  size(1000, 800);
  background(0,0,0);
  PunchDeck punch = new PunchDeck();
 Graphic g = new Graphic();
 g.drawRect(80, 340, 90, 140);
 g.drawRect(830, 340, 90, 140);
 
 fill(0,0,0);
 textSize(40);
 text(punch.getHealth(),87,420);
 text(punch.getHealth(),837,420);
 textSize(30);
 fill(55,255,255);
 //left
 text("Attack: " + punch.getAttack(),55,550);
 text("Defense: " + punch.getDefense(),55,600); 
 //right
 text("Attack: " + punch.getAttack(),810,550);
 text("Defense: " + punch.getDefense(),810,600); 
 //middle
 text("Player " + punch.getPlayer(), 450, 80);
}
