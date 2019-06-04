
# PunchDeck, a game to entertain and challenge

This is a small game that I created to be simple yet challenging. The mechanics are very basic and do not require the most precise motor skills, but there is a lot of thinking involved. PunchDeck involves two human players facing eachother using the same keyboard and taking turns rolling for attack, defense, or mana. Each turn consists of a die roll that determines the amount of attack, defense or mana added to the player's side. The higher the roll, the more the player will get. After player 2's turn the attack and defense on each side impact the opponent's health. If a player reaches 30 mana, it will count as 30 attack against the opponent. After each roll of the die, the player is given a meter and a prompt to press the spacebar.  Depending on the success of the player, their attack will either go up or down by 5 points, or stay the same. The game ends when one or both plyers run out of health.
 

### Difficulties or opportunities you encountered along the way.

The toughest part was implementing turns and keeping track of which values to change and how to change them. Many conditionals are involved and there is one method that consists of 10 lines but dictates the entire exchange of values for each player. 

### Most interesting piece of your code and explanation for what it does.

```Java
if (xp+5>=485 && xp+5<=525) {
        punch(pturn).setAttack(punch(pturn).getAttack()+5);
        tempframe=frameCount+60;
        whatever=0;
      }
      if ((xp+5>425&&xp+5<485) || (xp+5>525&&xp+5<575)) {
        punch(pturn).setAttack(punch(pturn).getAttack());
        text("", 495, 530);
      } 
      if ((xp+5>=275&&xp+5<=425) || (xp+5>=575 && xp+5<=725)) {
        punch(pturn).setAttack(punch(pturn).getAttack()==0?0:punch(pturn).getAttack()-5);        
        tempframe=frameCount+60;
        whatever=1;
      }
      count++;
      metst=0;
      if (pturn==2) {
        execute(1);
        execute(2);
      }
```
This code sets the values of the player's attack after they press space to stop the power meter. If the blue bar is in the red area then the player's atack will go down by five. Location of the bar is determined by the xp value within the conditionals. The orange area will not impact the attack, and the green area will increase the player's attack by 5. The tempframe value is used to project the result of the power meter move with either "+5" or "-5".
## Built With

* [Processing](https://processing.org/)

## Authors

* **Riley Nelson** 

## Acknowledgments

* Big thanks to Alex Moran for helping with logic and turn switching

