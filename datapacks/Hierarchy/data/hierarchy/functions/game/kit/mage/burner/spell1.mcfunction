execute as @a[gamemode=adventure,scores={Class=2,InGame=1..,Spell1=299..}] at @s run playsound item.flintandsteel.use record @p[distance=..1] ~ ~ ~ 2 0.5 1
execute at @a[gamemode=adventure,team=Blue,scores={Class=2,InGame=1..,Spell1=200..,Timer05=1}] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["BGetID","MB1B","MB1G"]}
execute at @a[gamemode=adventure,team=Blue,scores={Class=2,InGame=1..,Spell1=200..,Timer05=6}] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["BGetID","MB1B","MB1G"]}
execute at @a[gamemode=adventure,team=Orange,scores={Class=2,InGame=1..,Spell1=200..,Timer05=1}] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["RGetID","MB1R","MB1G"]}
execute at @a[gamemode=adventure,team=Orange,scores={Class=2,InGame=1..,Spell1=200..,Timer05=6}] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["RGetID","MB1R","MB1G"]}
execute as @e[type=armor_stand,tag=BGetID] run scoreboard players operation @s ID = @p[team=Blue,scores={Class=2},tag=IsPlaying] ID
execute as @e[type=armor_stand,tag=RGetID] run scoreboard players operation @s ID = @p[team=Orange,scores={Class=2},tag=IsPlaying] ID
tag @e remove BGetID
tag @e remove RGetID
execute as @e[type=armor_stand,tag=MB1B] at @s run scoreboard players set @e[team=!Blue,scores={EffPoison=..20},tag=IsPlaying,distance=..2] EffPoison 1020
execute as @e[type=armor_stand,tag=MB1R] at @s run scoreboard players set @e[team=!Orange,scores={EffPoison=..20},tag=IsPlaying,distance=..2] EffPoison 1020
execute as @e[type=armor_stand,tag=MB1B] at @s run scoreboard players operation @e[team=!Blue,tag=IsPlaying,distance=..2] TouchID = @s ID
execute as @e[type=armor_stand,tag=MB1R] at @s run scoreboard players operation @e[team=!Orange,tag=IsPlaying,distance=..2] TouchID = @s ID
scoreboard players set @a[gamemode=adventure,scores={Class=2,InGame=1..,Spell1=200..}] EffSpeed 1020
scoreboard players set @a[gamemode=adventure,scores={Class=-2,InGame=1..,Spell1=200..}] EffSpeed 1020
execute at @e[type=armor_stand,tag=MB1G] run particle flame ~ ~0.2 ~ 0.5 0 0.5 0 3 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[type=armor_stand,tag=MB1G] run summon falling_block ~ ~ ~ {BlockState:{Name:"fire"},Time:1,NoGravity:1,Tags:["MB1G"]}
execute at @e[type=armor_stand,tag=MB1G,scores={Timer=1}] run playsound minecraft:block.fire.ambient record @a[distance=..15]
kill @e[type=falling_block,tag=MB1G]
