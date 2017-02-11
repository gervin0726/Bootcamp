var Saxon = function () {
  var health = Math.floor((Math.random() * 150) + 10);
  var strength = Math.floor((Math.random() * 10) + 8);
  Warrior.call(this, health, strength);
}

Saxon.prototype = Object.create(Warrior.prototype);

Saxon.prototype.constructor = Saxon;
