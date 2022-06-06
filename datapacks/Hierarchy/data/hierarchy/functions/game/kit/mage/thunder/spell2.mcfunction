execute at @a[gamemode=adventure,scores={Class=3,InGame=1..,UseCarrot=2}] run summon lightning_bolt ~ ~7 ~
execute at @e[type=armor_stand,scores={Class=3}] run particle effect ~ ~ ~ 1 1 1 0 10 force
execute at @e[type=armor_stand,scores={Class=-3}] run particle effect ~ ~ ~ 1 1 1 0 10 force

execute at @a[gamemode=adventure,team=Blue,scores={Class=3,InGame=1..,UseCarrot=2}] at @e[team=!Blue,scores={C3=1..}] as @e[tag=AffectByBlue,distance=..5] at @s run scoreboard players set @e[team=Blue,scores={EffInvulnerable=..2,InGame=1..},distance=..4] EffInvulnerable 2
execute at @a[gamemode=adventure,team=Orange,scores={Class=3,InGame=1..,UseCarrot=2}] at @e[team=!Orange,scores={C3=1..}] as @e[tag=AffectByOrange,distance=..5] at @s run scoreboard players set @e[team=Orange,scores={EffInvulnerable=..2,InGame=1..},distance=..4] EffInvulnerable 2
execute as @a[gamemode=adventure,scores={Class=3,InGame=1..,UseCarrot=2}] at @s run function hierarchy:game/kit/mage/thunder/spell2bis
execute as @a[gamemode=adventure,team=Blue,scores={Class=3,InGame=1..,UseCarrot=2}] run scoreboard players set @e[team=!Blue,scores={C3=1..390}] C3 0
execute as @a[gamemode=adventure,team=Orange,scores={Class=3,InGame=1..,UseCarrot=2}] run scoreboard players set @e[team=!Orange,scores={C3=1..390}] C3 0
scoreboard players set @e[type=armor_stand,scores={Class=-3}] Collision 1
scoreboard players set @e[type=armor_stand,scores={Class=3}] Collision 1
execute as @e[type=armor_stand,scores={Class=-3}] at @s run scoreboard players set @e[type=!armor_stand,team=!Blue,tag=IsPlaying,distance=..3] C3 300
execute as @e[type=armor_stand,scores={Class=3}] at @s run scoreboard players set @e[type=!armor_stand,team=!Orange,tag=IsPlaying,distance=..3] C3 300
