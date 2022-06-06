#Jungle
tag @a remove inBase
execute as @a[team=Blue,tag=IsPlaying] at @s if block ~ 0 ~ barrier run tag @p add inBase
execute as @a[team=Orange,tag=IsPlaying] at @s if block ~ 1 ~ barrier run tag @p add inBase
scoreboard players set @a[scores={EffRegen=..10,HaveObjective=..0},tag=inBase] EffRegen 10
scoreboard players set @a[scores={EffMana=..10,HaveObjective=..0},tag=inBase] EffMana 10
scoreboard players set @a[scores={EffSpeed=..10,HaveObjective=..0},tag=inBase] EffSpeed 10
