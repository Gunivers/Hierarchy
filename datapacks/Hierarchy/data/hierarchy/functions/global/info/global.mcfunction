#Map
execute as @e[type=armor_stand,scores={Class=0},name=Orange] run scoreboard players set Map:River Info -2
execute as @e[type=armor_stand,scores={Class=0},name=Orange] run scoreboard players reset Map:Arena Info
execute as @e[type=armor_stand,scores={Class=0},name=Orange] run scoreboard players reset Map:Ruins Info
execute as @e[type=armor_stand,scores={Class=0},name=Orange] run scoreboard players reset Map:Infection Info

execute as @e[type=armor_stand,scores={Class=1},name=Orange] run scoreboard players set Map:Arena Info -2
execute as @e[type=armor_stand,scores={Class=1},name=Orange] run scoreboard players reset Map:River Info
execute as @e[type=armor_stand,scores={Class=1},name=Orange] run scoreboard players reset Map:Ruins Info
execute as @e[type=armor_stand,scores={Class=1},name=Orange] run scoreboard players reset Map:Infection Info

execute as @e[type=armor_stand,scores={Class=2},name=Orange] run scoreboard players set Map:Ruins Info -2
execute as @e[type=armor_stand,scores={Class=2},name=Orange] run scoreboard players reset Map:River Info
execute as @e[type=armor_stand,scores={Class=2},name=Orange] run scoreboard players reset Map:Arena Info
execute as @e[type=armor_stand,scores={Class=2},name=Orange] run scoreboard players reset Map:Infection Info

execute as @e[type=armor_stand,scores={Class=3},name=Orange] run scoreboard players set Map:Infection Info -2
execute as @e[type=armor_stand,scores={Class=3},name=Orange] run scoreboard players reset Map:River Info
execute as @e[type=armor_stand,scores={Class=3},name=Orange] run scoreboard players reset Map:Arena Info
execute as @e[type=armor_stand,scores={Class=3},name=Orange] run scoreboard players reset Map:Ruins Info

#Mode
execute if entity @e[type=armor_stand,scores={Class=0},name=Blue] run scoreboard players set Mode:Deathmatch Info -3
execute unless entity @e[type=armor_stand,scores={Class=0},name=Blue] run scoreboard players reset Mode:Deathmatch Info

execute if entity @e[type=armor_stand,scores={Class=1},name=Blue] run scoreboard players set Mode:CTF Info -3
execute unless entity @e[type=armor_stand,scores={Class=1},name=Blue] run scoreboard players reset Mode:CTF Info

execute if entity @e[type=armor_stand,scores={Class=2},name=Blue] run scoreboard players set Mode:Conquest Info -3
execute unless entity @e[type=armor_stand,scores={Class=2},name=Blue] run scoreboard players reset Mode:Conquest Info

execute if entity @e[type=armor_stand,scores={Class=3},name=Blue] run scoreboard players set Mode:WTF?! Info -3
execute unless entity @e[type=armor_stand,scores={Class=3},name=Blue] run scoreboard players reset Mode:WTF?! Info

execute if entity @e[type=armor_stand,scores={Class=4},name=Blue] run scoreboard players set Mode:Deroute Info -3
execute unless entity @e[type=armor_stand,scores={Class=4},name=Blue] run scoreboard players reset Mode:Deroute Info