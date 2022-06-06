execute at @e[gamemode=adventure,team=Blue,scores={Class=6,InGame=1..,Spell2=399}] run summon armor_stand ~ ~ ~ {Tags:["062B","062G","Blue","NotOrange"],Marker:1,Invisible:1,NoAI:1,Small:1}
execute at @e[gamemode=adventure,team=Orange,scores={Class=6,InGame=1..,Spell2=399}] run summon armor_stand ~ ~ ~ {Tags:["062R","062G","Orange","NotBlue"],Marker:1,Invisible:1,NoAI:1,Small:1}

scoreboard players set @e[type=armor_stand,tag=062B] Class -6
scoreboard players set @e[type=armor_stand,tag=062R] Class 6
execute as @e[gamemode=adventure,team=Blue,scores={Class=6,InGame=1..,Spell2=399}] at @s run scoreboard players operation @e[type=armor_stand,tag=062B,distance=..2,limit=1,sort=nearest] ID = @s ID
execute as @e[gamemode=adventure,team=Orange,scores={Class=6,InGame=1..,Spell2=399}] at @s run scoreboard players operation @e[type=armor_stand,tag=062R,distance=..2,limit=1,sort=nearest] ID = @s ID

execute as @e[type=armor_stand,scores={Class=-6}] at @s run scoreboard players set @e[team=!Blue,scores={EffSlow=..1002},tag=IsPlaying,distance=..7] EffSlow 1002
execute as @e[type=armor_stand,scores={Class=-6}] at @s run scoreboard players set @e[team=!Blue,scores={EffPoison=..1002},tag=IsPlaying,distance=..7] EffPoison 1002
execute as @e[type=armor_stand,scores={Class=-6}] at @s run scoreboard players set @e[team=!Blue,scores={EffNoMove=..2},tag=IsPlaying,distance=..7] EffNoMove 2

execute as @e[type=armor_stand,scores={Class=6}] at @s run scoreboard players set @e[team=!Orange,scores={EffSlow=..1002},tag=IsPlaying,distance=..7] EffSlow 1002
execute as @e[type=armor_stand,scores={Class=6}] at @s run scoreboard players set @e[team=!Orange,scores={EffPoison=..1002},tag=IsPlaying,distance=..7] EffPoison 1002
execute as @e[type=armor_stand,scores={Class=6}] at @s run scoreboard players set @e[team=!Orange,scores={EffNoMove=..2},tag=IsPlaying,distance=..7] EffNoMove 2

execute at @e[type=armor_stand,scores={Class=-6}] run particle dust 2 2 2 1 ~ ~0.2 ~ 4 0 4 1 10 force
execute at @e[type=armor_stand,scores={Class=6}] run particle dust 2 2 2 1 ~ ~0.2 ~ 4 0 4 1 10 force
execute at @e[type=armor_stand,tag=062G] run summon item ~ ~-70 ~ {PickupDelay:999999,Tags:["MI3G-item"],Item:{id:"minecraft:bone",Count:1b}}
execute at @e[type=armor_stand,tag=062G] run spreadplayers ~ ~ 1 5 false @e[tag=MI3G-item,tag=!MI3G-old]
scoreboard players set @e[tag=MI3G-item,tag=!MI3G-old] Timer -180
execute at @e[tag=MI3G-item,tag=!MI3G-old] run particle dust 0 0 0 1 ~ ~0.1 ~ 0.2 0.2 0.2 1 3 force
tag @e[tag=MI3G-item] add MI3G-old

execute as @e[type=armor_stand,scores={Class=-6}] at @s run scoreboard players operation @e[team=!Blue,tag=IsPlaying,distance=..7] TouchID = @s ID
execute as @e[type=armor_stand,scores={Class=6}] at @s run scoreboard players operation @e[team=!Orange,tag=IsPlaying,distance=..7] TouchID = @s ID

scoreboard players set @e[type=armor_stand,scores={Timer=0..},tag=062B,distance=..3,limit=1,sort=nearest] Timer -100
scoreboard players set @e[type=armor_stand,scores={Timer=0..},tag=062R,distance=..3,limit=1,sort=nearest] Timer -100

execute as @e[gamemode=adventure,scores={Class=6,InGame=1..,Spell2=399}] at @s run playsound weather.rain record @a[distance=..10] ~ ~ ~ 2 2 1

execute at @e[type=armor_stand,name=Blue,tag=Setting_Ally_Indicator,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=-6,Timer=-101}] run summon armor_stand ~ ~200 ~ {Tags:["RotBase","Rot"],NoGravity:1,Rotation:[180f],CustomName:"{\"text\":\"RotBase\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Start\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot","Blue"],CustomName:"{\"text\":\"End\"}"}]}]}]}]}]}]}]}]}]}]}]}]}]}
execute at @e[type=armor_stand,name=Blue,tag=Setting_Ally_Indicator,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=-6,Timer=-141}] run summon armor_stand ~ ~200 ~ {Tags:["RotBase","Rot"],NoGravity:1,Rotation:[180f],CustomName:"{\"text\":\"RotBase\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Start\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot","Blue"],CustomName:"{\"text\":\"End\"}"}]}]}]}]}]}]}]}]}]}]}]}]}]}
execute at @e[type=armor_stand,name=Blue,tag=Setting_Ally_Indicator,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=-6,Timer=-181}] run summon armor_stand ~ ~200 ~ {Tags:["RotBase","Rot"],NoGravity:1,Rotation:[180f],CustomName:"{\"text\":\"RotBase\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Start\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot","Blue"],CustomName:"{\"text\":\"End\"}"}]}]}]}]}]}]}]}]}]}]}]}]}]}

execute at @e[type=armor_stand,name=Blue,tag=Setting_Ally_Indicator,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=6,Timer=-101}] run summon armor_stand ~ ~200 ~ {Tags:["RotBase","Rot"],NoGravity:1,Rotation:[180f],CustomName:"{\"text\":\"RotBase\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Start\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot","Orange"],CustomName:"{\"text\":\"End\"}"}]}]}]}]}]}]}]}]}]}]}]}]}]}
execute at @e[type=armor_stand,name=Blue,tag=Setting_Ally_Indicator,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=6,Timer=-141}] run summon armor_stand ~ ~200 ~ {Tags:["RotBase","Rot"],NoGravity:1,Rotation:[180f],CustomName:"{\"text\":\"RotBase\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Start\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot","Orange"],CustomName:"{\"text\":\"End\"}"}]}]}]}]}]}]}]}]}]}]}]}]}]}
execute at @e[type=armor_stand,name=Blue,tag=Setting_Ally_Indicator,limit=1,sort=nearest] at @e[type=armor_stand,scores={Class=6,Timer=-181}] run summon armor_stand ~ ~200 ~ {Tags:["RotBase","Rot"],NoGravity:1,Rotation:[180f],CustomName:"{\"text\":\"RotBase\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Start\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot"],CustomName:"{\"text\":\"Middle\"}",Passengers:[{id:armor_stand,Invisible:1,Tags:["Rot"]},{id:boat,Rotation:[0f],Tags:["Rot","Orange"],CustomName:"{\"text\":\"End\"}"}]}]}]}]}]}]}]}]}]}]}]}]}]}