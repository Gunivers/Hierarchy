execute as @a[team=Blue,scores={Class=13,Spell3=1199}] at @s run scoreboard players set @a[tag=AffectByBlue,distance=..7] AT3G 140
tag @a remove 133B
tag @a[scores={AT3G=1..},tag=AffectByBlue] add 133B
execute as @a[team=Blue,scores={Class=13,Spell3=1060..1200}] at @s run tag @a[scores={AT3G=1..},tag=AffectByBlue,distance=..9] remove 133B
execute at @a[tag=133B] run particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute as @a[team=Blue,scores={Class=13,Spell3=1060..1200}] at @s run teleport @a[scores={Timer=0..9},tag=133B,distance=..15] ~2 ~ ~
execute as @a[team=Blue,scores={Class=13,Spell3=1060..1200}] at @s run teleport @a[scores={Timer=10..19},tag=133B,distance=..15] ~ ~ ~2
execute as @a[team=Blue,scores={Class=13,Spell3=1060..1200}] at @s run teleport @a[scores={Timer=20..29},tag=133B,distance=..15] ~-2 ~ ~
execute as @a[team=Blue,scores={Class=13,Spell3=1060..1200}] at @s run teleport @a[scores={Timer=30..39},tag=133B,distance=..15] ~ ~ ~-2
execute at @a[tag=133B] run particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute as @a[tag=133B] at @s run playsound entity.enderman.teleport ambient @a[distance=..15]
tag @a[team=Orange,scores={AT3G=1..}] add 133B2
execute as @a[team=Blue,scores={Class=13,Spell3=1060..1200}] run tag @a[scores={AT3G=1..},tag=AffectByBlue] remove 133B2
scoreboard players set @a[tag=133B2] AT3G 0
tag @a remove 133B2
scoreboard players remove @a[scores={AT3G=1..}] AT3G 1
effect give @a[scores={AT3G=61..}] blindness 3 0 true
effect give @a[scores={AT3G=21..}] glowing 1 0 true
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=13,Spell3=1060..1200}] run particle cloud ~ ~-0.4 ~ 3 0 3 0 10 force
effect give @a[scores={Class=13,Spell3=1080..1200}] glowing 1 0 true
effect give @a[scores={AT3G=21..}] slowness 1 1 true
scoreboard players set @a[scores={Class=13,Spell3=1060..1200}] UpgradedWeapon 2
execute at @a[scores={Class=13,Spell3=1060..1200}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 2 0.1 2 0 5 force
execute as @a[team=Orange,scores={Class=13,Spell3=1199}] at @s run scoreboard players set @a[tag=AffectByOrange,distance=..7] AT3G 139
tag @a remove 133O
tag @a[scores={AT3G=1..},tag=AffectByOrange] add 133O
execute as @a[team=Orange,scores={Class=13,Spell3=1060..1200}] at @s run tag @a[scores={AT3G=1..},tag=AffectByOrange,distance=..9] remove 133O
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[tag=133O] run particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute as @a[team=Orange,scores={Class=13,Spell3=1060..1200}] at @s run teleport @a[scores={Timer=0..9},tag=133O,distance=..15] ~2 ~ ~
execute as @a[team=Orange,scores={Class=13,Spell3=1060..1200}] at @s run teleport @a[scores={Timer=10..19},tag=133O,distance=..15] ~ ~ ~2
execute as @a[team=Orange,scores={Class=13,Spell3=1060..1200}] at @s run teleport @a[scores={Timer=20..29},tag=133O,distance=..15] ~-2 ~ ~
execute as @a[team=Orange,scores={Class=13,Spell3=1060..1200}] at @s run teleport @a[scores={Timer=30..39},tag=133O,distance=..15] ~ ~ ~-2
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[tag=133O] run particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute as @a[tag=133O] at @s run playsound entity.enderman.teleport ambient @a[distance=..15]
tag @a[team=Blue,scores={AT3G=1..}] add 133O2
execute as @a[team=Orange,scores={Class=13,Spell3=1060..1200}] run tag @a[scores={AT3G=1..},tag=AffectByOrange] remove 133O2
scoreboard players set @a[tag=133O2] AT3G 0
tag @a remove 133O2
execute as @a[gamemode=adventure,scores={Class=13,InGame=1..,Spell3=1199}] at @s run playsound entity.lightning_bolt.thunder record @a[distance=..30] ~ ~ ~ 2 0.5 1


execute as @a[scores={AT3G=139}] at @s run particle sweep_attack ~ ~1 ~ 0.3 1 0.3 0 10
execute as @a[scores={AT3G=139}] at @s run playsound minecraft:block.barrel.close master @a[distance=..30] ~ ~ ~ 2 2 1