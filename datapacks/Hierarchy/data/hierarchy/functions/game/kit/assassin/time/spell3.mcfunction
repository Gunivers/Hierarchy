execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=11,Spell3=991..}] run particle large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.7 30 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=11,Spell3=991..}] run particle witch ~ ~ ~ 0.5 0.5 0.5 0.3 50

execute as @a[team=Blue,scores={Class=11,Spell3=999}] at @r[team=Orange,scores={InGame=1..},distance=..15] run teleport @s ~ ~ ~
execute as @a[team=Blue,scores={Class=11,Spell3=997}] at @r[team=Orange,scores={InGame=1..},distance=3..15] run teleport @s ~ ~ ~
execute as @a[team=Blue,scores={Class=11,Spell3=995}] at @r[team=Orange,scores={InGame=1..},distance=3..15] run teleport @s ~ ~ ~
execute as @a[team=Blue,scores={Class=11,Spell3=993}] at @r[team=Orange,scores={InGame=1..},distance=3..15] run teleport @s ~ ~ ~
execute as @a[team=Blue,scores={Class=11,Spell3=991}] at @r[team=Orange,scores={InGame=1..},distance=3..15] run teleport @s ~ ~ ~
execute as @a[team=Blue,scores={Class=11,Spell3=991..}] at @s run scoreboard players set @a[team=Orange,distance=..1] EffDamage 1003
execute as @a[team=Blue,scores={Class=11,Spell3=991..}] at @p[team=Orange,distance=..1] positioned ~0.5 ~3 ~0.5 unless entity @e[tag=AT3G-item,distance=..2] run summon armor_stand ~ ~ ~ {Tags:["AT3G-item"],Invisible:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"iron_sword",Count:1b},{}],Pose:{RightArm:[83f,0f,0f]}}
execute as @a[team=Blue,scores={Class=11,Spell3=991..}] at @s run scoreboard players operation @a[team=Orange,distance=..1] TouchID = @s ID
execute as @a[scores={Class=11,Spell3=990..}] at @s run playsound entity.enderman.hurt record @a[distance=..10] ~ ~ ~ 2 2 1
execute as @a[team=Orange,scores={Class=11,Spell3=991}] at @r[team=Blue,scores={InGame=1..},distance=..15] run teleport @s ~ ~ ~
execute as @a[team=Orange,scores={Class=11,Spell3=993}] at @r[team=Blue,scores={InGame=1..},distance=3..15] run teleport @s ~ ~ ~
execute as @a[team=Orange,scores={Class=11,Spell3=995}] at @r[team=Blue,scores={InGame=1..},distance=3..15] run teleport @s ~ ~ ~
execute as @a[team=Orange,scores={Class=11,Spell3=997}] at @r[team=Blue,scores={InGame=1..},distance=3..15] run teleport @s ~ ~ ~
execute as @a[team=Orange,scores={Class=11,Spell3=999}] at @r[team=Blue,scores={InGame=1..},distance=3..15] run teleport @s ~ ~ ~
execute as @a[team=Orange,scores={Class=11,Spell3=991..}] at @s run scoreboard players set @a[team=Blue,distance=..1] EffDamage 1003
execute as @a[team=Orange,scores={Class=11,Spell3=991..}] at @p[team=Blue,distance=..1] positioned ~0.5 ~3 ~0.5 unless entity @e[tag=AT3G-item,distance=..2] run summon armor_stand ~ ~ ~ {Tags:["AT3G-item"],Invisible:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"iron_sword",Count:1b},{}],Pose:{RightArm:[83f,0f,0f]}}

execute as @a[team=Orange,scores={Class=11,Spell3=991..}] at @s run scoreboard players operation @a[team=Blue,distance=..1] TouchID = @s ID
