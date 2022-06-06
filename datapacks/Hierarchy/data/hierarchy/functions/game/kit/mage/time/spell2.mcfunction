execute as @a[gamemode=adventure,scores={Class=1,InGame=1..,Spell2=299}] at @s run playsound mob.endermen.portal record @a[distance=..10] ~ ~ ~ 2 1 1
execute as @a[scores={Class=1,Spell2=299}] at @s run playsound entity.guardian.death record @a[distance=..30] ~ ~ ~ 2 2 1
execute as @a[scores={Class=1,Spell2=299}] at @s run particle minecraft:witch ~ ~0.2 ~ 3 0 3 1 200 force
execute as @a[gamemode=adventure,team=Blue,scores={Class=1,InGame=1..,Spell2=299..}] at @s run scoreboard players set @e[scores={EffSlow=..3020,LifeState=500..},tag=AffectByBlue,distance=..5] EffSlow 3020
execute as @a[gamemode=adventure,team=Orange,scores={Class=1,InGame=1..,Spell2=299..}] at @s run scoreboard players set @e[scores={EffSlow=..3020,LifeState=500..},tag=AffectByOrange,distance=..5] EffSlow 3020
execute as @a[gamemode=adventure,team=Blue,scores={Class=1,InGame=1..,Spell2=299..}] at @s as @e[scores={LifeState=500..},tag=AffectByBlue,distance=..5] at @s run teleport @s ~ ~ ~ ~180 ~
execute as @a[gamemode=adventure,team=Orange,scores={Class=1,InGame=1..,Spell2=299..}] at @s as @e[scores={LifeState=500..},tag=AffectByOrange,distance=..5] at @s run teleport @s ~ ~ ~ ~180 ~
execute as @a[gamemode=adventure,team=Blue,scores={Class=1,InGame=1..,Spell2=299}] at @s run spreadplayers ~ ~ 0 10 false @e[type=!armor_stand,team=Orange,tag=IsPlaying,distance=..5]
execute as @a[gamemode=adventure,team=Orange,scores={Class=1,InGame=1..,Spell2=299}] at @s run spreadplayers ~ ~ 0 10 false @e[type=!armor_stand,team=Blue,tag=IsPlaying,distance=..5]

execute at @a[scores={Class=1,Spell2=299}] run particle large_smoke ~ ~1 ~ 3 0.5 3 0 30 force
