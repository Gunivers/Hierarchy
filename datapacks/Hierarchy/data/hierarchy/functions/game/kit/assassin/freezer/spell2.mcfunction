execute as @a[team=Blue,scores={Class=14,Spell2=298..}] at @s run scoreboard players set @e[team=!Blue,scores={LifeState=500..},distance=..7] EffDamage 3
execute as @a[team=Blue,scores={Class=14,Spell2=298..}] at @s run scoreboard players set @e[team=Orange,scores={EffSlow=..1060,LifeState=500..},distance=..7] EffSlow 1060
execute as @a[team=Blue,scores={Class=14,Spell2=298..}] at @s run scoreboard players set @a[team=Orange,scores={EffSilence=..60,LifeState=500..},distance=..7] EffSilence 60
execute as @a[team=Blue,scores={Class=14,Spell2=298..}] at @s run scoreboard players operation @e[team=!Blue,scores={LifeState=500..},distance=..7] TouchID = @s ID
execute as @a[scores={Class=14,Spell2=299..}] at @s run playsound block.redstone_torch.burnout record @a[distance=..30] ~ ~ ~ 2 1 1
execute as @a[team=Orange,scores={Class=14,Spell2=298..}] at @s run scoreboard players set @a[team=Blue,scores={EffSilence=..60,LifeState=500..},distance=..7] EffSilence 60
execute as @a[team=Orange,scores={Class=14,Spell2=298..}] at @s run scoreboard players set @e[team=Blue,scores={EffSlow=..1060,LifeState=500..},distance=..7] EffSlow 1060
execute as @a[team=Orange,scores={Class=14,Spell2=298..}] at @s run scoreboard players set @e[team=!Orange,scores={LifeState=500..},distance=..7] EffDamage 3
execute as @a[team=Orange,scores={Class=14,Spell2=298..}] at @s run scoreboard players operation @e[team=!Orange,scores={LifeState=500..},distance=..7] TouchID = @s ID

execute at @a[scores={Class=14,Spell2=299..}] run particle minecraft:block snow_block ~ ~1 ~ 5 1 5 0 100 force
execute at @a[scores={Class=14,Spell2=299..}] run summon armor_stand ~ ~-70 ~ {Marker:1,Invisible:1,PickupDelay:999999,Tags:["AF2G-item"],Item:{id:"minecraft:ice",Count:1b}}
execute as @e[tag=AF2G-item,tag=!AF2G-old] at @s run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,PickupDelay:999999,Tags:["AF2G-item"],Item:{id:"minecraft:ice",Count:1b}}
execute as @e[tag=AF2G-item,tag=!AF2G-old] at @s run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,PickupDelay:999999,Tags:["AF2G-item"],Item:{id:"minecraft:ice",Count:1b}}
execute as @e[tag=AF2G-item,tag=!AF2G-old] at @s run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,PickupDelay:999999,Tags:["AF2G-item"],Item:{id:"minecraft:ice",Count:1b}}
execute as @e[tag=AF2G-item,tag=!AF2G-old] at @s run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,PickupDelay:999999,Tags:["AF2G-item"],Item:{id:"minecraft:ice",Count:1b}}
execute at @a[scores={Class=14,Spell2=299..}] run spreadplayers ~ ~ 1 5 false @e[tag=AF2G-item,tag=!AF2G-old]
execute at @a[scores={Class=14,Spell2=299..}] run particle dust 0 0 0 1 ~ ~0.1 ~ 0.2 0.2 0.2 1 3 force
tag @e[tag=AF2G-item] add AF2G-old
