#Items
replaceitem entity @a[gamemode=adventure,scores={Class=33,EffSilence=..0,InGame=1..,Mana=20..,Spell1=..0}] hotbar.1 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Create an electromagnetic field destroying"}','{"text":"all enemy projectiles and preventing them from"}','{"text":"teleporting or moving faster in this area. Allies"}','{"text":"receive 40% protection. This field lasts 5 seconds"}','{"text":"and slightly poisons enemies."}'],Name:"{\"text\":\"Magnetic Zone  20✸  10s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=33,EffNoTp=..0,EffSilence=..0,InGame=1..,Mana=30..,Spell2=..0}] hotbar.2 ender_pearl{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Transforms the matter that composes it into"}','{"text":"pure energy and recomposes itself in the"}','{"text":"place it wishes. Enemies near the starting point"}','{"text":"as well as the end point then receive damage."}'],Name:"{\"text\":\"Tesla Transportation  30✸  20s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=33,EffSilence=..0,InGame=1..,Mana=70..,Spell3=..0}] hotbar.3 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"As it progresses, it charges the air and"}','{"text":"ground it touches with electricity. When"}','{"text":"using this skill, these areas are targeted by 3"}','{"text":"flashes of lightning falling 1 second apart."}'],Name:"{\"text\":\"Overload  70✸  70s\",\"color\":\"red\"}"},HideFlags:63} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=33,EffSilence=..0,InGame=1..,Mana=..19,Spell1=0}] hotbar.1 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=33,UseFishing=2}] Mana 20
replaceitem entity @a[gamemode=adventure,scores={Class=33,EffSilence=..0,InGame=1..,Mana=..29,Spell2=0}] hotbar.2 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=33,UseTp=2}] Mana 30
replaceitem entity @a[gamemode=adventure,scores={Class=33,EffSilence=..0,InGame=1..,Mana=..69,Spell3=0}] hotbar.3 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=33,UseXp=2}] Mana 70

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=33,InGame=1..,UseFishing=2}] Spell1 200
scoreboard players set @a[gamemode=adventure,scores={Class=33,InGame=1..,UseTp=2}] Spell2 400
scoreboard players set @a[gamemode=adventure,scores={Class=33,InGame=1..,UseXp=2}] Spell3 1400

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=33,EffNoTp=1..,InGame=1..,Spell2=..0}] hotbar.2 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1


#Spell1
execute if entity @e[tag=331G] run function hierarchy:game/kit/guardian/thunder/spell1
execute as @a[scores={Class=33,Spell1=199}] at @s run function hierarchy:game/kit/guardian/thunder/spell1bis

#Spell2
execute as @a[scores={Class=33,UseTp=2},tag=IsPlaying] at @s run function hierarchy:game/kit/guardian/thunder/spell2
execute as @e[type=armor_stand,scores={ParticleClass=3,Timer=37..},tag=EnderPearl] at @s run function hierarchy:game/kit/guardian/thunder/spell2bis

#Spell3
execute if entity @a[gamemode=adventure,scores={Class=33,InGame=1..,Spell3=..200,Timer=1..31}] run function hierarchy:game/kit/guardian/thunder/spell3
execute if entity @a[scores={Class=33,Spell3=1359..1399},tag=IsPlaying] run function hierarchy:game/kit/guardian/thunder/spell3bis
execute as @e[type=armor_stand,tag=333B] at @s run particle crit ~ ~0 ~ 0 0 0 0.1 1 force @a[team=Blue]
execute as @a[team=Blue,scores={Class=33,Spell3=1359},tag=IsPlaying] at @s run kill @e[type=armor_stand,tag=333B,limit=20,sort=nearest]
execute as @a[team=Orange,scores={Class=33,Spell3=1359},tag=IsPlaying] at @s run kill @e[type=armor_stand,tag=333R,limit=20,sort=nearest]
execute as @e[type=armor_stand,tag=333R] at @s run particle crit ~ ~0 ~ 0 0 0 0.1 1 force @a[team=Orange]
scoreboard players set @e[type=armor_stand,scores={Timer=0..},tag=333G] Timer -1





