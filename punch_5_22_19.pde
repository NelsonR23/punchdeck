void setup() {


  size(1000, 800);
  noStroke();
  smooth();
  background(0, 0, 0);

  PunchDeck punch = new PunchDeck();

  Graphic g = new Graphic();

  g.drawRect(80, 340, 90, 140);

  g.drawRect(830, 340, 90, 140);
int start=0;



if (mousePressed){
  start=1;
}
  if (start==0) {
    textSize(80);
    text("PunchDeck", 280, 100);
    rect(350, 300, 300, 150);
    fill(0, 0, 0);
    text("Start", 410, 400);
   
  }else if
(start==1){
  fill(0, 0, 0);

  textSize(40);

  text(punch.getHealth(), 87, 420);

  text(punch.getHealth(), 837, 420);

  textSize(30);

  fill(55, 255, 255);

  //left

  text("Attack: " + punch.getAttack(), 55, 550);

  text("Defense: " + punch.getDefense(), 55, 600); 

  //right

  text("Attack: " + punch.getAttack(), 810, 550);

  text("Defense: " + punch.getDefense(), 810, 600); 

  //middle

  text("Player " + punch.getPlayer(), 450, 80);
}
}
