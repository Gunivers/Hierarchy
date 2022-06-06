execute if entity @e[type=armor_stand,scores={Class=0},name=Orange] run spreadplayers 3000 3000 0 50 false @s
execute if entity @e[type=armor_stand,scores={Class=1},name=Orange] run spreadplayers 4000 4000 0 50 false @s
execute if entity @e[type=armor_stand,scores={Class=2},name=Orange] run spreadplayers 6000 6000 0 50 false @s
execute if entity @e[type=armor_stand,scores={Class=3},name=Orange] run spreadplayers 1000 1000 0 50 false @s

execute as @s[team=Spec] at @s run tp @s ~ ~20 ~
execute as @s[gamemode=spectator] at @s run tp @s ~ ~20 ~