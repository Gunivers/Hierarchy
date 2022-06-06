#Items
replaceitem entity @a[gamemode=adventure,scores={Class=15,EffNoMove=..0,EffSilence=..0,InGame=1..,Mana=20..,Spell1=..0}] hotbar.1 splash_potion{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Help yourself from the wind to increase your\"}","{\"text\":\" travel speed and jumping ability for 7 seconds.\"}"],Name:"{\"text\":\"Wind Assistance  20✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1

tag @a[scores={Class=15}] remove InRangeSpell2
execute as @a[tag=AffectByBlue] at @s run tag @a[scores={Class=15},tag=AffectByOrange,distance=..7] add InRangeSpell2
execute as @a[tag=AffectByOrange] at @s run tag @a[scores={Class=15},tag=AffectByBlue,distance=..7] add InRangeSpell2
replaceitem entity @a[gamemode=adventure,scores={Class=15,EffSilence=..0,InGame=1..,Mana=30..,Spell2=..0},tag=InRangeSpell2] hotbar.2 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Disrupt the wind around you, inflicting damage\"}","{\"text\":\" and frightening nearby enemies.\"}"],Name:"{\"text\":\"Disturbance  30✸  25s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=15,EffSilence=..0,InGame=1..,Mana=30..,Spell2=..0},tag=!InRangeSpell2] hotbar.2 barrier{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Disrupt the wind around you, inflicting damage\"}","{\"text\":\" and frightening nearby enemies.\"}"],Name:"{\"text\":\"Disturbance  30✸  25s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=15,EffSilence=..0,InGame=1..,Mana=120..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Create a cyclone in which you and the enemies\"}","{\"text\":\" within a radius of 15 blocks are sucked up\"}","{\"text\":\" and randomly dispersed on the map.\"}","{\"text\":\"\"}","{\"text\":\"Affected enemies suffer fall damage.\"}"],Name:"{\"text\":\"Cyclone  120✸  60s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=15,EffSilence=..0,InGame=1..,Mana=..19,Spell1=0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=15,UsePotion=2}] Mana 20
replaceitem entity @a[gamemode=adventure,scores={Class=15,EffSilence=..0,InGame=1..,Mana=..29,Spell2=0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=15,UseFishing=2}] Mana 30
replaceitem entity @a[gamemode=adventure,scores={Class=15,EffSilence=..0,InGame=1..,Mana=..119,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=15,UseXp=2}] Mana 120

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=15,InGame=1..,UsePotion=2}] Spell1 400
scoreboard players set @a[gamemode=adventure,scores={Class=15,InGame=1..,UseFishing=2}] Spell2 500
scoreboard players set @a[gamemode=adventure,scores={Class=15,InGame=1..,UseXp=2}] Spell3 1200

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=15,EffNoMove=1..,InGame=1..,Spell1=..0}] hotbar.1 barrier{display:{Name:"Don't Move!"}} 1

#Weapon Updgrade
replaceitem entity @a[gamemode=adventure,scores={Class=15,EffSilencePrim=..0,InGame=1..,UpgradedWeapon=1..}] hotbar.0 wooden_sword{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:8},{id:"minecraft:knockback",lvl:3}],display:{Lore:['{"text":"___"}'],Name:"{\"text\":\"Basic Attack UPGRADED  0✸  0s\",\"color\":\"aqua\"}"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:2,UUID:[I;1060973598,1016629095,1057302382,1683534071]}]} 1

#Spell 1
execute as @r[scores={Class=15,Spell1=300..}] at @s run function hierarchy:game/kit/assassin/wind/spell1

#Spell 2
execute as @r[scores={Class=15,Spell2=499..}] at @s run function hierarchy:game/kit/assassin/wind/spell2

#Spell 3
execute as @r[scores={Class=15,Spell3=1170..}] at @s run function hierarchy:game/kit/assassin/wind/spell3
