scoreboard players add @s Class 0

scoreboard players operation @s ID = @e[type=skeleton,tag=IsPlaying,distance=..5,limit=1,sort=nearest] ID
scoreboard players operation @s[scores={Class=0}] Class = @e[type=skeleton,tag=IsPlaying,distance=..5,limit=1,sort=nearest] Class

scoreboard players operation @s ID = @p[scores={UseBow=1..},tag=IsPlaying,distance=..5] ID
