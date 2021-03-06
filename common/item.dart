// file: item.dart
// contains: Item, Equipable

part of common;

class Item {
  // Basic item class
  String id;
  String color; // basic graphics for gui
  String desc;
  
  Item(this.id);
  
  // use the item, currently only heros have inventories
  bool use(Hero user) {
    return user.inv.take(this); // try to take the item from the hero's inventory
  }
  
  int get hashCode => id.hashCode; // by default, items are defined to be the same if their ids are the same
  bool operator==(other) => (other is Item) && hashCode == other.hashCode;
  
  // ==== PACKING ====
  Item.fromPack(data) {
    unpack(data);
  }
  pack() {
    return {
      "id" : id,
      "color" : color,
      "desc" : desc,
    };
  }
  unpack(data) {
    id = data["id"];
    color = data["color"];
    desc = data["desc"];
  }
}

class Equipable extends Item {
  // Base class for all equipable items
  
  // Equipable types
  static const HAND = 0; // weapon
  static const HEAD = 1; // armor headgear
  static const RING = 2; // armor ring
  static const FEET = 3; // armor legs
  static const BELT = 4; // armor middle
  static const CAPE = 5; // armor back
  // (yes there is no chest, belt is kind of subsituting for that, and look they all have the same line length
  
  int type; // What type of item is it (from above)
  Stats stats = new Stats();
  
  Equipable(id,type) : super(id) {
    this.type = type;
  }
  
  // Equipables are the same if they have the same type, stats and name
  int get hashCode => super.hashCode * 37 + 17 * type.hashCode + 37*stats.hashCode;
  bool operator==(other) => other is Equipable && type == other.type && stats == other.stats;
  
  // ==== PACKING ====
  Equipable.fromPack(data) : super.fromPack(data) {
    unpack(data);
  }
  pack() {
    var data = super.pack();
    data["type"] = type;
    data["stats"] = stats.pack();
    return data;
  }
  unpack(data) {
    type = data["type"];
    stats.unpack(data["stats"]);
    super.unpack(data);
  }
}