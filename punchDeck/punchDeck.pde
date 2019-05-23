
int roll;
int start;
PunchDeck punch1 = new PunchDeck();
PunchDeck punch2 = new PunchDeck();
Graphic g = new Graphic();

void setup() {
  size(1000, 800);

  smooth();

  roll=0;
  start=0;
}
void roll() {
  rect(425, 200, 150, 90);
  fill(0);
  text("Roll", 475, 255);

  if (mousePressed) {
    roll++;
  }
  if (roll>3) {
    fill(0);
    rect(425, 200, 150, 90);
    fill(55, 255, 255);
    rect(350, 200, 110, 80);
    rect(480, 200, 110, 80);
    rect(610, 200, 110, 80);
    if (punch1.rolly()<=2) {
      fill(0);
      textSize(20);
      text("Attack: +5", 355, 230 );
      text("Press A", 365, 260 );
    } else if (punch1.rolly()==3 || punch1.rolly()==4) {
      fill(0);
      textSize(20);
      text("Attack: +10", 355, 230 );
      text("Press A", 365, 260 );
    } else {
      fill(0);
      textSize(20);
      text("Attack: +15", 355, 230 );
      text("Press A", 365, 260 );
    }
  }
}
void draw() {
  background(0, 0, 0);
  fill(255);
  noStroke();
  rect(80, 340, 90, 140);

  rect(830, 340, 90, 140);

  if (mousePressed) {
    start++;
  }
  if (start<=5) {
    textSize(80);
    text("PunchDeck", 280, 100);
    rect(350, 300, 300, 150);
    fill(0);
    text("Start", 410, 400);
  } else if
    (start>5) {
    fill(0);

    textSize(40);





    textSize(30);

    fill(55, 255, 255);

    //left
    fill(0);
    text(punch1.getHealth(), 87, 420);
    fill(55, 255, 255);
    text("Attack: " + punch1.getAttack(), 55, 550);

    text("Defense: " + punch1.getDefense(), 55, 600); 

    //right
    fill(0);
    text(punch2.getHealth(), 837, 420);
    fill(55, 255, 255);
    text("Attack: " + punch2.getAttack(), 810, 550);

    text("Defense: " + punch2.getDefense(), 810, 600); 

    //middle

    text("Player " + punch1.getPlayer(), 440, 80);

    this.roll();
  }
}
