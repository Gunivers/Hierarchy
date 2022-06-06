scoreboard players add @a OffSide 0
scoreboard players remove @a[scores={OffSide=1..}] OffSide 1
scoreboard players set @a[tag=!IsPlaying] OffSide 0
scoreboard players set @a[scores={LifeState=..400}] OffSide 0

execute as @a[tag=OffSide] run scoreboard players operation @s Var1 = @s OffSide
execute as @a[tag=OffSide] run scoreboard players remove @s Var1 200
execute as @a[tag=OffSide] run scoreboard players operation @s Var1 *= -1 Constant
execute as @a[tag=OffSide] run scoreboard players operation @s Var1 /= 20 Constant
execute as @a[tag=OffSide] run scoreboard players add @s Var1 1

execute as @a[tag=OffSide] run title @s title ["",{"text":"Return to fight! ","color":"red"},{"score":{"name":"@s","objective":"Var1"},"color":"gold","bold":false}]
execute as @a[tag=OffSide] at @s run scoreboard players add @p[distance=..1] OffSide 2

kill @a[gamemode=adventure,scores={OffSide=200..},tag=IsPlaying]
