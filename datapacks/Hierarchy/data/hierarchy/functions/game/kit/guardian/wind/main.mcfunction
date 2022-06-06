#Items
replaceitem entity @a[gamemode=adventure,scores={Class=35,EffSilence=..0,InGame=1..,Mana=20..,Spell1=..0}] hotbar.1 carrot_on_a_stick{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create a sand-laden wind going"}','{"text":"through the walls, frightening, blinding"}','{"text":"and damaging the affected enemies."}'],Name:"{\"text\":\"Desert Breath  20✸  25s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=35,EffNoTp=..0,EffSilence=..0,InGame=1..,Mana=30..,Spell2=..0}] hotbar.2 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Accumulates air close to him, curing close allies"}','{"text":"(but not him), then relies on the condensed area to"}','{"text":"accelerate sharply. All the enemies he hits receive"}','{"text":"damage and are trained with him in his sprint."}'],Name:"{\"text\":\"Air Crushion  30✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=35,EffSilence=..0,InGame=1..,Mana=70..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Makes a good in the air, helped by the wind and then"}','{"text":"falls back down creating a shock wave. Enemies near"}','{"text":"the point of impact receive slight damage and are"}','{"text":"frightened and deprived of their spells for 2 seconds."}'],Name:"{\"text\":\"Angel Jumping  70✸  70s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=35,EffSilence=..0,InGame=1..,Mana=..19,Spell1=0}] hotbar.1 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=35,UseCarrot=2}] Mana 20
replaceitem entity @a[gamemode=adventure,scores={Class=35,EffSilence=..0,InGame=1..,Mana=..29,Spell2=0}] hotbar.2 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=35,UseFishing=2}] Mana 30
replaceitem entity @a[gamemode=adventure,scores={Class=35,EffSilence=..0,InGame=1..,Mana=..69,Spell3=0}] hotbar.3 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=35,UseXp=2}] Mana 70

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=35,InGame=1..,UseCarrot=2}] Spell1 500
scoreboard players set @a[gamemode=adventure,scores={Class=35,InGame=1..,UseFishing=2}] Spell2 400
scoreboard players set @a[gamemode=adventure,scores={Class=35,InGame=1..,UseXp=2}] Spell3 1400

#Spell1
execute if entity @e[type=armor_stand,scores={Class=-35}] run function hierarchy:game/kit/guardian/wind/spell1
execute if entity @e[type=armor_stand,scores={Class=35}] run function hierarchy:game/kit/guardian/wind/spell1bis

#Spell2
execute as @a[scores={Class=35,Spell2=370..},tag=IsPlaying] at @s run function hierarchy:game/kit/guardian/wind/spell2

#Spell3
effect give @e[scores={Class=35,Spell3=1399},tag=IsPlaying] levitation 1 127 true
tag @e[scores={Class=35,Spell3=1375..1400},tag=IsPlaying] add NoFall
effect clear @e[scores={Class=35,Spell3=1396},tag=IsPlaying] levitation
effect give @e[scores={Class=35,Spell3=1380},tag=IsPlaying] levitation 1 128 true
effect clear @e[scores={Class=35,Spell3=1375},tag=IsPlaying] levitation
tag @a[scores={Class=35,Spell3=1380},tag=IsPlaying] add 353G
scoreboard players set @e[scores={Class=35,Spell3=1380},tag=IsPlaying] EffInvulnerable 20
execute as @a[scores={Class=35,InGame=1..,LifeState=400..,Spell3=1399}] at @s run playsound entity.enderdragon.flap record @a[distance=..30] ~ ~ ~ 2 1 1

execute as @a[scores={Class=35,InGame=1..,IsWalking=1..,LifeState=400..,Spell3=..1380},tag=353G] at @s run function hierarchy:game/kit/guardian/wind/spell3

tag @e[team=Orange,scores={Class=35,InGame=1..,IsWalking=1..,LifeState=400..}] remove 353G
tag @e[team=Blue,scores={Class=35,InGame=1..,IsWalking=1..,LifeState=400..}] remove 353G





