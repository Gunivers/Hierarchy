#Easter egg lever
scoreboard players set @e[type=armor_stand,name=Blue] Var1 0
execute as @e[type=armor_stand,name=Blue] at @s if block 5005 95 5002 lever[face=floor,facing=west,powered=true] run scoreboard players set @s Var1 1

execute as @e[type=armor_stand,scores={Var1=..0},name=Blue] run fill 4997 93 5007 4997 93 5007 stone replace redstone_torch
execute as @e[type=armor_stand,scores={Var1=1..},name=Blue] run fill 4997 93 5007 4997 93 5007 redstone_torch replace stone

