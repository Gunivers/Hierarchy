function hierarchy:game/mode/ctf/noctf

scoreboard players add @e[type=armor_stand,tag=Conquest] HaveObjective 0

#Special
execute as @e[type=armor_stand,scores={Class=0},name=Orange] at @s run function hierarchy:game/mode/conquest/river/main
execute as @e[type=armor_stand,scores={Class=1},name=Orange] at @s run function hierarchy:game/mode/conquest/arena/main
execute as @e[type=armor_stand,scores={Class=2},name=Orange] at @s run function hierarchy:game/mode/conquest/ruins/main
execute as @e[type=armor_stand,scores={Class=3},name=Orange] at @s run function hierarchy:game/mode/conquest/infection/main

#Tower Alive
tag @e[type=armor_stand,tag=Conquest] remove TowerAlive
tag @e[type=armor_stand,scores={HaveObjective=-999..0},tag=Conquest] add TowerAlive

execute as @e[tag=TowerAlive,limit=1,sort=nearest] at @s run function hierarchy:game/mode/conquest/toweralive

#Tower Explode
tag @e[type=armor_stand,tag=Conquest] remove TowerExplode
tag @e[type=armor_stand,scores={HaveObjective=-1009..-1000},tag=Conquest] add TowerExplode

execute as @e[tag=TowerExplode] at @s if block ~ ~-1 ~ white_terracotta run function hierarchy:game/mode/conquest/destroytower

#Tower Dead
tag @e[type=armor_stand,tag=Conquest] remove TowerDead
# scoreboard players tag @e[type=Villager,tag=Conquest,score_HaveObjective=0,score_HaveObjective_min=999] add TowerDead


#Bulk focus animation
effect give @e[type=magma_cube] glowing 1 1 true
effect give @e[type=magma_cube] invisibility 1 1 true
effect clear @e[scores={Timer=39..},tag=Bulk] 
execute as @e[scores={Timer=39..},tag=Bulk] at @s run teleport @s ~ 0 ~
