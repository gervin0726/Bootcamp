var Viking = function (name, health, strength) {
  Warrior.call(this, health, strength);
  this.name = name;
}

Viking.prototype = Object.create(Warrior.prototype);

Viking.prototype.constructor = Viking;
