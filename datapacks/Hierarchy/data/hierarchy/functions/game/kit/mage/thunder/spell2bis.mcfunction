tag @s add Source

execute at @s[team=Blue] at @e[team=!Blue,scores={C3=1..}] at @e[tag=AffectByBlue,distance=..5] run summon lightning_bolt ~ ~ ~
execute at @s[team=Orange] at @e[team=!Orange,scores={C3=1..}] at @e[tag=AffectByOrange,distance=..5] run summon lightning_bolt ~ ~ ~

execute at @s[team=Blue] as @e[scores={C3=1..},tag=AffectByBlue] at @s run scoreboard players operation @e[tag=AffectByBlue,distance=..5] TouchID = @a[tag=Source] ID
execute at @s[team=Orange] as @e[scores={C3=1..},tag=AffectByOrange] at @s run scoreboard players operation @e[tag=AffectByOrange,distance=..5] TouchID = @a[tag=Source] ID

tag @s remove Source
