#Easter egg TP Tardis
scoreboard players set @e[type=armor_stand,name=Blue] Var1 0
execute as @e[type=armor_stand,name=Blue] at @s if block 5005 95 5002 lever[face=floor,facing=west,powered=true] run scoreboard players set @s Var1 1

playsound entity.endermen.teleport ambient @a[distance=..5]
execute at @e[type=armor_stand,scores={Var1=..0},name=Blue] as @a[x=4997.5,y=94,z=5007.5,distance=..2] at @s if block ~ ~-1 ~ iron_block run teleport @s -990 97.2 -1016 180 0
