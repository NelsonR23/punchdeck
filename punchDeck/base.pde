class PunchDeck {
 private int health, attack, defense, mana, score, player;
 private boolean ultimate;
 
 public PunchDeck(){
  score=0;
  attack=0;
  defense=0;
  mana=0;
  health=100;
  ultimate=false;
  player=1;
 }
 public int getScore(){
   return score;
 }
 public int getAttack(){
   return attack;
 }
 public int getDefense(){
   return defense;
 }
 public int getMana(){
   return mana;
 }
 public int getHealth(){
   return health;
 }
 public int getPlayer(){
   return player;
 }
 public boolean getUltimate(){
  return ultimate; 
 }
 public void setScore(int n){
   score=n;
 }
  public void setHealth(int n){
   health=n;
 }
  public void setAttack(int n){
   attack=n;
 }
  public void setDefense(int n){
   defense=n;
 }
  public void setMana(int n){
   mana=n;
 }
  public void setUltimate(boolean n){
   ultimate=n;
 }
 public void setPlayer(int n){
   player=n;
}
}
