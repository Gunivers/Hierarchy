execute as @e[type=armor_stand,tag=Hat] at @s run teleport @s ~ ~0.03 ~

# 1 - Unicorn
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=1,HaveObjective=0}] armor.head end_rod{display:{Name:"Unicorn",Lore:["UNICORN POWER!!!"]},Unbreakable:1,HideFlags:4} 1
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=1,HaveObjective=0}] run particle dust 2 2 2 1 ~ ~1 ~ 0 0.5 0 1 3 force

# 2 - Leaves
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=2,HaveObjective=0}] armor.head oak_leaves{display:{Name:"Leaves",Lore:["Greepeace approved"]},Unbreakable:1,HideFlags:4} 1
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=2,HaveObjective=0,IsWalking=10..}] run summon item ~ ~ ~ {PickupDelay:999999,Item:{id:"minecraft:oak_leaves",Count:1b},Motion:[0.0,0.2,0.0],Tags:["Hat"]}

# 3 - Disco
execute as @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=3,HaveObjective=0}] at @s run function hierarchy:easter-egg/hat/effects/disco

# 4 - TNT
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=4,HaveObjective=0}] armor.head tnt{display:{Name:"TNT",Lore:["Blow up in your face"]},Unbreakable:1,HideFlags:4} 1
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=4,HaveObjective=0,IsWalking=10..}] run particle lava ~ ~0.2 ~ 0.2 0 0.2 0 1
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=4,HaveObjective=0,InGame=..0,Jump=2}] run summon tnt ~ ~1 ~ {Fuse:1000,Tags:["Hat"]}
execute as @e[type=tnt,scores={Timer=1},tag=Hat] at @s run playsound minecraft:entity.creeper.primed record @a[distance=..30]
execute as @e[type=tnt,scores={Timer=38..},tag=Hat] run playsound minecraft:entity.villager.no record @a
execute at @e[type=tnt,scores={Timer=38..},tag=Hat] run particle explosion ~ ~0.5 ~ 0 0 0 0 1
execute at @e[type=tnt,scores={Timer=38..},tag=Hat] run particle heart ~ ~0.5 ~ 0.5 0.5 0.5 1 10 force

# 5 - Dog
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=5,HaveObjective=0}] armor.head bone{display:{Name:"Dog",Lore:["Annoying dog"]},Unbreakable:1,HideFlags:4} 1
execute as @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=5,HaveObjective=0,Jump=2}] at @s run playsound minecraft:entity.wolf.ambient record @a[distance=..30]

# 6 - Bling Bling
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=6,HaveObjective=0}] armor.head gold_block{display:{Name:"Bling Bling",Lore:["Rush to gold"]},Unbreakable:1,HideFlags:4} 1
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=6,HaveObjective=0,IsWalking=10..}] run summon item ~ ~ ~ {PickupDelay:999999,Item:{id:"minecraft:gold_ingot",Count:1b},Motion:[0.0,0.2,0.0],Tags:["Hat"]}

# 7 - Jukebox
execute as @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=7,HaveObjective=0,IsWalking=1..}] at @s run function hierarchy:easter-egg/hat/effects/jukebox
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=7,HaveObjective=0}] armor.head jukebox{display:{Name:"Jukebox",Lore:["Around the world, around the world"]},Unbreakable:1,HideFlags:4} 1

# 9 - Command Crazy
tag @a[tag=!CMDCrazy] remove CMDCrazy1
tag @a[tag=!CMDCrazy] remove CMDCrazy2
tag @a[scores={Timer=0..19},tag=!CMDCrazy] add CMDCrazy1
tag @a[scores={Timer=20..39},tag=!CMDCrazy] add CMDCrazy2

tag @a remove CMDCrazy
tag @a[scores={Hat=9}] add CMDCrazy

tag @a[scores={Hat=9},tag=!HatCMD] add HatCMDSheep
tag @a remove HatCMD

execute if entity @a[scores={Hat=9}] run function hierarchy:easter-egg/hat/effects/cmdcrazy

