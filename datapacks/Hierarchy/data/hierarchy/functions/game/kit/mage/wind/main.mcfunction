#Items
replaceitem entity @a[gamemode=adventure,scores={Class=5,EffNoTp=..0,EffSilence=..0,InGame=1..,Mana=25..,Spell1=..0}] hotbar.1 ender_pearl{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Dash by creating powerful drafts that propel enemies"}','{"text":"around him into the air."}','{"text":"The enemies then receive fall damage."}'],Name:"{\"text\":\"Turbulence  60✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=5,EffSilence=..0,InGame=1..,Mana=30..,Spell2=..0}] hotbar.2 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Uses the wind to relieve injuries to himself"}','{"text":"and his close allies."}'],Name:"{\"text\":\"Wind Care  30✸  25s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=5,EffSilence=..0,InGame=1..,Mana=60..,Spell3=..0}] hotbar.3 carrot_on_a_stick{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create a tornado in front of it inflicting slight damage,"}','{"text":"and carrying enemies nearby to the end of it."}','{"text":"Close allies gain an additional speed of movement"}','{"text":"and as an improved jumping ability."}'],Name:"{\"text\":\"Tornado  25✸  40s\",\"color\":\"red\"}"},HideFlags:63} 1
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_1,limit=1,sort=nearest] at @s run scoreboard players set @a[tag=InGame] Spell2 15
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_1,limit=1,sort=nearest] at @s run scoreboard players set @a[tag=InGame] Mana 300

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=5,EffSilence=..0,InGame=1..,Mana=..59,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=5,UseCarrot=2}] Mana 60
replaceitem entity @a[gamemode=adventure,scores={Class=5,EffSilence=..0,InGame=1..,Mana=..29,Spell2=0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=5,UseFishing=2}] Mana 30
replaceitem entity @a[gamemode=adventure,scores={Class=5,EffNoTp=..0,EffSilence=..0,InGame=1..,Mana=..24,Spell1=0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=5,UseTp=2}] Mana 25

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=5,InGame=1..,UseTp=2}] Spell1 300
scoreboard players set @a[gamemode=adventure,scores={Class=5,InGame=1..,UseFishing=2}] Spell2 500
scoreboard players set @a[gamemode=adventure,scores={Class=5,InGame=1..,UseCarrot=2}] Spell3 800

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=5,EffNoTp=1..,InGame=1..,Spell1=..0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1

#Spell1
execute as @r[gamemode=adventure,scores={Class=5,InGame=1..,Spell1=298..}] at @s run function hierarchy:game/kit/mage/wind/spell1

#Spell 2
execute as @r[gamemode=adventure,scores={Class=5,InGame=1..,Spell2=499}] at @s run function hierarchy:game/kit/mage/wind/spell2

#Spell 3
tag @e[type=armor_stand,scores={Class=-5},tag=!Mage] add MW3G
tag @e[type=armor_stand,scores={Class=5},tag=!Mage] add MW3G
execute as @e[limit=1,sort=random,type=armor_stand,tag=MW3G] at @s run function hierarchy:game/kit/mage/wind/spell3

