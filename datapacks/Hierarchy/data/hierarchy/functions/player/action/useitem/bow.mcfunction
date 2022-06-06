execute as @a[scores={UseBow=1}] at @s run scoreboard players operation @e[type=arrow,distance=..5,limit=1,sort=nearest] Class = @s Class
execute as @a[team=Blue,scores={UseBow=1}] at @s run scoreboard players operation @e[type=arrow,distance=..5,limit=1,sort=nearest] Class *= Neg Constant
execute as @a[scores={UseBow=1}] at @s run scoreboard players operation @e[type=spectral_arrow,distance=..5,limit=1,sort=nearest] Class = @s Class
execute as @a[team=Blue,scores={UseBow=1}] at @s run scoreboard players operation @e[type=spectral_arrow,distance=..5,limit=1,sort=nearest] Class *= Neg Constant
clear @a[gamemode=adventure,scores={UseBow=1}] bow
scoreboard players add @a[scores={UseBow=1..}] UseBow 1
scoreboard players set @a[scores={UseBow=3..}] UseBow 0