tag @a[tag=!HatCMD] remove HatCMDWait
tag @a[tag=!HatCMD] remove HatCMDBlock
tag @a[tag=!HatCMD] remove HatCMDGive
tag @a[tag=!HatCMD] remove HatCMDSheep
tag @a[tag=!HatCMD] remove HatCMDKill

# 10 - Santa Claus
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=10,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Santa Claus Hat",Lore:["Jingle bell, jingle bell"]},Unbreakable:1,HideFlags:4,Damage:49} 1
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=10,HaveObjective=0,IsWalking=10..}] run particle poof ~ ~0.2 ~ 0.2 0 0.2 0 3

# 11 - Pikachu
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=11,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Pikachu",Lore:["Who is that Pok?mon?"]},Unbreakable:1,HideFlags:4,Damage:39} 1

# 12 - Trump
execute as @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=12,HaveObjective=0}] at @s run function hierarchy:easter-egg/hat/effects/trump

# 13 - Luna
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=13,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Luna Lovegood",Lore:["You are as sane as me."]},Unbreakable:1,HideFlags:4,Damage:24} 1

# 14 - Bunny
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=14,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Bunny Girl",Lore:["I'm a Bunny girl, in a Bunny world"]},Unbreakable:1,HideFlags:4,Damage:27} 1

# 15 - Ruban
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=15,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Pink Ribbon",Lore:["I'M FABULOUUUUUUS!!!"]},Unbreakable:1,HideFlags:4,Damage:48} 1

# 16 - Lion
tag @a[tag=!Animal] remove Animal1
tag @a[tag=!Animal] remove Animal2
tag @a[scores={Timer=0..19},tag=!Animal] add Animal1
tag @a[scores={Timer=20..39},tag=!Animal] add Animal2

tag @a remove Animal
tag @a[scores={Hat=16}] add Animal

replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=16,HaveObjective=0},tag=Animal1] armor.head diamond_shovel{display:{Name:"Lion",Lore:["Hakuna Matata"]},Unbreakable:1,HideFlags:4,Damage:23} 1
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=16,HaveObjective=0},tag=Animal2] armor.head diamond_shovel{display:{Name:"Wolf",Lore:["Jhon Snow approuved"]},Unbreakable:1,HideFlags:4,Damage:26} 1

# 17 - Choixpeau
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=17,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Sorting Hat",Lore:["Gryffindor!"]},Unbreakable:1,HideFlags:4,Damage:15} 1

# 18 - Diable
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=18,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Devil Horn",Lore:["Deal with the Devil!"]},Unbreakable:1,HideFlags:4,Damage:8} 1

# 19 - Assassin
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=19,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Golden Hood",Lore:["You dont know, but you are... OWNED."]},Unbreakable:1,HideFlags:4,Damage:4} 1

# 20 - Citrouille
execute as @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=20,HaveObjective=0}] at @s run function hierarchy:easter-egg/hat/effects/citrouille
execute as @e[type=bat,scores={Timer=38..}] at @s run teleport @s ~ ~-100 ~

# 21 - Snowman
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=21,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Snowman Hat",Lore:["It feels so good!"]},Unbreakable:1,HideFlags:4,Damage:55} 1
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=21,HaveObjective=0,IsWalking=10..}] run particle poof ~ ~0.2 ~ 0.2 0 0.2 0 3

# 22 - Hagrid
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=22,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Hagrid beard",Lore:["You are a wizard Harry"]},Unbreakable:1,HideFlags:4,Damage:100} 1

# 23 - Big eyes
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=23,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Big Eyes",Lore:["I CAN SEE YOU!"]},Unbreakable:1,HideFlags:4,Damage:107} 1

# 24 - Renne
tag @a[tag=!Renne] remove Renne1
tag @a[tag=!Renne] remove Renne2
tag @a[scores={Timer=0..19},tag=!Renne] add Renne1
tag @a[scores={Timer=20..39},tag=!Renne] add Renne2

tag @a remove Renne
tag @a[scores={Hat=24}] add Renne

replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=24,HaveObjective=0},tag=Renne1] armor.head diamond_shovel{display:{Name:"Reindeer",Lore:["Rodolf is here"]},Unbreakable:1,HideFlags:4,Damage:54} 1
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=24,HaveObjective=0},tag=Renne2] armor.head diamond_shovel{display:{Name:"Deer",Lore:["Rodolf is here"]},Unbreakable:1,HideFlags:4,Damage:6} 1

# 25 - Peruvien
tag @a[tag=!Peruvian] remove Peruvian1
tag @a[tag=!Peruvian] remove Peruvian2
tag @a[tag=!Peruvian] remove Peruvian3
tag @a[tag=!Peruvian] remove Peruvian4
tag @a[scores={Timer=0..9},tag=!Peruvian] add Peruvian1
tag @a[scores={Timer=10..19},tag=!Peruvian] add Peruvian2
tag @a[scores={Timer=20..29},tag=!Peruvian] add Peruvian3
tag @a[scores={Timer=30..39},tag=!Peruvian] add Peruvian4

tag @a remove Peruvian
tag @a[scores={Hat=25}] add Peruvian

execute as @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=25,HaveObjective=0}] at @s run function hierarchy:easter-egg/hat/effects/peruvian

# 26 - Jack Sparrow
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=26,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Jack Sparrow Hat",Lore:["You're not making any sense at all"]},Unbreakable:1,HideFlags:4,Damage:46} 1

# 27 - Fez
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=27,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Fez",Lore:["Fez is cool."]},Unbreakable:1,HideFlags:4,Damage:47} 1

# 28 - Death
tag @a remove NoArmor
tag @a[scores={Hat=28}] add NoArmor
execute as @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=28,HaveObjective=0}] at @s run function hierarchy:easter-egg/hat/effects/death

# 29 - Couronne
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=29,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Crown",Lore:["King's dead! Glory to the King!"]},Unbreakable:1,HideFlags:4,Damage:112} 1

# 30 - Link
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=30,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Link Hat",Lore:["And not Zelda"]},Unbreakable:1,HideFlags:4,Damage:99} 1

# 31 - Storm Trooper
tag @a[tag=!StarWars] remove StarWars1
tag @a[tag=!StarWars] remove StarWars2
tag @a[scores={Timer=0..19},tag=!StarWars] add StarWars1
tag @a[scores={Timer=20..39},tag=!StarWars] add StarWars2

tag @a remove StarWars
tag @a[scores={Hat=31}] add StarWars

replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=31,HaveObjective=0},tag=StarWars1] armor.head diamond_shovel{display:{Name:"Storm Trooper Helmet",Lore:["IT'S A TRAP!"]},Unbreakable:1,HideFlags:4,Damage:87} 1
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=31,HaveObjective=0},tag=StarWars2] armor.head diamond_shovel{display:{Name:"Storm Trooper Helmet",Lore:["IT'S A TRAP!"]},Unbreakable:1,HideFlags:4,Damage:88} 1

# 32 - Slime
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=32,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Slime Hat",Lore:["Asilis & theogiraudet approved"]},Unbreakable:1,HideFlags:4,Damage:3} 1
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=32,HaveObjective=0,IsWalking=10..}] run particle item_slime ~ ~0.1 ~ 0.3 0 0.3 0 3

# 33 - Witch
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=33,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Witch Hat",Lore:["Are u a wizard?"]},Unbreakable:1,HideFlags:4,Damage:116} 1

# 34 - Slender
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=34,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Slender Head",Lore:["Boo"]},Unbreakable:1,HideFlags:4,Damage:117} 1
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=34,HaveObjective=0}] run particle mycelium ~ ~1 ~ 1 1 1 0 10

# 35 - Astronaut
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=35,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Astronaut",Lore:["Houston, we have a problem!"]},Unbreakable:1,HideFlags:4,Damage:13} 1
effect give @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=35,HaveObjective=0,InGame=..0}] jump_boost 1 3 true

# 36 - Hache
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=36,HaveObjective=0}] armor.head diamond_shovel{display:{Name:"Axe in head",Lore:["Oush"]},Unbreakable:1,HideFlags:4,Damage:1} 1

# 37 - Navi
execute as @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=37,HaveObjective=0}] at @s run function hierarchy:easter-egg/hat/effects/navi
