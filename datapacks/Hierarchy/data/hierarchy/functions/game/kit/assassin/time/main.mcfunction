#Items
replaceitem entity @a[gamemode=adventure,scores={Class=11,EffNoMove=..0,EffSilence=..0,InGame=1..,Mana=30..,Spell1=..0}] hotbar.1 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Shift yourself one second out of reality,\"}","{\"text\":\" making you invisible and improving your speed of movement.\"}","{\"text\":\"\"}","{\"text\":\"When you hit an enemy, you are forced to rephasize yourself,\"}","{\"text\":\" which makes you visible again.\"}"],Name:"{\"text\":\"Phase Shift  30✸  25s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=11,EffSilence=..0,InGame=1..,Mana=40..,Spell2=..0}] hotbar.2 splash_potion{Potion:slowness,Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Draw the energy of your youth to use it against enemies.\"}","{\"text\":\"\"}","{\"text\":\"You gain in power for a period of 8 seconds.\"}"],Name:"{\"text\":\"Temporal Energy  40✸  30s\",\"color\":\"yellow\"}"},HideFlags:63} 1
tag @a[scores={Class=11}] remove InRangeSpell3
execute as @a[tag=AffectByBlue] at @s run tag @a[scores={Class=11},tag=AffectByOrange,distance=..15] add InRangeSpell3
execute as @a[tag=AffectByOrange] at @s run tag @a[scores={Class=11},tag=AffectByBlue,distance=..15] add InRangeSpell3
replaceitem entity @a[gamemode=adventure,scores={Class=11,EffSilence=..0,InGame=1..,Mana=70..,Spell3=..0},tag=InRangeSpell3] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Make 5 jumps in the timeline\"}","{\"text\":\" of nearby enemies, inflicting damage\"}","{\"text\":\" on them and remaining on the last enemy hit.\"}","{\"text\":\"\"}","{\"text\":\"If there is only one enemy in the vicinity,\"}","{\"text\":\" the damage is doubled.\"}"],Name:"{\"text\":\"Temporal Line  70✸  50s\",\"color\":\"red\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=11,EffSilence=..0,InGame=1..,Mana=70..,Spell3=..0},tag=!InRangeSpell3] hotbar.3 barrier{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Make 5 jumps in the timeline\"}","{\"text\":\" of nearby enemies, inflicting damage\"}","{\"text\":\" on them and remaining on the last enemy hit.\"}","{\"text\":\"\"}","{\"text\":\"If there is only one enemy in the vicinity,\"}","{\"text\":\" the damage is doubled.\"}"],Name:"{\"text\":\"Temporal Line  70✸  50s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=11,EffSilence=..0,InGame=1..,Mana=..29,Spell1=0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=11,UseFishing=2}] Mana 30
replaceitem entity @a[gamemode=adventure,scores={Class=11,EffSilence=..0,InGame=1..,Mana=..39,Spell2=0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=11,UsePotion=2}] Mana 40
replaceitem entity @a[gamemode=adventure,scores={Class=11,EffSilence=..0,InGame=1..,Mana=..69,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=11,UseXp=2}] Mana 70

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=11,InGame=1..,UseFishing=2}] Spell1 500
scoreboard players set @a[gamemode=adventure,scores={Class=11,InGame=1..,UsePotion=2}] Spell2 600
scoreboard players set @a[gamemode=adventure,scores={Class=11,InGame=1..,UseXp=2}] Spell3 1000

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=11,EffNoMove=1..,InGame=1..,Spell1=..0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1

#Weapon upgrade
replaceitem entity @a[gamemode=adventure,scores={Class=11,EffSilencePrim=..0,InGame=1..,UpgradedWeapon=1..}] hotbar.0 diamond_sword{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:12s}],display:{Lore:['{"text":"___"}'],Name:"{\"text\":\"Basic Attack UPGRADED  0✸  0s\",\"color\":\"aqua\"}"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:2,UUID:[I;1060973598,1016629095,1057302382,1683534071]}]} 1

#Spell 1
execute as @r[scores={Class=11,Spell1=300..}] at @s run function hierarchy:game/kit/assassin/time/spell1

#Spell 2
execute as @r[scores={Class=11,Spell2=599..}] at @s run function hierarchy:game/kit/assassin/time/spell2
execute as @a[scores={Class=11,UpgradedWeapon=1..}] at @s run particle witch ~ ~1 ~ 5 5 5 0 3 force
execute as @a[scores={Class=11,UpgradedWeapon=1..}] at @s run particle minecraft:mycelium ~ ~1 ~ 2 2 2 0 3 force

#Spell 3
execute as @r[scores={Class=11,Spell3=990..}] at @s run function hierarchy:game/kit/assassin/time/spell3
execute as @e[tag=AT3G-item] at @s run tp @s ~ ~-0.2 ~
