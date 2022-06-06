#Items
replaceitem entity @a[gamemode=adventure,scores={Class=16,EffNoTp=..0,EffSilence=..0,InGame=1..,Mana=20..,Spell1=..0}] hotbar.1 ender_pearl{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Transform yourself and your close allies\"}","{\"text\":\" into a cloud of bats and beam\"}","{\"text\":\" out while being invisible for 3 seconds.\"}"],Name:"{\"text\":\"Volatile  20✸  30s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=16,EffSilence=..0,InGame=1..,Mana=40..,Spell2=..0}] hotbar.2 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Summon two skeleton guards with high speed,\"}","{\"text\":\" good resistance, and inflicting a lot of damage\"}","{\"text\":\" to the hand-to-hand combat.\"}"],Name:"{\"text\":\"Necro Guards  40✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=16,EffNoMove=..0,EffSilence=..0,InGame=1..,Mana=150..,Spell3=0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Jump and glide through the air.\"}","{\"text\":\"The moment you hit the ground, you terrorize\"}","{\"text\":\" the enemies by inflicting damage on them.\"}","{\"text\":\"\"}","{\"text\":\"Enemies with less than 16 life points are executed\"}","{\"text\":\" (regardless of their protection)\"}"],Name:"{\"text\":\"Night Scare  150✸  120s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=16,EffSilence=..0,InGame=1..,Mana=..19,Spell1=0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=16,UseTp=2}] Mana 20
replaceitem entity @a[gamemode=adventure,scores={Class=16,EffSilence=..0,InGame=1..,Mana=..39,Spell2=0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=16,UseFishing=2}] Mana 40
replaceitem entity @a[gamemode=adventure,scores={Class=16,EffSilence=..0,InGame=1..,Mana=..149,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=16,UseXp=2}] Mana 150

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=16,InGame=1..,UseTp=2}] Spell1 600
scoreboard players set @a[gamemode=adventure,scores={Class=16,InGame=1..,UseFishing=2}] Spell2 400
scoreboard players set @a[gamemode=adventure,scores={Class=16,InGame=1..,UseXp=2}] Spell3 -1000

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=16,EffNoTp=1..,InGame=1..,Spell1=..0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1
replaceitem entity @a[gamemode=adventure,scores={Class=16,EffNoMove=1..,InGame=1..,Spell3=0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1

#Spell 1
execute as @r[scores={Class=16,Spell1=592..}] at @s run function hierarchy:game/kit/assassin/invoker/spell1

#Spell 2
effect give @e[tag=162G] speed 1 2 true
scoreboard players set @e[scores={Timer=0..},tag=162G] Timer -1

execute as @r[scores={Class=16,Spell2=399..}] at @s run function hierarchy:game/kit/assassin/invoker/spell2

execute as @e[type=wither_skeleton,tag=162R] at @s run scoreboard players operation @a[gamemode=adventure,team=Blue,scores={InGame=1..},distance=..2] TouchID = @s ID
execute as @e[type=wither_skeleton,tag=162B] at @s run scoreboard players operation @a[gamemode=adventure,team=Orange,scores={InGame=1..},distance=..2] TouchID = @s ID

#Spell 3
execute as @r[scores={Class=16,Spell3=..-1}] at @s run function hierarchy:game/kit/assassin/invoker/spell3


