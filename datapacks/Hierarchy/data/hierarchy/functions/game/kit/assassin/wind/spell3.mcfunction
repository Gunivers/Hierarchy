execute as @a[team=Blue,scores={Class=15,Spell3=1199..}] at @s run scoreboard players set @a[team=Orange,tag=IsPlaying,distance=..15] C15S3 23
execute at @a[scores={Class=15,Spell3=1180}] as @a[scores={InGame=1..}] at @s run playsound entity.generic.explode record @a[distance=..30] ~ ~ ~ 2 0.5 1
execute at @a[scores={Class=15,Spell3=1185..}] as @a[scores={InGame=1..}] at @s run playsound entity.ender_dragon.flap record @a[distance=..30] ~ ~ ~ 2 1 1
execute as @e[scores={C15S3=1}] at @s run teleport @s ~ ~15 ~
effect give @e[scores={C15S3=22..}] levitation 1 25 true
execute as @a[scores={C15S3=2}] at @s run spreadplayers ~ ~ 15 50 false @p
effect give @a[scores={Class=15,Spell3=1199..}] levitation 1 25 true
execute as @a[scores={Class=15,Spell3=1175}] at @s run spreadplayers ~ ~ 15 50 false @p
scoreboard players remove @e[scores={C15S3=1..}] C15S3 1
scoreboard players set @e[scores={C15S3=1,EffDamage=..1001}] EffDamage 1001
scoreboard players set @a[scores={Class=15,EffInvulnerable=..2,Spell3=1199..}] EffInvulnerable 20
execute as @a[team=Orange,scores={Class=15,Spell3=1199..}] at @s run scoreboard players set @e[team=Blue,tag=IsPlaying,distance=..15] C15S3 23
execute at @a[scores={Class=15,Spell3=1187..}] run particle sweep_attack ~ ~1 ~ 1 1 1 0 10 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=15,Spell3=1180..}] run particle cloud ~ ~1 ~ 1 1 1 0 10 force
execute at @a[scores={C15S3=1..},tag=IsPlaying] run particle sweep_attack ~ ~1 ~ 1 1 1 0 10 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={C15S3=1..},tag=IsPlaying] run particle cloud ~ ~1 ~ 1 1 1 0 10 force

execute as @a[team=Blue,scores={Class=15,Spell3=1199..}] at @s run scoreboard players operation @a[team=Orange,tag=IsPlaying,distance=..15] TouchID = @s ID
execute as @a[team=Orange,scores={Class=15,Spell3=1199..}] at @s run scoreboard players operation @a[team=Blue,tag=IsPlaying,distance=..15] TouchID = @s ID
