execute as @e[tag=AffectByBlue] at @s run tag @e[type=armor_stand,scores={Class=-34,Timer=0..},distance=..3] add Collision
execute as @e[type=armor_stand,scores={Class=-34,Timer=..-140}] at @s run scoreboard players set @e[scores={EffRegen=..1020},tag=AffectByOrange,distance=..5] EffRegen 1020
execute as @e[type=armor_stand,scores={Class=-34,Timer=..-140}] at @s run scoreboard players set @e[scores={EffSpeed=..1020},tag=AffectByOrange,distance=..5] EffSpeed 1020
execute as @e[type=armor_stand,scores={Class=-34,Timer=-141}] at @s run scoreboard players set @e[scores={EffDamage=..2},tag=AffectByBlue,distance=..5] EffDamage 2
execute as @e[type=armor_stand,scores={Class=-34,Timer=-141}] at @s run scoreboard players set @e[scores={EffSlow=..3040},tag=AffectByBlue,distance=..5] EffSlow 3040
execute as @e[type=armor_stand,scores={Class=-34,Timer=-141}] at @s run scoreboard players operation @e[tag=AffectByBlue,distance=..5] TouchID = @s ID

execute as @e[type=armor_stand,scores={Class=-34,Timer=-141..}] at @s run particle firework ~ ~ ~ 0.3 0.3 0.3 0.1 15 force @a
scoreboard players set @e[type=armor_stand,scores={Class=-34}] Collision 3

scoreboard players set @e[type=armor_stand,scores={Class=-34},tag=Collision] Timer -140
tag @e[type=armor_stand,scores={Class=-34,Timer=..-140},tag=Collision] remove DirMoving
tag @e[type=armor_stand,scores={Class=-34},tag=Collision] remove Collision
execute as @e[type=armor_stand,scores={Class=-34,Timer=..-140}] at @s run particle firework ~ ~ ~ 1.5 1.5 1.5 0.1 15 force @a
execute as @e[type=armor_stand,scores={Class=-34,Timer=-141}] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[type=armor_stand,scores={Class=-34,Timer=-141}] at @s run playsound entity.generic.explode record @a[distance=..30] ~ ~ ~ 2 2 1
execute as @e[type=armor_stand,scores={Class=-34,Timer=0..}] at @s run playsound block.snow.step record @a[distance=..15] ~ ~ ~ 2 2 1
