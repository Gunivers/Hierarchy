execute as @e[type=armor_stand,tag=MT1G,scores={Class=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",tag:{Damage:7},Count:1b}],HandItems:[{},{}]}
execute as @e[type=armor_stand,tag=MT1G,scores={Class=-1}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",tag:{Damage:7},Count:1b}],HandItems:[{},{}]}

execute as @e[type=armor_stand,tag=MT1G,scores={Class=1,Timer=1}] run tp @s ~ ~-1.7 ~
execute as @e[type=armor_stand,tag=MT1G,scores={Class=-1,Timer=1}] run tp @s ~ ~-1.7 ~


execute as @e[type=armor_stand,tag=MT1G,scores={Class=-1}] at @s positioned ~ ~1.7 ~ at @e[scores={EffDamage=..1},tag=AffectByBlue,distance=..4] run particle minecraft:witch ~ ~1 ~ 0.4 0.7 0.4 0 50 force
execute as @e[type=armor_stand,tag=MT1G,scores={Class=1}] at @s positioned ~ ~1.7 ~ at @e[scores={EffDamage=..1},tag=AffectByOrange,distance=..4] run particle minecraft:witch ~ ~1 ~ 0.4 0.7 0.4 0 50 force
execute as @e[type=armor_stand,tag=MT1G,scores={Class=-1}] at @s positioned ~ ~1.7 ~ at @e[scores={EffDamage=..1},tag=AffectByBlue,distance=..4] run playsound minecraft:entity.bat.hurt record @a[distance=..30] ~ ~ ~ 1 2 1
execute as @e[type=armor_stand,tag=MT1G,scores={Class=1}] at @s positioned ~ ~1.7 ~ at @e[scores={EffDamage=..1},tag=AffectByOrange,distance=..4] run playsound minecraft:entity.bat.hurt record @a[distance=..30] ~ ~ ~ 1 2 1
execute as @e[type=armor_stand,tag=MT1G,scores={Class=-1}] at @s positioned ~ ~1.7 ~ run scoreboard players set @e[scores={EffDamage=..3},tag=AffectByBlue,distance=..4] EffDamage 3
execute as @e[type=armor_stand,tag=MT1G,scores={Class=1}] at @s positioned ~ ~1.7 ~ run scoreboard players set @e[scores={EffDamage=..3},tag=AffectByOrange,distance=..4] EffDamage 3
execute as @e[type=armor_stand,tag=MT1G,scores={Class=-1}] at @s positioned ~ ~1.7 ~ run scoreboard players operation @e[team=!Blue,distance=..4] TouchID = @s ID
execute as @e[type=armor_stand,tag=MT1G,scores={Class=1}] at @s positioned ~ ~1.7 ~ run scoreboard players operation @e[team=!Orange,distance=..4] TouchID = @s ID
scoreboard players set @e[type=armor_stand,tag=MT1G,scores={Class=1,DirMoving=1..}] DirSpeed 100
scoreboard players set @e[type=armor_stand,tag=MT1G,scores={Class=-1,DirMoving=1..}] DirSpeed 100

execute at @e[type=armor_stand,tag=MT1G,scores={Class=1}] positioned ~ ~1.7 ~ run particle witch ~ ~ ~ 1 1 1 1 7 force
execute at @e[type=armor_stand,tag=MT1G,scores={Class=-1}] positioned ~ ~1.7 ~ run particle witch ~ ~ ~ 1 1 1 1 7 force
execute at @e[type=armor_stand,tag=MT1G,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=1}] positioned ~ ~1.7 ~ run particle smoke ~ ~ ~ 0 0 0 0.5 7 force
execute at @e[type=armor_stand,tag=MT1G,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=-1}] positioned ~ ~1.7 ~ run particle smoke ~ ~ ~ 0 0 0 0.5 7 force
