execute as @e[x=0.5,y=65,z=0.5,type=armor_stand,scores={1=..0},distance=..10] at @s run function hierarchy:game/stop

tag @e remove NoSurrend
execute as @a[team=Blue,scores={InGame=1..},tag=!Surrend] run tag @e[type=armor_stand,name=Blue] add NoSurrend
execute as @a[team=Orange,scores={InGame=1..},tag=!Surrend] run tag @e[type=armor_stand,name=Orange] add NoSurrend

scoreboard players set @e[type=armor_stand,scores={Score=1..},tag=!NoSurrend] Score 0

scoreboard players set @e[type=armor_stand,tag=DATA,scores={Score=-999..-1}] Score 0
execute if entity @e[type=armor_stand,scores={Score=0},name=Orange] if entity @e[type=armor_stand,scores={Score=0},name=Blue] run setblock -13 65 -26 redstone_block destroy
execute if entity @e[type=armor_stand,scores={Score=0},name=Orange] if entity @e[type=armor_stand,scores={Score=1..},name=Blue] run setblock -11 65 -26 redstone_block destroy
execute if entity @e[type=armor_stand,scores={Score=1..},name=Orange] if entity @e[type=armor_stand,scores={Score=0},name=Blue] run setblock -12 65 -26 redstone_block destroy
execute if entity @e[type=armor_stand,tag=DATA,scores={Score=0}] run scoreboard players set @e[type=armor_stand,tag=DATA] Score -1000
