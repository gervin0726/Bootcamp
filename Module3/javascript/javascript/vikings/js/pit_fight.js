var PitFight = function (fighter1, fighter2, maxTurns) {
  Fight.call(this, fighter1, fighter2, maxTurns);
}

PitFight.prototype = Object.create(Fight.prototype);

PitFight.prototype.constructor = PitFight;

PitFight.prototype.startFight = function () {
  var i = 1;
  while (i<=this.maxTurns && this.continueFight) {
      console.log("Turn: " + i);
      console.log(this.fighter1.name + " attack to " + this.fighter2.name);
      this.fighter2.health = this.fighter2.health - this.fighter1.strength;
      console.log("the health of " + this.fighter2.name + " now is: "+ this.fighter2.health);
      
      console.log(this.fighter2.name + " attack to " + this.fighter1.name);
      this.fighter1.health = this.fighter1.health - this.fighter2.strength;
      console.log("the health of " + this.fighter1.name + " now is: "+ this.fighter1.health);

    i++;
  }
  console.log("The winner of the pit is: " + this.decideWinner(this.fighter1, this.fighter2));
}

PitFight.prototype.continueFight = function () {
  return (this.fighter1.health >0 && this.fighter2.health > 0) ? true :  false;
}

PitFight.prototype.decideWinner =  function (fighter1, fighter2) {
  return (this.fighter1.health > this.fighter2.health) ? this.fighter1.name : this.fighter2.name;
}
