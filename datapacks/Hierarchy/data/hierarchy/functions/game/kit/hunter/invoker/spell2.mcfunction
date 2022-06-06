scoreboard players set @a[gamemode=adventure,scores={Class=26,InGame=1..,IsWalking=10..,Spell2=-977..-1}] Spell2 600
replaceitem entity @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell2=..-1}] hotbar.2 gray_dye{display:{Name:"PRESS SPACE and fly!"},HideFlags:63} 1
scoreboard players set @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell2=..-1}] HaveObjective 0

scoreboard players add @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell2=..-1}] Spell2 1

effect give @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell2=-999..-998}] levitation 1 25 true
execute at @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell2=-999..-998}] run particle dust 2 2 2 1 ~ ~0.2 ~ 4 0 4 1 30 force
execute as @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell2=-999..-998}] at @s run playsound entity.enderdragon.flap record @a[distance=..30] ~ ~ ~ 2 1 1
scoreboard players set @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell2=..-1}] EffPlane 3

execute as @a[gamemode=adventure,team=Orange,scores={Class=26,InGame=1..,Spell2=-999..-998}] at @s run scoreboard players operation @e[team=!Orange,tag=IsPlaying,distance=..5] TouchID = @s ID
execute as @a[gamemode=adventure,team=Orange,scores={Class=26,InGame=1..,Spell2=-999..-998}] at @s run scoreboard players set @e[team=!Orange,scores={EffDamage=..1001},tag=IsPlaying,distance=..5] EffDamage 1001
execute as @a[gamemode=adventure,team=Blue,scores={Class=26,InGame=1..,Spell2=-999..-998}] at @s run scoreboard players operation @e[team=!Blue,tag=IsPlaying,distance=..5] TouchID = @s ID
execute as @a[gamemode=adventure,team=Blue,scores={Class=26,InGame=1..,Spell2=-999..-998}] at @s run scoreboard players set @e[team=!Blue,scores={EffDamage=..1001},tag=IsPlaying,distance=..5] EffDamage 1001



execute at @a[team=Orange,scores={Class=26,Spell2=-999}] run summon skeleton ~ ~ ~ {CustomNameVisible:true,HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:air"}],Tags:["SpawnAnime","NotBlue","Orange","262G","262R","Life10"]}
execute at @a[team=Blue,scores={Class=26,Spell2=-999}] run summon skeleton ~ ~ ~ {CustomNameVisible:true,HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:air"}],Tags:["SpawnAnime","NotOrange","Blue","262G","262R","Life10"]}
scoreboard players add @e[tag=262G] ID 0
execute as @a[team=Orange,scores={Class=26,Spell2=-999}] run scoreboard players operation @e[type=skeleton,scores={ID=..0},tag=262R] ID = @s ID
execute as @a[team=Blue,scores={Class=26,Spell2=-999}] run scoreboard players operation @e[type=skeleton,scores={ID=..0},tag=262B] ID = @s ID
scoreboard players set @e[tag=262G] Timer -1

scoreboard players set @e[type=skeleton,tag=262B] Class -6
scoreboard players set @e[type=skeleton,tag=262R] Class 6

execute as @a[scores={Class=26,Spell2=-999}] at @s run playsound entity.zombie_pig.death record @a[distance=..5] ~ ~ ~ 2 2 1

execute at @a[gamemode=adventure,scores={Class=26,InGame=1..,Spell2=-999..-998}] run particle dust 2 2 2 2 ~ ~1 ~ 0.3 0.5 0.3 1 30 force
scoreboard players set @a[scores={Class=26,Spell2=-999}] EffInvisibility 20
execute as @e[type=skeleton,tag=262G,tag=!262G-Old] run data modify entity @s Rotation[0] set from entity @p[scores={Class=26,Spell2=-999}] Rotation[0]
execute as @e[type=skeleton,tag=262G,tag=!262G-Old] run data modify entity @s Rotation[1] set from entity @p[scores={Class=26,Spell2=-999}] Rotation[1]

execute as @e[type=skeleton,tag=262G,tag=!262G-Old] run data modify entity @s ArmorItems[0] set from entity @p[scores={Class=26,Spell2=-999}] Inventory[{Slot:100b}]
execute as @e[type=skeleton,tag=262G,tag=!262G-Old] run data modify entity @s ArmorItems[1] set from entity @p[scores={Class=26,Spell2=-999}] Inventory[{Slot:101b}]
execute as @e[type=skeleton,tag=262G,tag=!262G-Old] run data modify entity @s ArmorItems[2] set from entity @p[scores={Class=26,Spell2=-999}] Inventory[{Slot:102b}]
data merge block 0 87 0 {Text1:"{\"selector\":\"@p[scores={Class=26,Spell2=-999}]\"}"}
execute as @e[type=skeleton,tag=262G,tag=!262G-Old] run data modify entity @s CustomName set from block 0 87 0 Text1
execute as @a[scores={Class=26,Spell2=-999}] run loot replace entity @e[type=skeleton,tag=262G,tag=!262G-Old] armor.head loot hierarchy:givehead
execute as @e[type=skeleton,tag=262G,tag=!262G-Old] run data modify entity @s ArmorItem[3].tag.SkullOwner.Name set from block 0 87 0 Text1.insertion
tag @e[type=skeleton,tag=262G] add 262G-Old

scoreboard players set @e[scores={Timer=0..},tag=262G] Timer -1
