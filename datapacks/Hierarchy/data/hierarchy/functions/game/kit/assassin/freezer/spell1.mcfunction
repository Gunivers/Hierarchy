execute as @a[scores={Class=14,Spell1=499..}] at @s run playsound block.water.ambient record @a[distance=..10] ~ ~ ~ 2 2 1
scoreboard players set @a[scores={Class=14,EffSpeed=..1080,Spell1=499..}] EffSpeed 1080
scoreboard players set @a[scores={Class=14,EffInvisibility=..80,Spell1=499..}] EffInvisibility 80

execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=14,Spell1=499..}] run particle splash ~ ~1 ~ 0.3 0.7 0.3 0 100 force
