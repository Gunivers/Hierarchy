#Shoot
scoreboard players set @e[type=armor_stand,scores={Class=25}] Collision 1
scoreboard players set @e[type=armor_stand,scores={Class=-25}] Collision 1

execute at @e[type=armor_stand,scores={Class=25},tag=Collision] run particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 force
execute at @e[type=armor_stand,scores={Class=25,Timer=3..}] run particle cloud ~ ~ ~ 0 0 0 0.2 5 force
execute as @e[type=armor_stand,scores={Class=25}] at @s run scoreboard players operation @a[gamemode=adventure,team=Blue,scores={InGame=1..},distance=..5] TouchID = @s ID
execute as @e[type=armor_stand,scores={Class=25}] at @s run scoreboard players set @e[team=!Orange,tag=IsPlaying,distance=..5] EffDamage 2
execute as @e[type=armor_stand,scores={Class=25},tag=Collision] at @s run playsound entity.generic.explode record @a[distance=..30] ~ ~ ~ 2 1 1
kill @e[type=armor_stand,scores={Class=25},tag=Collision]

execute at @e[type=armor_stand,scores={Class=-25},tag=Collision] run particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 force
# execute at @e[type=armor_stand,scores={Class=-25,Timer=3..}] run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute at @e[type=armor_stand,scores={Class=-25,Timer=3..}] run particle cloud ~ ~ ~ 0 0 0 0.2 5 force
execute as @e[type=armor_stand,scores={Class=-25}] at @s run scoreboard players operation @a[gamemode=adventure,team=Orange,scores={InGame=1..},distance=..5] TouchID = @s ID
execute as @e[type=armor_stand,scores={Class=-25}] at @s run scoreboard players set @e[team=!Blue,tag=IsPlaying,distance=..5] EffDamage 2
execute as @e[type=armor_stand,scores={Class=-25},tag=Collision] at @s run playsound entity.generic.explode record @a[distance=..30] ~ ~ ~ 2 1 1
kill @e[type=armor_stand,scores={Class=-25},tag=Collision]
