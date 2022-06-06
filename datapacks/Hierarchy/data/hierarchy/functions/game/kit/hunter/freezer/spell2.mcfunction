execute as @e[type=armor_stand,tag=HF2B] at @s run scoreboard players set @e[team=!Blue,scores={EffSlow=..1002,InGame=1..,LifeState=400..},distance=..3] EffSlow 1002
execute as @e[type=armor_stand,tag=HF2R] at @s run scoreboard players set @e[team=!Orange,scores={EffSlow=..1002,InGame=1..,LifeState=400..},distance=..3] EffSlow 1002
execute as @e[type=armor_stand,tag=HF2B] at @s run scoreboard players set @e[team=!Blue,scores={EffPoison=..1002,InGame=1..,LifeState=400..},distance=..3] EffPoison 1002
execute as @e[type=armor_stand,tag=HF2R] at @s run scoreboard players set @e[team=!Orange,scores={EffPoison=..1002,InGame=1..,LifeState=400..},distance=..3] EffPoison 1002
execute as @e[type=armor_stand,tag=HF2B] at @s run scoreboard players set @e[team=Blue,scores={EffSpeed=..2002,InGame=1..,LifeState=400..},distance=..3] EffSpeed 2002
execute as @e[type=armor_stand,tag=HF2R] at @s run scoreboard players set @e[team=Orange,scores={EffSpeed=..2002,InGame=1..,LifeState=400..},distance=..3] EffSpeed 2002
execute as @e[type=armor_stand,tag=HF2B] at @s run scoreboard players set @e[team=Blue,scores={EffRegen=..5,InGame=1..,LifeState=400..},distance=..3] EffRegen 5
execute as @e[type=armor_stand,tag=HF2R] at @s run scoreboard players set @e[team=Orange,scores={EffRegen=..5,InGame=1..,LifeState=400..},distance=..3] EffRegen 5
execute as @e[type=armor_stand,tag=HF2B] at @s run scoreboard players set @e[team=Blue,scores={EffJump=..2,InGame=1..,LifeState=400..},distance=..3] EffJump 2
execute as @e[type=armor_stand,tag=HF2R] at @s run scoreboard players set @e[team=Orange,scores={EffJump=..2,InGame=1..,LifeState=400..},distance=..3] EffJump 2
execute as @e[type=armor_stand,tag=HF2B] at @s run scoreboard players operation @e[team=!Blue,scores={InGame=1..,LifeState=400..},distance=..3] TouchID = @s ID
execute as @e[type=armor_stand,tag=HF2R] at @s run scoreboard players operation @e[team=!Orange,scores={InGame=1..,LifeState=400..},distance=..3] TouchID = @s ID
execute as @e[type=armor_stand,scores={Class=24}] at @s run playsound block.snow.step record @a[distance=..30] ~ ~ ~ 2 1 1
execute as @e[type=armor_stand,scores={Class=-24}] at @s run playsound block.snow.step record @a[distance=..30] ~ ~ ~ 2 1 1
execute at @e[type=armor_stand,tag=HF2G] run particle firework ~ ~ ~ 1.5 0.3 1.5 0 1 force
scoreboard players set @e[scores={Timer=1..},tag=HF2G] Timer -100

# execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=24}] run particle firework ~ ~ ~ 0 0 0 0.3 10 force
# execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=-24}] run particle firework ~ ~ ~ 0 0 0 0.3 10 force
