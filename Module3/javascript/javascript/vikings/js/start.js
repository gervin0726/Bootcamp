var viking1 = new Viking('viking1',600,20);
var viking2 = new Viking('viking2',800,25);

var pitFight = new PitFight(viking1,viking2,6);
pitFight.startFight();

var saxons = [];
for (var i=0; i<=10; i++) {
  saxons.push(new Saxon());
}

team1 = [viking1,viking2];

var assaultFight = new AssaultFight(team1,saxons);
