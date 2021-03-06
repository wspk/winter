// file: items.dart

part of common;


//=============================================
// Game Equipables
//=============================================
class SkiGoggles extends Equipable {
  SkiGoggles() : super("Ski Goggles",Equipable.HEAD) {
    desc = "Perhaps this used to be a ski resort. Perhaps not.";
    color = "brown";
    stats.speed = 0.2; // increases speed by 0.2
  }
}
class PropellorHat extends Equipable {
  PropellorHat() : super("Propellor Hat",Equipable.HEAD) {
    desc = "You can't REALLY fly with one of these, can you? Well, can you?";
    color = "yellow";
    stats.jump = 5; // increases jump by 5
  }
}
class MagicRing extends Equipable {
  //A powerful wizard's energy ring, increases mana.
  MagicRing() : super("Ring of Magic Doing",Equipable.RING) {
    desc = "'A powerful wizard once owned this ring,' they said. But it looks suspiciously like one from a cereal box";
    color = "grey";
    stats.mpmax = 50; // gives 50 mana
  }
}
class ChainMailCape extends Equipable {
  //Spammy chain mail - weighs you down, more prone to viruses -> less health
  ChainMailCape() : super("Cape of Chain Mail - The Worse Kind",Equipable.CAPE) {
    desc = "Chain mail! Look at all these links... to virus-filled web pages! It's THAT kind of chain mail.";
    color = "orange";
    stats.jump = -3; //decreases jump by 3
    stats.hpmax = -25; //decreases health to 3/4 health
  }
}
class ChainMailCape2 extends Equipable {
  //Medieval chain mail - heavy, so slower movement, but better resistance to damage
  ChainMailCape2() : super("Cape of Chain Mail - The Better Kind",Equipable.CAPE) {
    desc = "Chain mail! Look at all these links... the more steel between me and my enemy, the better.";
    color = "orange";
    stats.speed = -2/1000; //decreases speed by 0.2
    stats.hpmax = 100; //doubles max health
  }
}
class UrgencyBoots extends Equipable {
  //Special boots for running away - faster but you take more damage if hit
  UrgencyBoots() : super("Boots of RUNNING AWAY!!!", Equipable.FEET) {
    desc = "Brave Sir Robin ran away. But not as fast as you with these boots.";
    color = "brown";
    stats.speed = 3/1000; //doubles speed
    stats.hpmax = -40; //decreases wearer's max health to 3/5 of base hpmax.
  }
}


//=============================================
// Game Items
//=============================================

class HealthPotion extends Item {
  // A simple health potion
  HealthPotion() : super("Health Potion") {
    desc = "Drink up! Guaranteed* to increase your health.";
    color = "red";
  }
  
  bool use(Hero user) {
    if(super.use(user) && user.hp < user.stats.hpmax){
      if(user.hp <= (user.stats.hpmax - 30))
        user.hp += 30;
      else user.hp = user.stats.hpmax;
      return true;
    }
    return false; // item was not used
  }
}

class Thing1 extends Item {
  // A simple health potion
  Thing1() : super("Thing 1") {
    desc = "Drink up! Guaranteed* to increase your health.";
    color = "purple";
  }
  
  bool use(Hero user) {
    if(super.use(user) && user.hp < user.stats.hpmax){
      if(user.hp <= (user.stats.hpmax - 30))
        user.hp += 30;
      else user.hp = user.stats.hpmax;
      return true;
    }
    return false; // item was not used
  }
}

class Thing2 extends Item {
  // A simple health potion
  Thing2() : super("Thing 2") {
    desc = "Drink up! Guaranteed* to increase your health.";
    color = "cyan";
  }
  
  bool use(Hero user) {
    if(super.use(user) && user.hp < user.stats.hpmax){
      if(user.hp <= (user.stats.hpmax - 30))
        user.hp += 30;
      else user.hp = user.stats.hpmax;
      return true;
    }
    return false; // item was not used
  }
}

class Thing3 extends Item {
  // A simple health potion
  Thing3() : super("Thing 3") {
    desc = "Drink up! Guaranteed* to increase your health.";
    color = "thistle";
  }
  
  bool use(Hero user) {
    if(super.use(user) && user.hp < user.stats.hpmax){
      if(user.hp <= (user.stats.hpmax - 30))
        user.hp += 30;
      else user.hp = user.stats.hpmax;
      return true;
    }
    return false; // item was not used
  }
}

class Thing4 extends Item {
  // A simple health potion
  Thing4() : super("Thing 4") {
    desc = "Drink up! Guaranteed* to increase your health.";
    color = "thistle";
  }
  
  bool use(Hero user) {
    if(super.use(user) && user.hp < user.stats.hpmax){
      if(user.hp <= (user.stats.hpmax - 30))
        user.hp += 30;
      else user.hp = user.stats.hpmax;
      return true;
    }
    return false; // item was not used
  }
}

class Thing5 extends Item {
  // A simple health potion
  Thing5() : super("Thing 5") {
    desc = "Drink up! Guaranteed* to increase your health.";
    color = "thistle";
  }
  
  bool use(Hero user) {
    if(super.use(user) && user.hp < user.stats.hpmax){
      if(user.hp <= (user.stats.hpmax - 30))
        user.hp += 30;
      else user.hp = user.stats.hpmax;
      return true;
    }
    return false; // item was not used
  }
}

class Thing6 extends Item {
  // A simple health potion
  Thing6() : super("Thing 6") {
    desc = "Drink up! Guaranteed* to increase your health.";
    color = "thistle";
  }
  
  bool use(Hero user) {
    if(super.use(user) && user.hp < user.stats.hpmax){
      if(user.hp <= (user.stats.hpmax - 30))
        user.hp += 30;
      else user.hp = user.stats.hpmax;
      return true;
    }
    return false; // item was not used
  }
}

class MilkCake extends Item {
  // A food item supplying a small amount of health
  MilkCake() : super("Milk Cake") {
    desc = "This sugary treat makes your bones stronger and your teeth weaker!";
    color = "tan";
  }
  
  bool use(Hero user) {
    if(super.use(user) && user.hp < user.stats.hpmax){
      if(user.hp <= (user.stats.hpmax - 10))
        user.hp += 10;
      else user.hp = user.stats.hpmax;
      return true;
    }
    return false; // item was not used
  }
}

class Ale extends Item {
  // Ale ups your mana, decreases health
  Ale() : super("Ale") {
    desc = "The best companion for any adventurer.";
    color = "green";
  }
  
  bool use(Hero user) {
    if(super.use(user) && user.mp < user.stats.mpmax){
      if(user.hp >= 0)
        user.hp -= 5;
      else user.hp = 0;
      if(user.mp <= (user.stats.mpmax - 15))
        user.mp += 15;
      else user.mp = user.stats.mpmax;
      return true;
    }
    return false; // item was not used
  }
}

class ManaPotion extends Item {
  // A simple mana potion
  ManaPotion() : super("Mana Potion") {
    desc = "Drink up! Guaranteed* to increase your mana.";
    color = "blue";
  }
  
  bool use(Hero user) {
    if(super.use(user) && user.mp < user.stats.mpmax){
      if(user.mp <= user.stats.mpmax - 30)
        user.mp += 30;
      else user.mp = user.stats.mpmax;
      return true;
    }
    return false;
  }
}