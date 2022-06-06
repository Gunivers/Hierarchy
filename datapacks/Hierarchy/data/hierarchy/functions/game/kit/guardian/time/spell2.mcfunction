execute at @s[team=Blue,scores={UseTp=2}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["GT2G","GT2B","GT2G-IN","GT2B-IN"]}
execute at @s[team=Orange,scores={UseTp=2}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["GT2G","GT2R","GT2G-IN","GT2R-IN"]}

execute at @s[team=Blue,tag=TpEnd] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["GT2G","GT2B","GT2G-OUT","GT2B-OUT"]}
execute at @s[team=Orange,tag=TpEnd] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["GT2G","GT2R","GT2G-OUT","GT2R-OUT"]}

execute at @s[team=Blue,tag=TpEnd] run scoreboard players set @e[tag=GT2B-OUT,limit=1,sort=nearest] Timer -100
execute at @s[team=Blue,tag=TpEnd] run scoreboard players set @e[tag=GT2B-IN,scores={Timer=0..},limit=1,sort=nearest] Timer -100
execute at @s[team=Orange,tag=TpEnd] run scoreboard players set @e[tag=GT2R-OUT,limit=1,sort=nearest] Timer -100
execute at @s[team=Orange,tag=TpEnd] run scoreboard players set @e[tag=GT2R-IN,scores={Timer=0..},limit=1,sort=nearest] Timer -100

execute at @e[tag=GT2B-IN] run tag @a[team=Blue,tag=IsPlaying,distance=..0.5] add GT2G-TRAVEL
execute at @e[tag=GT2R-IN] run tag @a[team=Orange,tag=IsPlaying,distance=..0.5] add GT2G-TRAVEL

execute at @a[tag=GT2G-TRAVEL] run playsound minecraft:entity.enderman.teleport record @a[distance=..30]
execute at @a[tag=GT2G-TRAVEL] run particle large_smoke ~ ~1 ~ 0 0.5 0 0.2 30 force

execute as @a[tag=GT2G-TRAVEL,team=Blue] at @s at @e[tag=GT2B-OUT] run tp @s ~ ~ ~ 
execute as @a[tag=GT2G-TRAVEL,team=Orange] at @s at @e[tag=GT2R-OUT] run tp @s ~ ~ ~ 

execute at @a[tag=GT2G-TRAVEL] run playsound minecraft:entity.enderman.teleport record @a[distance=..30]
execute at @a[tag=GT2G-TRAVEL] run particle large_smoke ~ ~1 ~ 0 0.5 0 0.2 30 force

execute at @e[tag=GT2G-IN,scores={Timer=..-1}] run particle witch ~ ~1 ~ 0 0.5 0 0 10 force
execute at @e[tag=GT2G-IN,scores={Timer=..-1}] run particle witch ~ ~0.1 ~ 0 0 0 0.1 3 force
execute at @e[tag=GT2G-OUT] run particle witch ~ ~0.1 ~ 0 0 0 0.1 5 force

tag @a remove GT2G-TRAVEL