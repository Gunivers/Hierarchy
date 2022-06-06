
scoreboard players set @e[type=armor_stand,tag=MBG,tag=!023G,scores={Timer=1}] VectorSpeed 2000
scoreboard players set @e[type=armor_stand,tag=MBG] Collision 1


tag @e[type=armor_stand,scores={Timer=10..},tag=MBG] add Collision
tag @e[type=armor_stand,scores={Timer=..-199},tag=MBG] add Collision
execute as @e[type=armor_stand,tag=MBG] unless block ~ ~ ~ #gunivers-lib:no_collision run tag @s add Collision



execute as @a[team=Orange,tag=IsPlaying] at @s run tag @e[type=armor_stand,scores={Class=-2},distance=..3] add Collision
execute as @a[team=Blue,tag=IsPlaying] at @s run tag @e[type=armor_stand,scores={Class=2},distance=..3] add Collision

execute at @e[type=armor_stand,tag=MBG,tag=Collision] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
execute as @e[type=armor_stand,tag=MBG,tag=Collision] at @s run playsound entity.generic.explode record @a[distance=..30] ~ ~ ~ 2 1 1

execute as @e[type=armor_stand,scores={Class=-2},tag=Collision] at @s run scoreboard players set @e[tag=AffectByBlue,distance=..5] EffDamage 2
execute as @e[type=armor_stand,scores={Class=2},tag=Collision] at @s run scoreboard players set @e[tag=AffectByOrange,distance=..5] EffDamage 2
execute as @e[type=armor_stand,scores={Class=-2},tag=Collision] at @s run scoreboard players set @e[tag=AffectByBlue,distance=..3] EffDamage 1002
execute as @e[type=armor_stand,scores={Class=2},tag=Collision] at @s run scoreboard players set @e[tag=AffectByOrange,distance=..3] EffDamage 1002
execute as @e[type=armor_stand,scores={Class=-2},tag=Collision] at @s run scoreboard players operation @e[team=!Blue,tag=IsPlaying,distance=..5] TouchID = @s ID
execute as @e[type=armor_stand,scores={Class=2},tag=Collision] at @s run scoreboard players operation @e[team=!Orange,tag=IsPlaying,distance=..5] TouchID = @s ID

execute at @e[type=armor_stand,tag=MBG] run particle flame ~ ~0 ~ 0.1 0.1 0.1 0.1 6 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,tag=MBG] run particle large_smoke ~ ~0 ~ 0.1 0.1 0.1 0.1 3 force

kill @e[type=armor_stand,tag=Collision,tag=!Data]
