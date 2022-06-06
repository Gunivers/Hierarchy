execute as @a[team=Blue,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players set @e[scores={EffPoison=..1002},tag=AffectByBlue,distance=..10] EffPoison 1002
execute as @a[team=Blue,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players set @e[scores={EffSlow=..1002},tag=AffectByBlue,distance=..10] EffSlow 1002
execute as @a[team=Blue,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players operation @e[tag=AffectByBlue,distance=..10] TouchID = @s ID
execute as @a[team=Blue,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players set @e[team=Blue,scores={EffResistance=..2002},tag=IsPlaying,distance=..10] EffResistance 2002
execute as @a[team=Blue,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players set @e[scores={Timer=1},tag=AffectByBlue,distance=..10] EffDamage 2
execute as @a[team=Blue,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players set @e[scores={Timer=21},tag=AffectByBlue,distance=..10] EffDamage 2
execute at @e[type=armor_stand,scores={Timer=-170..},tag=313G] run particle witch ~ ~0.3 ~ 5 0.5 5 0 10 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,scores={Timer=-170..},tag=313G] run particle enchant ~ ~2.3 ~ 0 0 0 10 100
kill @e[type=armor_stand,scores={Timer=9..},tag=GT3GKill]
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,scores={Timer=-180..,Timer05=1},tag=313G] run summon armor_stand ~ ~0.2 ~ {NoGravity:1,Small:1,Marker:1,Invisible:1,Tags:["GT3GKill"],ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",tag:{Damage:7},Count:1b}]}
execute as @a[scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run playsound minecraft:entity.ender_dragon.growl record @a[distance=..30] ~ ~ ~ 0.4 0.5 0.1
execute at @a[scores={Class=31,Spell3=1399},tag=IsPlaying] run summon armor_stand ~ ~ ~ {Tags:["313G"],NoGravity:1,Marker:1,Invisible:1}
execute as @a[scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players set @e[type=armor_stand,scores={Timer=0..},tag=313G,limit=1,sort=nearest] Timer -60
execute as @a[scores={Class=31,Spell3=1399},tag=IsPlaying] at @s run teleport @e[type=armor_stand,tag=313G,limit=1,sort=nearest] @p[distance=..1]

effect clear @a[scores={Class=31,Spell3=1270..1271},tag=IsPlaying] levitation
effect give @a[scores={Class=31,Spell3=1290..1399},tag=IsPlaying] levitation 1 255 true
effect give @a[scores={Class=31,Spell3=1272..1289},tag=IsPlaying] levitation 1 0 true
tag @a[scores={Class=31,Spell3=1285..1399},tag=IsPlaying] add NoFall
scoreboard players set @a[scores={Class=31,EffInvisibility=..2,Spell3=1270..1399},tag=IsPlaying] EffInvisibility 2

execute as @a[scores={Class=31,Spell3=1260..1399,Timer05=1},tag=IsPlaying] at @e[type=armor_stand,tag=313G,limit=1,sort=nearest] run tp @s ~ ~ ~
scoreboard players set @a[scores={Class=31,EffSilence=..2,Spell3=1260..},tag=IsPlaying] EffSilence 2
scoreboard players set @a[scores={Class=31,EffSilencePrim=..3,Spell3=1260..},tag=IsPlaying] EffSilencePrim 3
execute as @a[team=Orange,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players set @e[scores={EffPoison=..1002},tag=AffectByOrange,distance=..10] EffPoison 1002
execute as @a[team=Orange,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players set @e[scores={EffSlow=..1002},tag=AffectByOrange,distance=..10] EffSlow 1002
execute as @a[team=Orange,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players operation @e[tag=AffectByOrange,distance=..10] TouchID = @s ID
execute as @a[team=Orange,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players set @e[team=Orange,scores={EffResistance=..2002},tag=IsPlaying,distance=..10] EffResistance 2002
execute as @a[team=Orange,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players set @e[scores={Timer=1},tag=AffectByOrange,distance=..10] EffDamage 2
execute as @a[team=Orange,scores={Class=31,Spell3=1260..},tag=IsPlaying] at @s run scoreboard players set @e[scores={Timer=21},tag=AffectByOrange,distance=..10] EffDamage 2
