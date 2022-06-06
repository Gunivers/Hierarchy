execute at @e[type=silverfish,tag=133G] run particle effect ~ ~ ~7 4 2 0 0 20
execute at @e[type=silverfish,tag=133G] run particle effect ~7 ~ ~ 0 2 4 0 20
execute at @e[type=silverfish,tag=133G] run particle effect ~ ~ ~-7 4 2 0 0 20
execute at @e[type=silverfish,tag=133G] run particle effect ~-7 ~ ~ 0 2 4 0 20
#Items
replaceitem entity @a[gamemode=adventure,scores={Class=13,EffSilence=..0,InGame=1..,Mana=30..,Spell1=..0}] hotbar.1 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Drop lightning close to you, inflicting damage\"}","{\"text\":\" on nearby enemies and giving 2 seconds invulnerability\"}","{\"text\":\" to nearby allies.\"}"],Name:"{\"text\":\"Thunder Bolt  30✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=13,EffSilence=..0,InGame=1..,Mana=50..,Spell2=..0}] hotbar.2 carrot_on_a_stick{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Launch an electromagnetic cloud attracting\"}","{\"text\":\" affected enemies to you.\"}"],Name:"{\"text\":\"Static  50✸  25s\",\"color\":\"yellow\"}"},HideFlags:63} 1

tag @a[scores={Class=11..13}] remove InRangeSpell3
execute as @a[tag=AffectByBlue] at @s run tag @a[scores={Class=13},tag=AffectByOrange,distance=..7] add InRangeSpell3
execute as @a[tag=AffectByOrange] at @s run tag @a[scores={Class=13},tag=AffectByBlue,distance=..7] add InRangeSpell3
replaceitem entity @a[gamemode=adventure,scores={Class=13,EffSilence=..0,InGame=1..,Mana=90..,Spell3=..0},tag=InRangeSpell3] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Create a static electricity zone\"}","{\"text\":\" that traps enemies inside for 7 seconds.\"}","{\"text\":\"\"}","{\"text\":\"Meanwhile, your power is increased,\"}","{\"text\":\" enemies are blinded and prohibited from using their\"}","{\"text\":\" skills to improve their movement.\"}"],Name:"{\"text\":\"Electron  90✸  60s\",\"color\":\"red\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=13,EffSilence=..0,InGame=1..,Mana=90..,Spell3=..0},tag=!InRangeSpell3] hotbar.3 barrier{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Create a static electricity zone\"}","{\"text\":\" that traps enemies inside for 7 seconds.\"}","{\"text\":\"\"}","{\"text\":\"Meanwhile, your power is increased,\"}","{\"text\":\" enemies are blinded and prohibited from using their\"}","{\"text\":\" skills to improve their movement.\"}"],Name:"{\"text\":\"Electron  90✸  60s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=13,EffSilence=..0,InGame=1..,Mana=..29,Spell1=0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=13,UseFishing=2}] Mana 30
replaceitem entity @a[gamemode=adventure,scores={Class=13,EffSilence=..0,InGame=1..,Mana=..49,Spell2=0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=13,UseCarrot=2}] Mana 50
replaceitem entity @a[gamemode=adventure,scores={Class=13,EffSilence=..0,InGame=1..,Mana=..89,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=13,UseXp=2}] Mana 90

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=13,InGame=1..,UseFishing=2}] Spell1 400
scoreboard players set @a[gamemode=adventure,scores={Class=13,InGame=1..,UseCarrot=2}] Spell2 500
scoreboard players set @a[gamemode=adventure,scores={Class=13,InGame=1..,UseXp=2}] Spell3 1200

#Weapon upgrade
replaceitem entity @a[gamemode=adventure,scores={Class=13,EffSilencePrim=..0,InGame=1..,UpgradedWeapon=1..}] hotbar.0 diamond_sword{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:13s}],display:{Lore:['{"text":"___"}'],Name:"{\"text\":\"Basic Attack UPGRADED  0✸  0s\",\"color\":\"aqua\"}"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:2,UUID:[I;1060973598,1016629095,1057302382,1683534071]}]} 1

#Spell 1
execute as @r[scores={Class=13,Spell1=382..}] at @s run function hierarchy:game/kit/assassin/thunder/spell1

#Spell 2
tag @e[type=armor_stand,scores={Class=13}] add AT2G
tag @e[type=armor_stand,scores={Class=-13}] add AT2G

scoreboard players set @e[type=armor_stand,tag=AT2G,scores={Timer=1}] VectorSpeed 2000
execute as @e[type=armor_stand,tag=AT2G,limit=1,sort=nearest] at @s run function hierarchy:game/kit/assassin/thunder/spell2


#Spell 3
execute as @r[scores={Class=13,Spell3=1060..}] at @s run function hierarchy:game/kit/assassin/thunder/spell3
scoreboard players set @a[gamemode=adventure,scores={Class=13,InGame=1..,LifeState=..10,Spell3=1060..}] Spell3 1060
