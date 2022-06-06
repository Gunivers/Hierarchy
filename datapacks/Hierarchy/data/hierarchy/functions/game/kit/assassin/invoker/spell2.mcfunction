execute at @a[team=Blue,scores={Class=16,Spell2=399}] run summon wither_skeleton ^1 ^ ^ {CustomName:{"text":"Guardians"},CustomNameVisible:true,HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:stone_sword",Count:1b}],LeftHanded:false,Tags:["SpawnAnime","NotOrange","Blue","162G","162B","Life10"]}
execute at @a[team=Blue,scores={Class=16,Spell2=399}] run summon wither_skeleton ^-1 ^ ^ {CustomName:{"text":"Guardians"},CustomNameVisible:true,HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:stone_sword",Count:1b}],LeftHanded:false,Tags:["SpawnAnime","NotOrange","Blue","162G","162B","Life10"]}
execute as @a[scores={Class=16,Spell2=399}] at @s run playsound entity.zombie_pig.death record @a[distance=..15] ~ ~ ~ 2 2 1
playsound minecraft:entity.donkey.hurt record @a[distance=..10] ~ ~ ~ 2 0.5 1
execute at @a[team=Orange,scores={Class=16,Spell2=399}] run summon wither_skeleton ^1 ^ ^ {CustomName:{"text":"Guardians"},CustomNameVisible:true,HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:stone_sword",Count:1b}],LeftHanded:false,Tags:["SpawnAnime","NotBlue","Orange","162G","162R","Life10"]}
execute at @a[team=Orange,scores={Class=16,Spell2=399}] run summon wither_skeleton ^-1 ^ ^ {CustomName:{"text":"Guardians"},CustomNameVisible:true,HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:stone_sword",Count:1b}],LeftHanded:false,Tags:["SpawnAnime","NotBlue","Orange","162G","162R","Life10"]}

execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[scores={Class=16,Spell2=399}] run particle large_smoke ~ ~1 ~ 1 0.5 1 0 20 force

team join Orange @e[tag=162R]
team join Blue @e[tag=162B]
execute as @a[team=Orange,scores={Class=16,Spell2=399}] at @s run scoreboard players operation @e[type=wither_skeleton,tag=162R,distance=..3,limit=2,sort=nearest] ID = @s ID
execute as @a[team=Blue,scores={Class=16,Spell2=399}] at @s run scoreboard players operation @e[type=wither_skeleton,tag=162B,distance=..3,limit=2,sort=nearest] ID = @s ID

execute as @e[type=wither_skeleton,tag=162G,tag=!162G-Old] run data modify entity @s Rotation[0] set from entity @p[scores={Class=16,Spell2=399}] Rotation[0]
execute as @e[type=wither_skeleton,tag=162G,tag=!162G-Old] run data modify entity @s Rotation[1] set from entity @p[scores={Class=16,Spell2=399}] Rotation[1]

execute as @e[type=wither_skeleton,tag=162G,tag=!162G-Old] run data modify entity @s ArmorItems[0] set from entity @p[scores={Class=16,Spell2=399}] Inventory[{Slot:100b}]
execute as @e[type=wither_skeleton,tag=162G,tag=!162G-Old] run data modify entity @s ArmorItems[1] set from entity @p[scores={Class=16,Spell2=399}] Inventory[{Slot:101b}]
execute as @e[type=wither_skeleton,tag=162G,tag=!162G-Old] run data modify entity @s ArmorItems[2] set from entity @p[scores={Class=16,Spell2=399}] Inventory[{Slot:102b}]
data merge block 0 87 0 {Text1:"{\"selector\":\"@p[scores={Class=16,Spell2=399}]\"}"}
execute as @e[type=wither_skeleton,tag=162G,tag=!162G-Old] run data modify entity @s CustomName set from block 0 87 0 Text1
execute as @a[scores={Class=16,Spell2=399}] run loot replace entity @e[type=wither_skeleton,tag=162G,tag=!162G-Old] armor.head loot hierarchy:givehead
execute as @e[type=wither_skeleton,tag=162G,tag=!162G-Old] run data modify entity @s ArmorItem[3].tag.SkullOwner.Name set from block 0 87 0 Text1.insertion
tag @e[type=wither_skeleton,tag=162G] add 162G-Old
