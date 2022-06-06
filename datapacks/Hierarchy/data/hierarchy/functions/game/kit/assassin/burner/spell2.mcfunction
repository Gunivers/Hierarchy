scoreboard players set @a[scores={Class=12,EffSpeed=..3002,Spell2=298..}] EffSpeed 3002
execute as @a[gamemode=adventure,scores={Class=12,Spell2=299..}] at @s run playsound item.firecharge.use record @a[distance=..10] ~ ~ ~ 1 1 0.5
execute as @a[team=Orange,scores={Class=12,Spell2=278..}] at @s run scoreboard players set @e[team=Blue,scores={EffScare=..40,LifeState=500..},distance=..2] EffScare 40
execute as @a[team=Blue,scores={Class=12,Spell2=278..}] at @s run scoreboard players set @e[team=Orange,scores={EffScare=..40,LifeState=500..},distance=..2] EffScare 40

execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=12,Spell2=278..}] run particle flame ~ ~1 ~ 0.2 0.5 0.2 0 10 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=12,Spell2=278..}] run particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0 5 force