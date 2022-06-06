execute if entity @a[x=5065.5,y=107,z=5000.5,distance=..15] run function hierarchy:lobby/hoc-role

scoreboard players set @e[type=!player,tag=DisplayHat] Timer 0
scoreboard players set @e[type=!player,tag=HoC] Timer 0
tag @a remove DisplayHat
execute as @e[type=!player,tag=DisplayHat,limit=1,sort=nearest] at @s run tag @a add DisplayHat
execute as @p[tag=!DisplayHat] at @s run function hierarchy:easter-egg/hat/autorespawn

execute as @e[type=!player,tag=DisplayHat] at @s run teleport @s ~ ~ ~ ~-2 ~
