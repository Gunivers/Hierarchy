# Primary
replaceitem entity @a[gamemode=adventure,scores={Class=11..19,EffSilencePrim=..0,InGame=1..,UpgradedWeapon=..0}] hotbar.0 iron_sword{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:8s}],display:{Lore:['{"text":"___"}'],Name:"{\"text\":\"Basic Attack   0✸  0s\",\"color\":\"aqua\"}"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:2,UUID:[I;1060973598,1016629095,1057302382,1683534071]}]} 1

# Passive
execute as @a[scores={Class=11..16,IsWalking=110..209}] unless block ~ ~-0.1 ~ air run scoreboard players set @s Glib_Jump2 0
scoreboard players set @a[scores={Class=11..16,Sprint=110..209}] Glib_Jump2 0
execute as @a[scores={Class=11..16,EffPlane=0,Glib_Jump2=1..},tag=IsPlaying] at @s run tag @s add NearWall

execute as @a[tag=NearWall] at @s if blocks ~0.7 ~0.01 ~0.7 ~-0.7 ~2 ~-0.7 ~ 250 ~ masked anchored eyes if block ^ ^ ^1 air run tag @s remove NearWall
execute as @a[tag=NearWall] at @s unless block ~ ~-0.01 ~ air if block ~ ~0.01 ~ air if block ~ ~1.01 ~ air run tag @s remove NearWall

#tag @a add NearWall

#execute as @a[tag=NearWall] at @s if blocks ~0.7 ~0.01 ~0.7 ~-0.7 ~2 ~-0.7 ~ 250 ~ masked run tag @s remove NearWall
#execute as @a[tag=NearWall] at @s if block ~ ~-0.01 ~ air if block ~-0.3 ~-0.01 ~ air if block ~0.3 ~-0.01 ~ air if block ~ ~-0.01 ~-0.3 air run tag @s remove NearWall
#if block ~ ~1.1 ~ air
#if block ~ ~-0.01 ~0.3 air if block ~ ~0.1 ~ air

execute as @a[tag=NearWall,scores={Glib_Sneak=0,EffInvisibility=0}] at @s run particle cloud ~ ~ ~ 0.2 0 0.2 0 1
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.6 ~ unless entity @e[tag=Glib_WallRide1,distance=..1] run summon boat ~ ~ ~ {NoGravity:1b,Type:"birch",Tags:["Glib_WallRide","Glib_WallRide1"]}
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.7 ~ unless entity @e[tag=Glib_WallRide2,distance=..1] run summon boat ~ ~ ~ {NoGravity:1b,Type:"birch",Tags:["Glib_WallRide","Glib_WallRide2"]}
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.8 ~ unless entity @e[tag=Glib_WallRide3,distance=..1] run summon boat ~ ~ ~ {NoGravity:1b,Type:"birch",Tags:["Glib_WallRide","Glib_WallRide3"]}
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.9 ~ unless entity @e[tag=Glib_WallRide4,distance=..1] run summon boat ~ ~ ~ {NoGravity:1b,Type:"birch",Tags:["Glib_WallRide","Glib_WallRide4"]}
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-1.0 ~ unless entity @e[tag=Glib_WallRide5,distance=..1] run summon boat ~ ~ ~ {NoGravity:1b,Type:"birch",Tags:["Glib_WallRide","Glib_WallRide5"]}
execute as @a[tag=NearWall,scores={Glib_Sneak=1..}] at @s positioned ~ ~-1.2 ~ unless entity @e[tag=Glib_WallRide,distance=..1] run summon boat ~ ~ ~ {NoGravity:1b,Type:"birch",Tags:["Glib_WallRide"]}
#execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-1.05 ~ unless entity @e[tag=Glib_WallRide,distance=..1] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["Glib_WallRide"],Passengers:[{id:"minecraft:shulker",Tags:["Glib_WallRide"],Silent:1b,NoAI:1b,CanPickUpLoot:0b,AttachFace:0b}]}
#execute as @a[tag=NearWall,scores={Glib_Sneak=1..}] at @s positioned ~ ~-1.4 ~ unless entity @e[tag=Glib_WallRide,distance=..1] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["Glib_WallRide"],Passengers:[{id:"minecraft:shulker",Tags:["Glib_WallRide"],Silent:1b,NoAI:1b,CanPickUpLoot:0b,AttachFace:0b}]}

execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.6 ~ run tp @e[tag=Glib_WallRide1,limit=1,distance=..1] ~ ~ ~
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.7 ~ run tp @e[tag=Glib_WallRide2,limit=1,distance=..1] ~ ~ ~
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.8 ~ run tp @e[tag=Glib_WallRide3,limit=1,distance=..1] ~ ~ ~
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.9 ~ run tp @e[tag=Glib_WallRide4,limit=1,distance=..1] ~ ~ ~
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-1.0 ~ run tp @e[tag=Glib_WallRide5,limit=1,distance=..1] ~ ~ ~
execute as @a[tag=NearWall,scores={Glib_Sneak=1..}] at @s positioned ~ ~-1.2 ~ run tp @e[tag=Glib_WallRide,limit=1,distance=..1] ~ ~ ~

kill @e[tag=Glib_WallRide,tag=!Glib_WallRide_Active]
tag @e[tag=Glib_WallRide] remove Glib_WallRide_Actives
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.6 ~ run tag @e[tag=Glib_WallRide1,limit=1,distance=..1] add Glib_WallRide_Active
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.7 ~ run tag @e[tag=Glib_WallRide2,limit=1,distance=..1] add Glib_WallRide_Active
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.8 ~ run tag @e[tag=Glib_WallRide3,limit=1,distance=..1] add Glib_WallRide_Active
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-0.9 ~ run tag @e[tag=Glib_WallRide4,limit=1,distance=..1] add Glib_WallRide_Active
execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s positioned ~ ~-1.0 ~ run tag @e[tag=Glib_WallRide5,limit=1,distance=..1] add Glib_WallRide_Active
execute as @a[tag=NearWall,scores={Glib_Sneak=1..}] at @s positioned ~ ~-1.2 ~ run tag @e[tag=Glib_WallRide,limit=1,distance=..1] add Glib_WallRide_Active
execute as @e[tag=Glib_WallRide,tag=!Glib_WallRide_Active] at @s run tp @s ~ 0 ~

# execute as @a[tag=NearWall,scores={Glib_Sneak=0}] at @s run summon boat ~ ~-0.565 ~ {NoGravity:1b,Type:"birch",Tags:["Glib_WallRide"]}
# execute as @a[tag=NearWall,scores={Glib_Sneak=1..}] at @s run summon boat ~ ~-1.2 ~ {NoGravity:1b,Type:"birch",Tags:["Glib_WallRide"]}
scoreboard players set @a Glib_Sneak 0
# execute as @a[tag=NearWall,scores={Class=11,EffInvisibility=0}] at @s run particle witch ~ ~ ~ 0.2 0 0.2 0 2 force
# execute as @a[tag=NearWall,scores={Class=12,EffInvisibility=0}] at @s run particle large_smoke ~ ~ ~ 0.2 0 0.2 0 1 force
# execute as @a[tag=NearWall,scores={Class=13,EffInvisibility=0}] at @s run particle effect ~ ~ ~ 0.2 0 0.2 0 2 force
# execute as @a[tag=NearWall,scores={Class=14,EffInvisibility=0}] at @s run particle firework ~ ~ ~ 0.2 0 0.2 0 1 force
# execute as @a[tag=NearWall,scores={Class=15,EffInvisibility=0}] at @s run particle cloud ~ ~ ~ 0.2 0 0.2 0 1 force
# execute as @a[tag=NearWall,scores={Class=16,EffInvisibility=0}] at @s run particle dust 255 255 255 2 ~ ~ ~ 0.2 0 0.2 1 1 force
scoreboard players set @a[tag=NearWall,scores={Class=16,EffNoTp=..2}] EffNoTp 2

# Hero
execute if entity @a[scores={Class=11},tag=IsPlaying] run function hierarchy:game/kit/assassin/time/main
execute if entity @a[scores={Class=12},tag=IsPlaying] run function hierarchy:game/kit/assassin/burner/main
execute if entity @a[scores={Class=13},tag=IsPlaying] run function hierarchy:game/kit/assassin/thunder/main
execute if entity @a[scores={Class=14},tag=IsPlaying] run function hierarchy:game/kit/assassin/freezer/main
execute if entity @a[scores={Class=15},tag=IsPlaying] run function hierarchy:game/kit/assassin/wind/main
execute if entity @a[scores={Class=16},tag=IsPlaying] run function hierarchy:game/kit/assassin/invoker/main
