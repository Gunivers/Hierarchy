execute at @a[gamemode=adventure,team=Blue,scores={Class=12,Spell3=899}] run summon ocelot ~ ~ ~ {Silent:1,Tags:["123B","123G","NotOrange"]}
execute at @a[gamemode=adventure,team=Blue,scores={Class=12,Spell3=899}] run summon spider ~ ~ ~ {Silent:1,Tags:["123B","123G","Blue","NotOrange"]}
execute at @a[gamemode=adventure,team=Orange,scores={Class=12,Spell3=899}] run summon ocelot ~ ~ ~ {Silent:1,Tags:["123R","123G","NotBlue"]}
execute at @a[gamemode=adventure,team=Orange,scores={Class=12,Spell3=899}] run summon spider ~ ~ ~ {Silent:1,Tags:["123R","123G","Orange","NotBlue"]}
execute as @a[gamemode=adventure,scores={Class=12,Spell3=899}] at @s run scoreboard players operation @e[tag=123G,distance=..5,limit=2] ID = @s ID
scoreboard players set @e[type=ocelot,scores={Timer=-99..},tag=123B] Timer -100
scoreboard players set @e[type=spider,scores={Timer=-99..},tag=123B] Timer -100
execute as @a[gamemode=adventure,team=Blue,scores={Class=12,Spell3=800..}] at @s run scoreboard players set @e[team=!Blue,scores={EffPoison=1001..},tag=IsPlaying,distance=..2] EffPoison 1120
execute as @a[gamemode=adventure,team=Blue,scores={Class=12,Spell3=899..}] at @s run scoreboard players set @e[team=!Blue,tag=IsPlaying,distance=..7] EffPoison 1120
execute as @e[tag=123B] at @s run scoreboard players set @e[team=!Blue,scores={EffPoison=1001..},tag=IsPlaying,distance=..2] EffPoison 1120
execute as @a[gamemode=adventure,team=Blue,scores={Class=12,Spell3=800..}] at @s run scoreboard players operation @e[team=!Blue,scores={EffPoison=1001..},tag=IsPlaying,distance=..2] TouchID = @s ID
execute as @a[gamemode=adventure,team=Blue,scores={Class=12,Spell3=899..}] at @s run scoreboard players operation @e[team=!Blue,tag=IsPlaying,distance=..7] TouchID = @s ID
execute as @e[tag=123B] at @s run scoreboard players operation @e[team=!Blue,scores={EffPoison=1001..},tag=IsPlaying,distance=..2] TouchID = @s ID
scoreboard players set @a[gamemode=adventure,scores={Class=12,EffInvisibility=..100,Spell3=899..}] EffInvisibility 100
execute as @a[gamemode=adventure,scores={Class=12,Spell3=899..}] at @s run playsound block.fire.ambient record @a[distance=..30] ~ ~ ~ 2 1 1
execute as @a[gamemode=adventure,scores={Class=12,Spell3=899..}] run playsound minecraft:item.flintandsteel.use record @a ~ ~ ~ 2 1 1
scoreboard players set @a[gamemode=adventure,scores={Class=12,EffSpeed=..1100,Spell3=899..}] EffSpeed 1100
scoreboard players set @e[type=ocelot,scores={Timer=-99..},tag=123R] Timer -100
scoreboard players set @e[type=spider,scores={Timer=-99..},tag=123R] Timer -100
execute as @a[gamemode=adventure,team=Orange,scores={Class=12,Spell3=899..}] at @s run scoreboard players set @e[team=!Orange,tag=IsPlaying,distance=..7] EffPoison 1120
execute as @a[gamemode=adventure,team=Orange,scores={Class=12,Spell3=800..}] at @s run scoreboard players set @e[team=!Orange,scores={EffPoison=1001..},tag=IsPlaying,distance=..2] EffPoison 1120
execute as @e[tag=123R] at @s run scoreboard players set @e[team=!Orange,scores={EffPoison=1001..},tag=IsPlaying,distance=..2] EffPoison 1120
execute as @a[gamemode=adventure,team=Orange,scores={Class=12,Spell3=899..}] at @s run scoreboard players operation @e[team=!Orange,tag=IsPlaying,distance=..7] TouchID = @s ID
execute as @a[gamemode=adventure,team=Orange,scores={Class=12,Spell3=800..}] at @s run scoreboard players operation @e[team=!Orange,scores={EffPoison=1001..},tag=IsPlaying,distance=..2] TouchID = @s ID
execute as @e[tag=123R] at @s run scoreboard players operation @e[team=!Orange,scores={EffPoison=1001..},tag=IsPlaying,distance=..2] TouchID = @s ID

execute at @a[gamemode=adventure,scores={Class=12,Spell3=800..}] run particle flame ~ ~0.3 ~ 1 0 1 0 5 force
execute at @a[gamemode=adventure,scores={Class=12,Spell3=800..}] run particle lava ~ ~0.3 ~ 1 0 1 0 2 force
execute at @e[type=!player,tag=123G] run particle flame ~ ~0.3 ~ 1 0 1 0 5 force
execute at @e[type=!player,tag=123G] run particle lava ~ ~0.3 ~ 1 0 1 0 2 force