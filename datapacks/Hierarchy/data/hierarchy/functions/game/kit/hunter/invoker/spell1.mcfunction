execute at @e[type=armor_stand,tag=HI1G] run particle dust 2 2 2 1 ~ ~ ~ 0.3 0.3 0.3 0.01 20 force
scoreboard players set @e[type=armor_stand,tag=HI1G] Collision 1
execute as @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell1=139}] at @s run playsound minecraft:entity.blaze.hurt master @a[distance=..30] ~ ~ ~ 2 2 1

execute as @e[type=armor_stand,scores={Class=-26}] at @s run scoreboard players operation @e[team=!Blue,tag=IsPlaying,distance=..3] TouchID = @s ID
execute as @e[type=armor_stand,scores={Class=-26}] at @s run scoreboard players set @e[team=Blue,scores={EffRegen=..1020},tag=IsPlaying,distance=..3] EffRegen 1020
execute as @e[type=armor_stand,scores={Class=-26}] at @s run scoreboard players set @e[team=!Blue,scores={EffDamage=..1},tag=IsPlaying,distance=..3] EffDamage 1
execute as @e[type=armor_stand,scores={Class=26}] at @s run scoreboard players operation @e[team=!Orange,tag=IsPlaying,distance=..3] TouchID = @s ID
execute as @e[type=armor_stand,scores={Class=26}] at @s run scoreboard players set @e[team=Orange,scores={EffRegen=..1020},tag=IsPlaying,distance=..3] EffRegen 1020
execute as @e[type=armor_stand,scores={Class=26}] at @s run scoreboard players set @e[team=!Orange,scores={EffDamage=..1},tag=IsPlaying,distance=..3] EffDamage 1

execute as @e[type=armor_stand,scores={Class=26}] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[team=Orange]
execute as @e[type=armor_stand,scores={Class=-26}] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[team=Blue]
