tag @e[type=snowball,scores={Class=4}] add MF3G-snow
tag @e[type=snowball,scores={Class=-4}] add MF3G-snow


execute at @e[type=armor_stand,tag=MF3G,tag=!MF3NoParticle] if entity @e[type=snowball,tag=MF3G-snow,distance=..4] run particle firework ~ ~ ~ 0.5 0.5 0.5 0 10 force
execute at @e[type=armor_stand,tag=MF3G,tag=!MF3NoParticle,scores={Timer05=2}] unless entity @e[type=snowball,tag=MF3G-snow,distance=..4] run particle firework ~ ~ ~ 0.1 0.1 0.1 0.5 100 force
execute as @e[type=armor_stand,tag=MF3G,scores={Timer05=2}] at @s unless entity @e[type=snowball,tag=MF3G-snow,distance=..4] run playsound block.sand.break master @a[distance=..30] ~ ~ ~ 5 2 1
execute as @e[type=armor_stand,tag=MF3G,scores={Timer05=2}] at @s unless entity @e[type=snowball,tag=MF3G-snow,distance=..4] run playsound minecraft:block.glass.hit master @a[distance=..30] ~ ~ ~ 2 2 1

execute as @e[type=armor_stand,tag=MF3G,tag=!MF3G-Old] at @s unless entity @e[type=snowball,tag=MF3G-snow,distance=..4] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 5 2 1
# execute as @e[type=armor_stand,tag=MF3G,tag=!MF3G-Old] at @s unless entity @e[type=snowball,tag=MF3G-snow,distance=..4] run particle minecraft:explosion_emitter
execute as @e[type=armor_stand,tag=MF3G,tag=!MF3G-Old] at @s unless entity @e[type=snowball,tag=MF3G-snow,distance=..4] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.5 500 force
execute as @e[type=armor_stand,tag=MF3G,tag=!MF3G-Old] at @s unless entity @e[type=snowball,tag=MF3G-snow,distance=..4] run tag @s add MF3G-Old

execute as @e[type=armor_stand,tag=MF3G] at @s unless entity @e[type=snowball,tag=MF3G-snow,distance=..4] run summon falling_block ~ ~-0.5 ~ {BlockState:{Name:"ice"},NoGravity:1,Tags:["MF3G-item"]}


execute at @a[scores={Class=4,InGame=1..,UseSnowball=2}] run summon armor_stand ~ ~ ~ {Tags:["MF3G"],Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoGravity:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
execute as @a[scores={Class=4,InGame=1..,UseSnowball=3}] at @s run scoreboard players set @e[type=armor_stand,distance=..5,limit=1,sort=nearest] Timer -100
execute as @a[gamemode=adventure,scores={Class=4,InGame=1..,UseSnowball=2}] at @s run scoreboard players operation @e[type=armor_stand,tag=MF3G,distance=..5,limit=1,sort=nearest] ID = @s ID


execute as @e[type=snowball,scores={Class=-4}] at @s run scoreboard players set @e[team=!Blue,scores={EffDamage=..1002},tag=IsPlaying,distance=..3] EffDamage 1002
execute as @e[type=snowball,scores={Class=4}] at @s run scoreboard players set @e[team=!Orange,scores={EffDamage=..1002},tag=IsPlaying,distance=..3] EffDamage 1002
execute at @e[type=armor_stand,tag=MF3G,scores={Class=-4},tag=!MF3NoParticle] if entity @e[type=snowball,tag=MF3G-snow,distance=..3] at @a[team=!Blue,scores={EffDamage=..1002},tag=IsPlaying,distance=..3] run particle firework ~ ~1 ~ 0.5 1 0.5 0 30 force
execute at @e[type=armor_stand,tag=MF3G,scores={Class=4},tag=!MF3NoParticle] if entity @e[type=snowball,tag=MF3G-snow,distance=..3] at @a[team=!Orange,scores={EffDamage=..1002},tag=IsPlaying,distance=..3] run particle firework ~ ~1 ~ 0.5 1 0.5 0 30 force
execute as @e[type=snowball,scores={Class=-4}] at @s run scoreboard players set @e[team=!Blue,scores={EffSlow=..3020},tag=IsPlaying,distance=..3] EffSlow 3020
execute as @e[type=snowball,scores={Class=4}] at @s run scoreboard players set @e[team=!Orange,scores={EffSlow=..3020},tag=IsPlaying,distance=..3] EffSlow 3020
execute as @e[type=armor_stand,tag=MF3G,scores={Class=-4}] at @s unless entity @e[type=snowball,scores={Class=-4},distance=..3] run scoreboard players set @e[team=Orange,scores={EffPoison=..2},distance=..10] EffPoison 2
execute as @e[type=armor_stand,tag=MF3G,scores={Class=4}] at @s unless entity @e[type=snowball,scores={Class=-4},distance=..3] run scoreboard players set @e[team=Blue,scores={EffPoison=..2},distance=..10] EffPoison 2
execute as @e[type=armor_stand,tag=MF3G,scores={Class=-4}] at @s unless entity @e[type=snowball,scores={Class=-4},distance=..3] run scoreboard players set @e[team=Orange,scores={EffSlow=..2002},distance=..10] EffSlow 2002
execute as @e[type=armor_stand,tag=MF3G,scores={Class=4}] at @s unless entity @e[type=snowball,scores={Class=-4},distance=..3] run scoreboard players set @e[team=Blue,scores={EffSlow=..2002},distance=..10] EffSlow 2002


execute as @a[gamemode=adventure,team=Blue,scores={Class=4,InGame=1..,UseSnowball=2}] at @s run scoreboard players set @e[type=snowball,distance=..5,limit=1,sort=nearest] Class -4
execute as @a[gamemode=adventure,team=Orange,scores={Class=4,InGame=1..,UseSnowball=2}] at @s run scoreboard players set @e[type=snowball,distance=..5,limit=1,sort=nearest] Class 4
execute as @e[type=snowball,scores={Class=-4}] at @s run teleport @e[type=armor_stand,scores={Class=-4},distance=..10,limit=1,sort=nearest] @e[type=snowball,scores={Class=-4},distance=..5,limit=1,sort=nearest]
execute as @e[type=snowball,scores={Class=4}] at @s run teleport @e[type=armor_stand,scores={Class=4},distance=..10,limit=1,sort=nearest] @e[type=snowball,scores={Class=4},distance=..5,limit=1,sort=nearest]
execute as @a[team=Blue,scores={Class=4,InGame=1..,UseSnowball=3}] at @s run scoreboard players set @e[type=armor_stand,distance=..5,limit=1,sort=nearest] Class -4
execute as @a[team=Orange,scores={Class=4,InGame=1..,UseSnowball=3}] at @s run scoreboard players set @e[type=armor_stand,distance=..5,limit=1,sort=nearest] Class 4
execute as @e[type=armor_stand,tag=MF3G,scores={Class=-4}] at @s run scoreboard players operation @a[gamemode=adventure,team=Orange,scores={InGame=1..},distance=..5] TouchID = @s ID
execute as @e[type=armor_stand,tag=MF3G,scores={Class=4}] at @s run scoreboard players operation @a[gamemode=adventure,team=Blue,scores={InGame=1..},distance=..5] TouchID = @s ID
