function hierarchy:game/mode/ctf/noctf
function hierarchy:game/mode/conquest/noconquest


execute as @a[team=Orange,scores={EffNoDie=..0,InGame=1..},tag=IsDead] run scoreboard players remove @e[type=armor_stand,name=Orange] Score 5
execute as @a[team=Blue,scores={EffNoDie=..0,InGame=1..},tag=IsDead] run scoreboard players remove @e[type=armor_stand,name=Blue] Score 5
execute as @a[team=Blue,scores={EffNoDie=..0,InGame=1..},tag=IsDead] run scoreboard players add @e[type=armor_stand,name=Orange] Score 5
execute as @a[team=Orange,scores={EffNoDie=..0,InGame=1..},tag=IsDead] run scoreboard players add @e[type=armor_stand,name=Blue] Score 5

execute unless entity @a[team=Orange,scores={DeathNumber=0,InGame=1}] run scoreboard players set @e[type=armor_stand,name=Orange,scores={Score=1..}] Score 0
execute unless entity @a[team=Blue,scores={DeathNumber=0,InGame=1}] run scoreboard players set @e[type=armor_stand,name=Blue,scores={Score=1..}] Score 0