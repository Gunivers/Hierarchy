clear @a[gamemode=adventure,scores={UseSnowball=1}] snowball
execute as @a[scores={UseSnowball=1}] at @s run scoreboard players operation @e[type=snowball,distance=..5,limit=1,sort=nearest] Class = @p Class
execute as @a[team=Blue,scores={UseSnowball=1}] at @s run scoreboard players operation @e[type=snowball,distance=..5,limit=1,sort=nearest] Class *= Neg Constant
scoreboard players add @a[scores={UseSnowball=1..}] UseSnowball 1
scoreboard players set @a[scores={UseSnowball=5..}] UseSnowball 0

tag @e[type=snowball] add Projectile
