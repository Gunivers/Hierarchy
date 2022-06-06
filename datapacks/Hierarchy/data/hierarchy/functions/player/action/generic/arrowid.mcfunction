#Save the ID of the nearest enemy arrow
scoreboard players set @a ArrowID 0
execute as @a[tag=AffectByBlue] at @s run scoreboard players operation @s ArrowID = @e[type=arrow,scores={Class=..-1},distance=..5,limit=1,sort=nearest] ID
execute as @a[tag=AffectByOrange] at @s run scoreboard players operation @s ArrowID = @e[type=arrow,scores={Class=1..},distance=..5,limit=1,sort=nearest] ID
