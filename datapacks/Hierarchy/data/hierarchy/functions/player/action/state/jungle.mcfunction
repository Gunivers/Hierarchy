#Jungle
tag @a remove inJungle
execute as @a[gamemode=adventure,scores={HaveObjective=0,InGame=1..}] at @s if block ~ ~-10 ~ barrier run tag @p add inJungle
execute as @a[gamemode=adventure,team=Orange,scores={InGame=1..}] at @s run tag @a[team=Blue,distance=..5] remove inJungle
execute as @a[gamemode=adventure,team=Blue,scores={InGame=1..}] at @s run tag @a[team=Orange,distance=..5] remove inJungle
scoreboard players set @a[scores={EffInvisibility=..2},tag=inJungle] EffInvisibility 2
