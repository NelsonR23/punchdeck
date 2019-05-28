int xp, step;
int roll;
int count=0;
int start;
int metst;

PunchDeck punch1 = new PunchDeck();

PunchDeck punch2 = new PunchDeck();

Graphic g = new Graphic();

int rol = punch1.rolly();

void setup() {

  size(1000, 800);

  roll=0;
  xp=275;
  step=10;
  start=0;
  metst=0;
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
  if (start<=3) {
    textSize(80);
    text("PunchDeck", 280, 100);
    rect(350, 300, 300, 150);
    fill(0);
    text("Start", 410, 400);
  } else if
    (start>3) {
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
    text("Mana: " + punch1.getMana(), 55, 650); 

    //right
    fill(0);
    text(punch2.getHealth(), 837, 420);

    fill(55, 255, 255);
    text("Attack: " + punch2.getAttack(), 810, 550);
    text("Defense: " + punch2.getDefense(), 810, 600); 
    text("Mana: " + punch2.getMana(), 810, 650);

    //middle
    text("Player " + punch1.getPlayer(), 440, 80);

    if (punch1.getPlayer()==1) {
      turn(punch1);
    } 
    if(punch1.getPlayer()==2){
      turn(punch2);
    }
  }
}

void turn(PunchDeck punch) {

  this.roll(punch);

  if (metst>=1) {
    fill(0);
    rect(350, 200, 720, 80);
    fill(55, 255, 255);
    textSize(40);
    text("Press Space", 400, 320);

    fill(130, 0, 0);
    rect(275, 350, 450, 50);
    fill(245, 179, 35);
    rect(425, 350, 150, 50);
    fill(52, 234, 40);
    rect(490, 350, 20, 50);
    fill(40, 45, 234);

    rect(xp, 340, 10, 70);
    xp+=step;
    if (xp>725) {
      xp=725;
      step=-10;
    }
    if (xp<275) {
      xp=275;
      step=10;
    }
  }
  if(count>=1){
  endTurn(2);
  }
}

void keyPressed() {

  if (key==32 && punch1.getPlayer()==1) {
    fill(255);
    if (xp>=490 && xp<=510) {
      punch1.setAttack(punch1.getAttack()+5);
      text("+5", 495, 530);
  } else if ((xp>425&&xp<490) || (xp>510&&xp<575)) {
    punch1.setAttack(punch1.getAttack());
    text("", 495, 530);
  } else if ((xp>=275&&xp<=425) || (xp>=575 && xp<=725)) {
    punch1.setAttack(punch1.getAttack()-5); 
    text("-5", 495, 530);
  }
  count++;
}
if (key==32 && punch1.getPlayer()==2){
    fill(255);
    if (xp>=490 && xp<=510) {
      punch1.setAttack(punch2.getAttack()+5);
      text("+5", 495, 530);
  } else if ((xp>425&&xp<490) || (xp>510&&xp<575)) {
    punch1.setAttack(punch2.getAttack());
    text("", 495, 530);
  } else if ((xp>=275&&xp<=425) || (xp>=575 && xp<=725)) {
    punch1.setAttack(punch2.getAttack()-5); 
    text("-5", 495, 530);
  }
  count++;
}
}


void roll(PunchDeck punch) {

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

    if (rol<=2) {

      fill(0); 
      textSize(15);

      text("Attack: +5", 365, 230 );
      text("Press A", 370, 260 );

      text("Defense: +5", 490, 230);
      text("Press D", 500, 260);

      text("Mana: +5", 625, 230);
      text("Press G", 630, 260);
    } else if (rol==3 || rol==4) {

      fill(0);
      textSize(15);

      text("Attack: +10", 355, 230 );
      text("Press A", 370, 260 );

      text("Defense: +10", 485, 230 );
      text("Press D", 500, 260 );

      text("Mana: +10", 625, 230 );
      text("Press G", 630, 260 );
    } else {
      fill(0);
      textSize(15);

      text("Attack: +15", 355, 230 );
      text("Press A", 370, 260 );

      text("Defense: +15", 485, 230 );
      text("Press D", 500, 260);

      text("Mana: +15", 625, 230 );
      text("Press G", 630, 260 );
    }
  }
  if (keyPressed) {
    if (key=='a') {
      if (rol<2) {
        punch.setAttack(5);
      } else if (rol==3 || rol==4) {
        punch.setAttack(10);
      } else {
        punch.setAttack(15);
      }
    }
    if (key=='d') {
      if (rol<2) {
        punch.setDefense(5);
      } else if (rol==3 || rol==4) {
        punch.setDefense(10);
      } else {
        punch.setDefense(15);
      }
    }
    if (key=='g') {
      if (rol<2) {
        punch.setMana(5);
      } else if (rol==3 || rol==4) {
        punch.setMana(10);
      } else {
        punch.setMana(15);
      }
    }
    metst+=1;
  }
}


void endTurn(int n) {
  punch1.setPlayer(n);
}
