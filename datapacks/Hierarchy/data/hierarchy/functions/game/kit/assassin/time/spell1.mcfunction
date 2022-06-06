scoreboard players set @a[scores={Class=11,Spell1=499..}] PrivateSpell 200
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=11,Spell1=499..}] run particle large_smoke ~ ~1 ~ 0.5 1 0.5 0 70 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=11,Spell1=499..}] run particle witch ~ ~1 ~ 0.5 1 0.5 0 100 force
execute as @a[scores={Class=11,Spell1=499..}] at @s run playsound entity.ender_dragon.flap record @a[distance=..5] ~ ~ ~ 2 1 1
scoreboard players set @a[scores={Class=11,UseIronAxe=1..}] PrivateSpell 0
scoreboard players set @a[gamemode=adventure,scores={Class=11,EffInvisibility=..2,InGame=1..,PrivateSpell=1..,Spell1=300..}] EffInvisibility 2
scoreboard players set @a[gamemode=adventure,scores={Class=11,EffSpeed=..2002,InGame=1..,PrivateSpell=1..,Spell1=300..}] EffSpeed 2002

#Double
execute at @a[scores={Class=11,Spell1=500}] run summon skeleton ~ ~ ~ {Silent:1,NoAI:1,Tags:["AT1G"],CustomNameVisible:true,HandItems:[{id:"minecraft:iron_sword",Count:1b},{}]}
execute as @a[scores={Class=11,Spell1=500}] run tp @e[tag=AT1G,limit=1,sort=nearest] @s
scoreboard players set @e[tag=AT1G,scores={Timer=0..}] Timer -140
execute as @e[type=skeleton,tag=AT1G,tag=!AT1G-Old] run data modify entity @s Rotation[0] set from entity @p[scores={Class=11,Spell1=500}] Rotation[0]
execute as @e[type=skeleton,tag=AT1G,tag=!AT1G-Old] run data modify entity @s Rotation[1] set from entity @p[scores={Class=11,Spell1=500}] Rotation[1]

execute as @e[type=skeleton,tag=AT1G,tag=!AT1G-Old] run data modify entity @s ArmorItems[0] set from entity @p[scores={Class=11,Spell1=500}] Inventory[{Slot:100b}]
execute as @e[type=skeleton,tag=AT1G,tag=!AT1G-Old] run data modify entity @s ArmorItems[1] set from entity @p[scores={Class=11,Spell1=500}] Inventory[{Slot:101b}]
execute as @e[type=skeleton,tag=AT1G,tag=!AT1G-Old] run data modify entity @s ArmorItems[2] set from entity @p[scores={Class=11,Spell1=500}] Inventory[{Slot:102b}]
data merge block 0 87 0 {Text1:"{\"selector\":\"@p[scores={Class=11,Spell1=500}]\"}"}
execute as @e[type=skeleton,tag=AT1G,tag=!AT1G-Old] run data modify entity @s CustomName set from block 0 87 0 Text1
execute as @a[scores={Class=11,Spell1=500}] run loot replace entity @e[type=skeleton,tag=AT1G,tag=!AT1G-Old] armor.head loot hierarchy:givehead
execute as @e[type=skeleton,tag=AT1G,tag=!AT1G-Old] run data modify entity @s ArmorItem[3].tag.SkullOwner.Name set from block 0 87 0 Text1.insertion
tag @e[type=skeleton,tag=AT1G] add AT1G-Old

execute as @e[type=skeleton,tag=AT1G,scores={Timer=-160..}] at @s run tp @s ~ ~ ~ ~1 0
execute as @e[type=skeleton,tag=AT1G,scores={Timer=-200..-160}] at @s run tp @s ~ ~ ~ ~-1 0


execute as @e[type=skeleton,tag=AT1G] at @s run tp @s ^ ^ ^0.5