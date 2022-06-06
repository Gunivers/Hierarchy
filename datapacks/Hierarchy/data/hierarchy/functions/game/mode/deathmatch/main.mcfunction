function hierarchy:game/mode/ctf/noctf
function hierarchy:game/mode/conquest/noconquest


execute as @a[team=Orange,scores={EffNoDie=..0,InGame=1..},tag=IsDead] run scoreboard players remove @e[type=armor_stand,name=Orange] Score 5
execute as @a[team=Blue,scores={EffNoDie=..0,InGame=1..},tag=IsDead] run scoreboard players remove @e[type=armor_stand,name=Blue] Score 5
execute as @a[team=Blue,scores={EffNoDie=..0,InGame=1..},tag=IsDead] run scoreboard players add @e[type=armor_stand,name=Orange] Score 5
execute as @a[team=Orange,scores={EffNoDie=..0,InGame=1..},tag=IsDead] run scoreboard players add @e[type=armor_stand,name=Blue] Score 5
