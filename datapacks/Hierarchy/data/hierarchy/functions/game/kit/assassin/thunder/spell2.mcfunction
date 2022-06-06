scoreboard players set @e[type=armor_stand,tag=AT2G] DirWall 10
execute as @e[type=armor_stand,scores={Class=13}] at @s run teleport @e[team=Blue,scores={LifeState=500..},distance=..3] @p[team=Orange,scores={Class=13,Spell2=400..}]
execute as @e[type=armor_stand,scores={Class=-13}] at @s run teleport @e[team=Orange,scores={LifeState=500..},distance=..3] @p[team=Blue,scores={Class=13,Spell2=400..}]
execute as @e[type=armor_stand,tag=AT2G] at @s run playsound entity.arrow.shoot record @a[distance=..10] ~ ~ ~ 1 2 0.5

execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,tag=AT2G] run particle effect ~ ~ ~ 0.5 0.5 0.5 0 7 force
execute at @e[type=armor_stand,tag=AT2G] run particle sweep_attack ~ ~ ~ 1 1 1 0 1 force
