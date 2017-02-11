var AssaultFight = function (team1, team2) {
  var maxTurns = Math.floor((Math.random() * 5) + 3);
  maxTurns = maxTurns < 5 ? 5 : maxTurns;
  Fight.call(this, team1,team2,maxTurns);
}

AssaultFight.prototype = Object.create(Fight.prototype);

AssaultFight.prototype.constructor = AssaultFight;

AssaultFight.prototype.startFight = function () {
  console.log("Start AssaultFight");
  var i = 1;
  while (i<=this.maxTurns) {


    i++;
  }
  console.log("The winners of the assault is: "+ this.decideWinner())
}


/*AssaultFight.prototype.continueFight = function () {
  return (this.fighter1.health >0 && this.fighter2.health > 0) ? true :  false;
}*/

AssaultFight.prototype.decideWinner =  function () {
  var casualtiesWarriorsTeam1 = 2 - team1.length;
  var casualtieswarriorsTeam2 = 10 - team2.length;
  return (casualtiesWarriorsTeam1 < casualtieswarriorsTeam2) ? "Vikings" : "Saxons";
}
