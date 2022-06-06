tag @e remove DATA
tag @e remove Data
execute positioned -5.5 65 1.5 run tag @e[type=armor_stand,name=Orange,distance=..0.5,limit=1,sort=nearest] add DATA
execute positioned -3.5 65 1.5 run tag @e[type=armor_stand,name=Blue,distance=..0.5,limit=1,sort=nearest] add DATA
execute positioned -4.5 65 1.5 run tag @e[type=armor_stand,tag=DATA,distance=..1.5] add Data

execute positioned -4.5 65 1.5 run kill @e[type=!player,distance=..50,tag=!DATA]

execute as @e[type=armor_stand,tag=DATA,name=Orange] positioned -3.5 65 1.5 unless entity @e[type=armor_stand,tag=DATA,name=Blue,distance=..0.5] run kill @e[type=!player]
execute as @e[type=armor_stand,tag=DATA,name=Blue] positioned -5.5 65 1.5 unless entity @e[type=armor_stand,tag=DATA,name=Orange,distance=..0.5] run kill @e[type=!player]


execute positioned -5.5 65 1.5 unless entity @e[type=armor_stand,tag=DATA,name=Orange,distance=..0.5] positioned -5.5 65 1.5 unless entity @e[type=armor_stand,tag=DATA,name=Orange,distance=..0.5] run fill -6 64 -1 -4 64 -1 minecraft:redstone_block