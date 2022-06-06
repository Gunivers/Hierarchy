


scoreboard players set @e[scores={DirY=..-1000},tag=323G] DirY -1000
execute at @e[scores={Timer=..-1},tag=323G] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 10
scoreboard players set @e[tag=323G] Collision 3
scoreboard players remove @e[tag=323G] VectorY 50
scoreboard players set @e[scores={Class=32,Timer=-100..},tag=Collision] Timer -100
scoreboard players set @e[scores={Class=-32,Timer=-100..},tag=Collision] Timer -100
tag @e[scores={Class=-32},tag=Collision] remove DirMoving
tag @e[scores={Class=32},tag=Collision] remove DirMoving
tag @e[scores={Class=32},tag=Collision] remove Collision
tag @e[scores={Class=-32},tag=Collision] remove Collision
scoreboard players set @e[scores={Timer=35..},tag=323G] Timer 5
execute at @e[scores={Timer=1..},tag=323G] run particle flame ~ ~ ~ 0.3 0.3 0.3 0 5
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[scores={Timer=1..},tag=323G] run particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0 2
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[scores={Timer=..-1},tag=323G] run particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0.1 3
execute as @e[scores={Timer=-101},tag=323G] at @s run playsound block.fire.ambient record @a[distance=..30]
execute as @e[scores={Timer=-101},tag=323G] at @s run playsound entity.creeper.hurt record @a[distance=..30] ~ ~ ~ 2 2 1
execute at @e[scores={Timer=-101},tag=323G] run particle explosion ~ ~ ~ 0.3 0.3 0.3 0 10 force

execute as @e[scores={Timer=-141},tag=323G] at @s run playsound block.fire.ambient record @a[distance=..30]

execute as @e[tag=323B] at @s run scoreboard players set @a[scores={EffPoison=..20},tag=AffectByBlue,distance=..3] EffPoison 20
execute as @e[scores={Timer=-101},tag=323B] at @s run scoreboard players set @a[scores={EffSlow=..1040},tag=AffectByBlue,distance=..3] EffSlow 1040
execute as @e[scores={Timer=-101},tag=323B] at @s run scoreboard players set @a[scores={EffDamage=..2},tag=AffectByBlue,distance=..3] EffDamage 2
execute as @e[tag=323B] at @s run scoreboard players operation @a[tag=AffectByBlue,distance=..3] TouchID = @s ID
execute as @a[tag=AffectByBlue] at @s run tag @e[scores={Timer=0..},tag=323B,distance=..2] add Collision

execute as @e[tag=323R] at @s run scoreboard players set @a[scores={EffPoison=..20},tag=AffectByOrange,distance=..3] EffPoison 20
execute as @e[scores={Timer=-101},tag=323R] at @s run scoreboard players set @a[scores={EffSlow=..1040},tag=AffectByOrange,distance=..3] EffSlow 1040
execute as @e[scores={Timer=-101},tag=323R] at @s run scoreboard players set @a[scores={EffSlow=..1020},tag=AffectByOrange,distance=..3] EffDamage 2
execute as @e[tag=323R] at @s run scoreboard players operation @a[tag=AffectByOrange,distance=..3] TouchID = @s ID
execute as @a[tag=AffectByOrange] at @s run tag @e[scores={Timer=0..},tag=323R,distance=..2] add Collision
