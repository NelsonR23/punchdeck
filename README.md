
# PunchDeck, a game to entertain and challenge

This is a small game that I created to be simple yet challenging. The mechanics are very basic and do not require the most precise motor skills, but there is a lot of thinking involved. PunchDeck involves two human players facing eachother using the same keyboard and taking turns rolling for attack, defense, or mana. Each turn consists of a die roll that determines the amount of attack, defense or mana added to the player's side. The higher the roll, the more the player will get. After player 2's turn the attack and defense on each side impact the opponent's health. If a player reaches 30 mana, it will count as 30 attack against the opponent. After each roll of the die, the player is given a meter and a prompt to press the spacebar.  Depending on the success of the player, their attack will either go up or down by 5 points, or stay the same. The game ends when one or both plyers run out of health.
 

### Difficulties or opportunities you encountered along the way.

The toughest part was implementing turns and keeping track of which values to change and how to change them. Many conditionals are involved and there is one method that consists of 10 lines but dictates the entire exchange of values for each player. 

### Most interesting piece of your code and explanation for what it does.

```Java
void keyPressed() {
if (keyCode == LEFT) {
   tree= tree.getLeft();
   System.out.println(tree.getValue());
   String s=(String)tree.getValue();
   fill(155);
   textSize(50);
} else if (keyCode == RIGHT) {
   tree = tree.getRight();
   System.out.println(tree.getValue());
   String s=(String)tree.getValue();
   fill(155);
   textSize(50);
} else if (tree.getLeft()==null&&tree.getRight()==null) {
   System.out.println(tree.getValue());
   tree=t.returnTree();
}
}
```
This is the code that moves down the tree as decisions are made. It gets each value from both left and right and also casts the value to a String. If the progressions arrives at the leaf nodes, those values are printed.
## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Billie Thompson** 

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
