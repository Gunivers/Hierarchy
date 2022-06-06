execute as @a[scores={InGame=1..}] at @s as @a[x=0.5,y=100,z=0.5,gamemode=spectator,distance=..100] at @s run teleport 1000 105 1000

spreadplayers 980 1000 0 2 false @a[gamemode=!creative,team=Orange,scores={EffNoDie=..0,LifeState=398..400}]
spreadplayers 980 1000 0 2 false @a[gamemode=!creative,team=Orange,scores={Back=140..141}]

spreadplayers 1020 1000 0 2 false @a[gamemode=!creative,team=Blue,scores={EffNoDie=..0,LifeState=398..400}]
spreadplayers 1020 1000 0 2 false @a[gamemode=!creative,team=Blue,scores={Back=140..141}]


execute as @a[gamemode=!creative,team=Orange,scores={EffNoDie=..0,LifeState=398..400}] at @s run tp @s ~ 100 ~
execute as @a[gamemode=!creative,team=Orange,scores={Back=140..141}] at @s run tp @s ~ 100 ~
execute as @a[gamemode=!creative,team=Blue,scores={EffNoDie=..0,LifeState=398..400}] at @s run tp @s ~ 100 ~
execute as @a[gamemode=!creative,team=Blue,scores={Back=140..141}] at @s run tp @s ~ 100 ~

execute as @a[tag=IsPlaying] at @s if block ~ ~-0.5 ~ minecraft:green_concrete_powder run effect give @s minecraft:jump_boost 2 8 true
execute as @a[tag=IsPlaying] at @s if block ~ ~-1.5 ~ minecraft:green_concrete_powder run effect give @s minecraft:jump_boost 2 8 true
execute as @a[tag=IsPlaying] at @s if block ~ ~-2.5 ~ minecraft:green_concrete_powder run effect give @s minecraft:jump_boost 2 8 true

# tag @a remove Have_Jump_Boost
# execute as @a[tag=IsPlaying] at @s if block ~ ~-0.5 ~ minecraft:green_concrete_powder run tag @s add Have_Jump_Boost