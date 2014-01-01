// file:db.dart

//========================================================
// Main Database
//========================================================
// Fake database until a real one exists

import '../common.dart';

// Accounts indexed by username
Map<String,Account> accs = {
  "knarr" : new Account("knarr", 
      new Hero("knarrc",300,50,"test1",
        new Stats(hpmax:100,mpmax:100,speed: 3/1000,jump:30))),
  "arielle" : new Account("arielle", 
      new Hero("ariellec",250,50,"test1",
        new Stats(hpmax:100,mpmax:100,speed: 3/1000,jump:30))),
  "fred" : new Account("fred",
      new Hero("fredc",200,50,"test1",
        new Stats(hpmax:100,mpmax:100,speed: 2/1000,jump:20)))
};


// Maps indexed by mapid
Map<String, GameMap> maps = {
  "test1" : new GameMap("test1",
      [new Pickupable(140,100,new HealthPotion()),
       new Pickupable(400,100,new PropellorHat()),
       new Pickupable(170,100,new MagicRing()),
       new Pickupable(460,100,new ManaPotion()),
       new Pickupable(470,100,new MilkCake()),
       new Pickupable(300,100,new Ale()),
       new Portal(500,100,50,50,"test2"),
       new RandEnemy(200,100,new Stats(hpmax:100))],
      [[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]]),
  "test2" : new GameMap("test2",
      [new Portal(500,100,50,50,"test1"),
       new Pickupable(150,100,new HealthPotion()),
       new Pickupable(140, 100, new UrgencyBoots()),
       new Pickupable(400, 100, new ChainMailCape2()),
       new Pickupable(300, 100, new Thing1()),
       new Pickupable(200, 100, new Thing2()),
       new Pickupable(250, 100, new Thing4()),
       new Pickupable(260, 100, new Thing5()),
       new Pickupable(280, 100, new Thing6()),
       new Pickupable(170, 100, new Thing3())],
      [[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
       [1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1],
       [1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,3,1,1,1,1,0,0,0,0,0,0,0,0,0,0,2,1,1],
       [1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,1],
       [1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,1],
       [1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
       [1,1,1,1,1,4,4,4,4,4,4,4,4,1,1,1,1,1,1]])
};