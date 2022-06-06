scoreboard players set @e[type=armor_stand,tag=MW3G] Collision 1
execute as @e[type=armor_stand,tag=MW3G] at @s run playsound entity.ender_dragon.flap record @a[distance=..30] ~ ~ ~ 2 1 1
scoreboard players remove @e[type=armor_stand,scores={VectorY=50..},tag=MW3G] VectorY 50
execute at @e[type=armor_stand,tag=MW3G] run particle sweep_attack ~ ~ ~ 2 2 2 0 5 force
#execute at @e[type=armor_stand,tag=MW3G] run particle flash ~ ~ ~ 2 2 2 0 5 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,tag=MW3G] run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 30 force

kill @e[type=armor_stand,scores={Timer=20..},tag=MW3G]

scoreboard players set @e[gamemode=adventure,scores={Class=5,EffSpeed=..1060,InGame=1..,Spell3=799..}] EffSpeed 1060
scoreboard players set @e[gamemode=adventure,scores={Class=5,EffJump=..1060,InGame=1..,Spell3=799..}] EffJump 1060

execute as @e[type=armor_stand,scores={Class=-5}] at @s run teleport @e[type=!armor_stand,tag=AffectByBlue,distance=..6] ~ ~2 ~
execute as @e[type=armor_stand,scores={Class=5}] at @s run teleport @e[type=!armor_stand,tag=AffectByOrange,distance=..6] ~ ~2 ~
execute as @e[type=armor_stand,scores={Class=-5}] at @s run scoreboard players set @e[scores={EffPoison=..1005},tag=AffectByBlue,distance=..5] EffPoison 1005
execute as @e[type=armor_stand,scores={Class=5}] at @s run scoreboard players set @e[scores={EffPoison=..1005},tag=AffectByOrange,distance=..5] EffPoison 1005
execute as @e[type=armor_stand,scores={Class=-5}] at @s run scoreboard players operation @e[tag=AffectByBlue,distance=..5] TouchID = @s ID
execute as @e[type=armor_stand,scores={Class=5}] at @s run scoreboard players operation @e[tag=AffectByOrange,distance=..5] TouchID = @s ID
execute as @e[type=armor_stand,scores={Class=-5,Timer=19}] at @s run scoreboard players set @e[scores={EffDamage=..1001},tag=AffectByBlue,distance=..5] EffDamage 1001
execute as @e[type=armor_stand,scores={Class=5,Timer=19}] at @s run scoreboard players set @e[scores={EffDamage=..1001},tag=AffectByOrange,distance=..5] EffDamage 1001
