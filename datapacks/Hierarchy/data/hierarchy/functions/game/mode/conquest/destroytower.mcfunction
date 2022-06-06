#Destroyed tower


#Death tower tickets
execute as @e[type=armor_stand,scores={HaveObjective=-1009..-1000},tag=OrangeTower] run scoreboard players remove @e[type=armor_stand,name=Orange] Score 5
execute as @e[type=armor_stand,scores={HaveObjective=-1009..-1000},tag=OrangeInib] run scoreboard players remove @e[type=armor_stand,name=Orange] Score 10
execute as @e[type=armor_stand,scores={HaveObjective=-1009..-1000},tag=BlueTower] run scoreboard players remove @e[type=armor_stand,name=Blue] Score 5
execute as @e[type=armor_stand,scores={HaveObjective=-1009..-1000},tag=BlueInib] run scoreboard players remove @e[type=armor_stand,name=Blue] Score 10

#Destroy message
execute as @s[tag=OrangeTower] run tellraw @a ["",{"text":"\n>> An orange tower has been destroyed!\n","color":"aqua","bold":true}]
execute as @s[tag=OrangeInib] run tellraw @a ["",{"text":"\n>> An orange inibitor has been destroyed! The bulk is no longer protected!\n","color":"aqua","bold":true}]
execute as @s[tag=BlueTower] run tellraw @a ["",{"text":"\n>> A blue tower has been destroyed!\n","color":"gold","bold":true}]
execute as @s[tag=BlueInib] run tellraw @a ["",{"text":"\n>> A blue inibitor has been destroyed! The bulk is no longer protected!\n","color":"gold","bold":true}]

#Destroyed tower animation
execute at @s positioned ~ ~8 ~ run particle explosion_emitter ~ ~ ~ 0 1 0 0 3 force
execute at @s positioned ~ ~8 ~ run playsound entity.generic.explode record @a[distance=..300] ~ ~ ~ 2 1 1
scoreboard players set @s HaveObjective -1010

execute at @s[tag=OrangeTower] run clone -28 64 25 -26 68 27 ~-1 ~5 ~-1
execute at @s[tag=OrangeInib] run clone -31 64 25 -29 68 27 ~-1 ~5 ~-1
execute at @s[tag=BlueInib] run clone -22 64 25 -20 68 27 ~-1 ~5 ~-1
execute at @s[tag=BlueTower] run clone -25 64 25 -23 68 27 ~-1 ~5 ~-1
execute at @s run kill @e[type=end_crystal,distance=..10]
execute at @s if block ~ ~-1 ~ white_terracotta run fill ~ ~8 ~ ~ ~9 ~ air
